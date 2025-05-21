// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XWAVERFORMS_H
#define XWAVERFORMS_H

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
#include "xwaverforms_hw.h"

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
} XWaverforms_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XWaverforms;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWaverforms_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWaverforms_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWaverforms_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWaverforms_ReadReg(BaseAddress, RegOffset) \
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
int XWaverforms_Initialize(XWaverforms *InstancePtr, UINTPTR BaseAddress);
XWaverforms_Config* XWaverforms_LookupConfig(UINTPTR BaseAddress);
#else
int XWaverforms_Initialize(XWaverforms *InstancePtr, u16 DeviceId);
XWaverforms_Config* XWaverforms_LookupConfig(u16 DeviceId);
#endif
int XWaverforms_CfgInitialize(XWaverforms *InstancePtr, XWaverforms_Config *ConfigPtr);
#else
int XWaverforms_Initialize(XWaverforms *InstancePtr, const char* InstanceName);
int XWaverforms_Release(XWaverforms *InstancePtr);
#endif

void XWaverforms_Start(XWaverforms *InstancePtr);
u32 XWaverforms_IsDone(XWaverforms *InstancePtr);
u32 XWaverforms_IsIdle(XWaverforms *InstancePtr);
u32 XWaverforms_IsReady(XWaverforms *InstancePtr);
void XWaverforms_EnableAutoRestart(XWaverforms *InstancePtr);
void XWaverforms_DisableAutoRestart(XWaverforms *InstancePtr);

void XWaverforms_Set_freq(XWaverforms *InstancePtr, u32 Data);
u32 XWaverforms_Get_freq(XWaverforms *InstancePtr);
void XWaverforms_Set_amplitude(XWaverforms *InstancePtr, u32 Data);
u32 XWaverforms_Get_amplitude(XWaverforms *InstancePtr);
void XWaverforms_Set_wave_type(XWaverforms *InstancePtr, u32 Data);
u32 XWaverforms_Get_wave_type(XWaverforms *InstancePtr);
void XWaverforms_Set_sample_rate(XWaverforms *InstancePtr, u32 Data);
u32 XWaverforms_Get_sample_rate(XWaverforms *InstancePtr);
void XWaverforms_Set_phase_in(XWaverforms *InstancePtr, u32 Data);
u32 XWaverforms_Get_phase_in(XWaverforms *InstancePtr);
u32 XWaverforms_Get_sample_out(XWaverforms *InstancePtr);
u32 XWaverforms_Get_sample_out_vld(XWaverforms *InstancePtr);
u32 XWaverforms_Get_phase_out(XWaverforms *InstancePtr);
u32 XWaverforms_Get_phase_out_vld(XWaverforms *InstancePtr);

void XWaverforms_InterruptGlobalEnable(XWaverforms *InstancePtr);
void XWaverforms_InterruptGlobalDisable(XWaverforms *InstancePtr);
void XWaverforms_InterruptEnable(XWaverforms *InstancePtr, u32 Mask);
void XWaverforms_InterruptDisable(XWaverforms *InstancePtr, u32 Mask);
void XWaverforms_InterruptClear(XWaverforms *InstancePtr, u32 Mask);
u32 XWaverforms_InterruptGetEnabled(XWaverforms *InstancePtr);
u32 XWaverforms_InterruptGetStatus(XWaverforms *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
