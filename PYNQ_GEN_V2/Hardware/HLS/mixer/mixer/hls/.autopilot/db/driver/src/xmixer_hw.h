// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of voice_in0
//        bit 31~0 - voice_in0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of voice_in1
//        bit 31~0 - voice_in1[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of voice_in2
//        bit 31~0 - voice_in2[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of voice_in3
//        bit 31~0 - voice_in3[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of drive
//        bit 31~0 - drive[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of mix_out
//        bit 31~0 - mix_out[31:0] (Read)
// 0x3c : Control signal of mix_out
//        bit 0  - mix_out_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMIXER_CONTROL_ADDR_AP_CTRL        0x00
#define XMIXER_CONTROL_ADDR_GIE            0x04
#define XMIXER_CONTROL_ADDR_IER            0x08
#define XMIXER_CONTROL_ADDR_ISR            0x0c
#define XMIXER_CONTROL_ADDR_VOICE_IN0_DATA 0x10
#define XMIXER_CONTROL_BITS_VOICE_IN0_DATA 32
#define XMIXER_CONTROL_ADDR_VOICE_IN1_DATA 0x18
#define XMIXER_CONTROL_BITS_VOICE_IN1_DATA 32
#define XMIXER_CONTROL_ADDR_VOICE_IN2_DATA 0x20
#define XMIXER_CONTROL_BITS_VOICE_IN2_DATA 32
#define XMIXER_CONTROL_ADDR_VOICE_IN3_DATA 0x28
#define XMIXER_CONTROL_BITS_VOICE_IN3_DATA 32
#define XMIXER_CONTROL_ADDR_DRIVE_DATA     0x30
#define XMIXER_CONTROL_BITS_DRIVE_DATA     32
#define XMIXER_CONTROL_ADDR_MIX_OUT_DATA   0x38
#define XMIXER_CONTROL_BITS_MIX_OUT_DATA   32
#define XMIXER_CONTROL_ADDR_MIX_OUT_CTRL   0x3c

