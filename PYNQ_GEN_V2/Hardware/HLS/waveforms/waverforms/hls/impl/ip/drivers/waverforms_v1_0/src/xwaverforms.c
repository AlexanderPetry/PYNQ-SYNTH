// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xwaverforms.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWaverforms_CfgInitialize(XWaverforms *InstancePtr, XWaverforms_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWaverforms_Start(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWaverforms_IsDone(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWaverforms_IsIdle(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWaverforms_IsReady(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWaverforms_EnableAutoRestart(XWaverforms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XWaverforms_DisableAutoRestart(XWaverforms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AP_CTRL, 0);
}

void XWaverforms_Set_freq(XWaverforms *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_FREQ_DATA, Data);
}

u32 XWaverforms_Get_freq(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_FREQ_DATA);
    return Data;
}

void XWaverforms_Set_amplitude(XWaverforms *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AMPLITUDE_DATA, Data);
}

u32 XWaverforms_Get_amplitude(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_AMPLITUDE_DATA);
    return Data;
}

void XWaverforms_Set_wave_type(XWaverforms *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_WAVE_TYPE_DATA, Data);
}

u32 XWaverforms_Get_wave_type(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_WAVE_TYPE_DATA);
    return Data;
}

void XWaverforms_Set_sample_rate(XWaverforms *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_SAMPLE_RATE_DATA, Data);
}

u32 XWaverforms_Get_sample_rate(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_SAMPLE_RATE_DATA);
    return Data;
}

void XWaverforms_Set_phase_in(XWaverforms *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_PHASE_IN_DATA, Data);
}

u32 XWaverforms_Get_phase_in(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_PHASE_IN_DATA);
    return Data;
}

u32 XWaverforms_Get_sample_out(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_SAMPLE_OUT_DATA);
    return Data;
}

u32 XWaverforms_Get_sample_out_vld(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_SAMPLE_OUT_CTRL);
    return Data & 0x1;
}

u32 XWaverforms_Get_phase_out(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_PHASE_OUT_DATA);
    return Data;
}

u32 XWaverforms_Get_phase_out_vld(XWaverforms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_PHASE_OUT_CTRL);
    return Data & 0x1;
}

void XWaverforms_InterruptGlobalEnable(XWaverforms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_GIE, 1);
}

void XWaverforms_InterruptGlobalDisable(XWaverforms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_GIE, 0);
}

void XWaverforms_InterruptEnable(XWaverforms *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_IER);
    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_IER, Register | Mask);
}

void XWaverforms_InterruptDisable(XWaverforms *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_IER);
    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XWaverforms_InterruptClear(XWaverforms *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWaverforms_WriteReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_ISR, Mask);
}

u32 XWaverforms_InterruptGetEnabled(XWaverforms *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_IER);
}

u32 XWaverforms_InterruptGetStatus(XWaverforms *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWaverforms_ReadReg(InstancePtr->Control_BaseAddress, XWAVERFORMS_CONTROL_ADDR_ISR);
}

