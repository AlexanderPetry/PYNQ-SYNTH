// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xecho_effect.h"

extern XEcho_effect_Config XEcho_effect_ConfigTable[];

#ifdef SDT
XEcho_effect_Config *XEcho_effect_LookupConfig(UINTPTR BaseAddress) {
	XEcho_effect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XEcho_effect_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XEcho_effect_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XEcho_effect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEcho_effect_Initialize(XEcho_effect *InstancePtr, UINTPTR BaseAddress) {
	XEcho_effect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEcho_effect_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEcho_effect_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XEcho_effect_Config *XEcho_effect_LookupConfig(u16 DeviceId) {
	XEcho_effect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XECHO_EFFECT_NUM_INSTANCES; Index++) {
		if (XEcho_effect_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEcho_effect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEcho_effect_Initialize(XEcho_effect *InstancePtr, u16 DeviceId) {
	XEcho_effect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEcho_effect_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEcho_effect_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

