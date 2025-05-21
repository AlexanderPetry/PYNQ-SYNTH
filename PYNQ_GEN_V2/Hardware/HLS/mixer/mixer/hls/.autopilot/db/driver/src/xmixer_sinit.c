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
#include "xmixer.h"

extern XMixer_Config XMixer_ConfigTable[];

#ifdef SDT
XMixer_Config *XMixer_LookupConfig(UINTPTR BaseAddress) {
	XMixer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMixer_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMixer_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMixer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMixer_Initialize(XMixer *InstancePtr, UINTPTR BaseAddress) {
	XMixer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMixer_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMixer_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMixer_Config *XMixer_LookupConfig(u16 DeviceId) {
	XMixer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMIXER_NUM_INSTANCES; Index++) {
		if (XMixer_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMixer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMixer_Initialize(XMixer *InstancePtr, u16 DeviceId) {
	XMixer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMixer_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMixer_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

