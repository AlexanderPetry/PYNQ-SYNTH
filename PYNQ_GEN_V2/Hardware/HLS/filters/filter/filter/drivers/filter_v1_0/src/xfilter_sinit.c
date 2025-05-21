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
#include "xfilter.h"

extern XFilter_Config XFilter_ConfigTable[];

#ifdef SDT
XFilter_Config *XFilter_LookupConfig(UINTPTR BaseAddress) {
	XFilter_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XFilter_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XFilter_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XFilter_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilter_Initialize(XFilter *InstancePtr, UINTPTR BaseAddress) {
	XFilter_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilter_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilter_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XFilter_Config *XFilter_LookupConfig(u16 DeviceId) {
	XFilter_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFILTER_NUM_INSTANCES; Index++) {
		if (XFilter_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFilter_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilter_Initialize(XFilter *InstancePtr, u16 DeviceId) {
	XFilter_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilter_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilter_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

