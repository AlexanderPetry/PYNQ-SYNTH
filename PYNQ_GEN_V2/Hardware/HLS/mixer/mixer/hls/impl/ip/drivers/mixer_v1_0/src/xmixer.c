// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmixer.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMixer_CfgInitialize(XMixer *InstancePtr, XMixer_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMixer_Start(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMixer_IsDone(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMixer_IsIdle(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMixer_IsReady(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMixer_EnableAutoRestart(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMixer_DisableAutoRestart(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL, 0);
}

void XMixer_Set_voice_in0(XMixer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN0_DATA, Data);
}

u32 XMixer_Get_voice_in0(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN0_DATA);
    return Data;
}

void XMixer_Set_voice_in1(XMixer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN1_DATA, Data);
}

u32 XMixer_Get_voice_in1(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN1_DATA);
    return Data;
}

void XMixer_Set_voice_in2(XMixer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN2_DATA, Data);
}

u32 XMixer_Get_voice_in2(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN2_DATA);
    return Data;
}

void XMixer_Set_voice_in3(XMixer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN3_DATA, Data);
}

u32 XMixer_Get_voice_in3(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_VOICE_IN3_DATA);
    return Data;
}

void XMixer_Set_drive(XMixer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_DRIVE_DATA, Data);
}

u32 XMixer_Get_drive(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_DRIVE_DATA);
    return Data;
}

u32 XMixer_Get_mix_out(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_MIX_OUT_DATA);
    return Data;
}

u32 XMixer_Get_mix_out_vld(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_MIX_OUT_CTRL);
    return Data & 0x1;
}

void XMixer_InterruptGlobalEnable(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_GIE, 1);
}

void XMixer_InterruptGlobalDisable(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_GIE, 0);
}

void XMixer_InterruptEnable(XMixer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER);
    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER, Register | Mask);
}

void XMixer_InterruptDisable(XMixer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER);
    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMixer_InterruptClear(XMixer *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_ISR, Mask);
}

u32 XMixer_InterruptGetEnabled(XMixer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER);
}

u32 XMixer_InterruptGetStatus(XMixer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_ISR);
}

