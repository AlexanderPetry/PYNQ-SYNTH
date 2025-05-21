// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfilter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFilter_CfgInitialize(XFilter *InstancePtr, XFilter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFilter_Start(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFilter_IsDone(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFilter_IsIdle(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFilter_IsReady(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFilter_EnableAutoRestart(XFilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFilter_DisableAutoRestart(XFilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_AP_CTRL, 0);
}

void XFilter_Set_sample_in(XFilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_SAMPLE_IN_DATA, Data);
}

u32 XFilter_Get_sample_in(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_SAMPLE_IN_DATA);
    return Data;
}

u32 XFilter_Get_sample_out(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_SAMPLE_OUT_DATA);
    return Data;
}

u32 XFilter_Get_sample_out_vld(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_SAMPLE_OUT_CTRL);
    return Data & 0x1;
}

void XFilter_Set_filter_type(XFilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_FILTER_TYPE_DATA, Data);
}

u32 XFilter_Get_filter_type(XFilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_FILTER_TYPE_DATA);
    return Data;
}

void XFilter_InterruptGlobalEnable(XFilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_GIE, 1);
}

void XFilter_InterruptGlobalDisable(XFilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_GIE, 0);
}

void XFilter_InterruptEnable(XFilter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_IER);
    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_IER, Register | Mask);
}

void XFilter_InterruptDisable(XFilter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_IER);
    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFilter_InterruptClear(XFilter *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_WriteReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_ISR, Mask);
}

u32 XFilter_InterruptGetEnabled(XFilter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_IER);
}

u32 XFilter_InterruptGetStatus(XFilter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter_ReadReg(InstancePtr->Control_BaseAddress, XFILTER_CONTROL_ADDR_ISR);
}

