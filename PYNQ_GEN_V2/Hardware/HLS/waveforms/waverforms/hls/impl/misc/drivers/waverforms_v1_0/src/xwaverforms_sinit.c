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
#include "xwaverforms.h"

extern XWaverforms_Config XWaverforms_ConfigTable[];

#ifdef SDT
XWaverforms_Config *XWaverforms_LookupConfig(UINTPTR BaseAddress) {
	XWaverforms_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XWaverforms_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XWaverforms_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XWaverforms_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWaverforms_Initialize(XWaverforms *InstancePtr, UINTPTR BaseAddress) {
	XWaverforms_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWaverforms_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWaverforms_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XWaverforms_Config *XWaverforms_LookupConfig(u16 DeviceId) {
	XWaverforms_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWAVERFORMS_NUM_INSTANCES; Index++) {
		if (XWaverforms_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWaverforms_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWaverforms_Initialize(XWaverforms *InstancePtr, u16 DeviceId) {
	XWaverforms_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWaverforms_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWaverforms_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

