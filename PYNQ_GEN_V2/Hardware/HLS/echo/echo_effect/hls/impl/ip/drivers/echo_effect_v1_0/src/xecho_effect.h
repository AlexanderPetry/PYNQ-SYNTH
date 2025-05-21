// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XECHO_EFFECT_H
#define XECHO_EFFECT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xecho_effect_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Ctrl_BaseAddress;
} XEcho_effect_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XEcho_effect;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEcho_effect_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEcho_effect_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEcho_effect_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEcho_effect_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XEcho_effect_Initialize(XEcho_effect *InstancePtr, UINTPTR BaseAddress);
XEcho_effect_Config* XEcho_effect_LookupConfig(UINTPTR BaseAddress);
#else
int XEcho_effect_Initialize(XEcho_effect *InstancePtr, u16 DeviceId);
XEcho_effect_Config* XEcho_effect_LookupConfig(u16 DeviceId);
#endif
int XEcho_effect_CfgInitialize(XEcho_effect *InstancePtr, XEcho_effect_Config *ConfigPtr);
#else
int XEcho_effect_Initialize(XEcho_effect *InstancePtr, const char* InstanceName);
int XEcho_effect_Release(XEcho_effect *InstancePtr);
#endif

void XEcho_effect_Start(XEcho_effect *InstancePtr);
u32 XEcho_effect_IsDone(XEcho_effect *InstancePtr);
u32 XEcho_effect_IsIdle(XEcho_effect *InstancePtr);
u32 XEcho_effect_IsReady(XEcho_effect *InstancePtr);
void XEcho_effect_EnableAutoRestart(XEcho_effect *InstancePtr);
void XEcho_effect_DisableAutoRestart(XEcho_effect *InstancePtr);

void XEcho_effect_Set_sample_in(XEcho_effect *InstancePtr, u32 Data);
u32 XEcho_effect_Get_sample_in(XEcho_effect *InstancePtr);
u32 XEcho_effect_Get_sample_out(XEcho_effect *InstancePtr);
u32 XEcho_effect_Get_sample_out_vld(XEcho_effect *InstancePtr);
void XEcho_effect_Set_delay_ms(XEcho_effect *InstancePtr, u32 Data);
u32 XEcho_effect_Get_delay_ms(XEcho_effect *InstancePtr);
void XEcho_effect_Set_feedback_gain(XEcho_effect *InstancePtr, u32 Data);
u32 XEcho_effect_Get_feedback_gain(XEcho_effect *InstancePtr);
void XEcho_effect_Set_sample_rate(XEcho_effect *InstancePtr, u32 Data);
u32 XEcho_effect_Get_sample_rate(XEcho_effect *InstancePtr);
void XEcho_effect_Set_buffer_r_r(XEcho_effect *InstancePtr, u64 Data);
u64 XEcho_effect_Get_buffer_r_r(XEcho_effect *InstancePtr);
void XEcho_effect_Set_index_i(XEcho_effect *InstancePtr, u32 Data);
u32 XEcho_effect_Get_index_i(XEcho_effect *InstancePtr);
u32 XEcho_effect_Get_index_o(XEcho_effect *InstancePtr);
u32 XEcho_effect_Get_index_o_vld(XEcho_effect *InstancePtr);

void XEcho_effect_InterruptGlobalEnable(XEcho_effect *InstancePtr);
void XEcho_effect_InterruptGlobalDisable(XEcho_effect *InstancePtr);
void XEcho_effect_InterruptEnable(XEcho_effect *InstancePtr, u32 Mask);
void XEcho_effect_InterruptDisable(XEcho_effect *InstancePtr, u32 Mask);
void XEcho_effect_InterruptClear(XEcho_effect *InstancePtr, u32 Mask);
u32 XEcho_effect_InterruptGetEnabled(XEcho_effect *InstancePtr);
u32 XEcho_effect_InterruptGetStatus(XEcho_effect *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
