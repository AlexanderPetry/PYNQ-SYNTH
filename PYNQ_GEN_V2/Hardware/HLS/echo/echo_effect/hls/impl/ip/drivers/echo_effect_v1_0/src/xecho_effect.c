// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xecho_effect.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEcho_effect_CfgInitialize(XEcho_effect *InstancePtr, XEcho_effect_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEcho_effect_Start(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEcho_effect_IsDone(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEcho_effect_IsIdle(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEcho_effect_IsReady(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEcho_effect_EnableAutoRestart(XEcho_effect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XEcho_effect_DisableAutoRestart(XEcho_effect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_AP_CTRL, 0);
}

void XEcho_effect_Set_sample_in(XEcho_effect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_SAMPLE_IN_DATA, Data);
}

u32 XEcho_effect_Get_sample_in(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_SAMPLE_IN_DATA);
    return Data;
}

u32 XEcho_effect_Get_sample_out(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_SAMPLE_OUT_DATA);
    return Data;
}

u32 XEcho_effect_Get_sample_out_vld(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_SAMPLE_OUT_CTRL);
    return Data & 0x1;
}

void XEcho_effect_Set_delay_ms(XEcho_effect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_DELAY_MS_DATA, Data);
}

u32 XEcho_effect_Get_delay_ms(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_DELAY_MS_DATA);
    return Data;
}

void XEcho_effect_Set_feedback_gain(XEcho_effect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_FEEDBACK_GAIN_DATA, Data);
}

u32 XEcho_effect_Get_feedback_gain(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_FEEDBACK_GAIN_DATA);
    return Data;
}

void XEcho_effect_Set_sample_rate(XEcho_effect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_SAMPLE_RATE_DATA, Data);
}

u32 XEcho_effect_Get_sample_rate(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_SAMPLE_RATE_DATA);
    return Data;
}

void XEcho_effect_Set_buffer_r_r(XEcho_effect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_BUFFER_R_R_DATA, (u32)(Data));
    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_BUFFER_R_R_DATA + 4, (u32)(Data >> 32));
}

u64 XEcho_effect_Get_buffer_r_r(XEcho_effect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_BUFFER_R_R_DATA);
    Data += (u64)XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_BUFFER_R_R_DATA + 4) << 32;
    return Data;
}

void XEcho_effect_Set_index_i(XEcho_effect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Ctrl_BaseAddress, XECHO_EFFECT_CTRL_ADDR_INDEX_I_DATA, Data);
}

u32 XEcho_effect_Get_index_i(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Ctrl_BaseAddress, XECHO_EFFECT_CTRL_ADDR_INDEX_I_DATA);
    return Data;
}

u32 XEcho_effect_Get_index_o(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Ctrl_BaseAddress, XECHO_EFFECT_CTRL_ADDR_INDEX_O_DATA);
    return Data;
}

u32 XEcho_effect_Get_index_o_vld(XEcho_effect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcho_effect_ReadReg(InstancePtr->Ctrl_BaseAddress, XECHO_EFFECT_CTRL_ADDR_INDEX_O_CTRL);
    return Data & 0x1;
}

void XEcho_effect_InterruptGlobalEnable(XEcho_effect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_GIE, 1);
}

void XEcho_effect_InterruptGlobalDisable(XEcho_effect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_GIE, 0);
}

void XEcho_effect_InterruptEnable(XEcho_effect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_IER);
    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_IER, Register | Mask);
}

void XEcho_effect_InterruptDisable(XEcho_effect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_IER);
    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XEcho_effect_InterruptClear(XEcho_effect *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcho_effect_WriteReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_ISR, Mask);
}

u32 XEcho_effect_InterruptGetEnabled(XEcho_effect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_IER);
}

u32 XEcho_effect_InterruptGetStatus(XEcho_effect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEcho_effect_ReadReg(InstancePtr->Control_BaseAddress, XECHO_EFFECT_CONTROL_ADDR_ISR);
}

