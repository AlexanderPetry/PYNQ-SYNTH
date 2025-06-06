/* ----------------------------------------------------------------------
 * Project:      CMSIS DSP Library
 * Title:        arm_atan2_q31.c
 * Description:  q31 Arc tangent of y/x
 *
 * $Date:        22 April 2022
 * $Revision:    V1.10.0
 *
 * Target Processor: Cortex-M and Cortex-A cores
 * -------------------------------------------------------------------- */
/*
 * Copyright (C) 2010-2022 ARM Limited or its affiliates. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the License); you may
 * not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an AS IS BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "dsp/fast_math_functions.h"        
#include "dsp/utils.h"        

/*

atan for argument between in [0, 1.0]

*/


/* Q2.29 */
#define ATANHALF_Q29 0xed63383
#define PIHALF_Q29 0x3243f6a9
#define PIQ29 0x6487ed51

#define ATAN2_NB_COEFS_Q31 13

static const q31_t atan2_coefs_q31[ATAN2_NB_COEFS_Q31]={0x00000000
,0x7ffffffe
,0x000001b6
,(q31_t)0xd555158e
,0x00036463
,0x1985f617
,0x001992ae
,(q31_t)0xeed53a7f
,(q31_t)0xf8f15245
,0x2215a3a4
,(q31_t)0xe0fab004
,0x0cdd4825
,(q31_t)0xfddbc054
};


__STATIC_FORCEINLINE q31_t arm_atan_limited_q31(q31_t x)
{
    q63_t res=(q63_t)atan2_coefs_q31[ATAN2_NB_COEFS_Q31-1];
    int i=1;
    for(i=1;i<ATAN2_NB_COEFS_Q31;i++)
    {
        res = ((q63_t) x * res) >> 31U;
        res = res + ((q63_t) atan2_coefs_q31[ATAN2_NB_COEFS_Q31-1-i]) ;
    }

    return(clip_q63_to_q31(res>>2));
}


__STATIC_FORCEINLINE q31_t arm_atan_q31(q31_t y,q31_t x)
{
   int sign=0;
   q31_t res=0;

   if (y<0)
   {
    /* Negate y */
#if defined (ARM_MATH_DSP)
    y = __QSUB(0, y);
#else
    y = (y == INT32_MIN) ? INT32_MAX : -y;
#endif

     sign=1-sign;
   }

   if (x < 0)
   {
      sign=1 - sign;

    /* Negate x */
#if defined (ARM_MATH_DSP)
    x = __QSUB(0, x);
#else
    x = (x == INT32_MIN) ? INT32_MAX : -x;
#endif
   }

   if (y > x)
   {
    q31_t ratio;
    int16_t shift;

    arm_divide_q31(x,y,&ratio,&shift);

    /* Shift ratio by shift */
    if (shift >= 0)
    {
         ratio = clip_q63_to_q31((q63_t) ratio << shift);
    }
    else
    {
         ratio = (ratio >> -shift);
    }
   
    res = PIHALF_Q29 - arm_atan_limited_q31(ratio);
      
   }
   else
   {
    q31_t ratio;
    int16_t shift;

    arm_divide_q31(y,x,&ratio,&shift);

    /* Shift ratio by shift */
    if (shift >= 0)
    {
         ratio = clip_q63_to_q31((q63_t) ratio << shift);
    }
    else
    {
         ratio = (ratio >> -shift);
    }
   

    res = arm_atan_limited_q31(ratio);

   }


   if (sign)
   {
     /* Negate res */
#if defined (ARM_MATH_DSP)
     res = __QSUB(0, res);
#else
     res = (res == INT32_MIN) ? INT32_MAX : -res;
#endif
   }

   return(res);
}


/**
  @ingroup groupFastMath
 */


/**
  @addtogroup atan2
  @{
 */

/**
  @brief       Arc Tangent of y/x using sign of y and x to get right quadrant
  @param[in]   y  y coordinate
  @param[in]   x  x coordinate
  @param[out]  result  Result in Q2.29
  @return  error status.
 
  @par         Compute the Arc tangent of y/x:
                   The sign of y and x are used to determine the right quadrant
                   and compute the right angle. Returned value is between -Pi and Pi.
*/


ARM_DSP_ATTRIBUTE arm_status arm_atan2_q31(q31_t y,q31_t x,q31_t *result)
{
    if (x > 0)
    {
        *result=arm_atan_q31(y,x);
        return(ARM_MATH_SUCCESS);
    }
    if (x < 0)
    {
        if (y > 0)
        {
           *result=arm_atan_q31(y,x) + PIQ29;
        }
        else if (y < 0)
        {
           *result=arm_atan_q31(y,x) - PIQ29;
        }
        else
        {
           *result= PIQ29;
        }
        return(ARM_MATH_SUCCESS);
    }
    if (x == 0)
    {
        if (y > 0)
        {
            *result=PIHALF_Q29;
            return(ARM_MATH_SUCCESS);
        }
        if (y < 0)
        {
            *result=-PIHALF_Q29;
            return(ARM_MATH_SUCCESS);
        }
    }
    

    return(ARM_MATH_NANINF);

}

/**
  @} end of atan2 group
 */
