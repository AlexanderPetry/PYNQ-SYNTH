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
// 0x10 : Data signal of sample_in
//        bit 31~0 - sample_in[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of sample_out
//        bit 31~0 - sample_out[31:0] (Read)
// 0x1c : Control signal of sample_out
//        bit 0  - sample_out_ap_vld (Read/COR)
//        others - reserved
// 0x28 : Data signal of delay_ms
//        bit 31~0 - delay_ms[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of feedback_gain
//        bit 31~0 - feedback_gain[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of sample_rate
//        bit 31~0 - sample_rate[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of buffer_r_r
//        bit 31~0 - buffer_r_r[31:0] (Read/Write)
// 0x44 : Data signal of buffer_r_r
//        bit 31~0 - buffer_r_r[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XECHO_EFFECT_CONTROL_ADDR_AP_CTRL            0x00
#define XECHO_EFFECT_CONTROL_ADDR_GIE                0x04
#define XECHO_EFFECT_CONTROL_ADDR_IER                0x08
#define XECHO_EFFECT_CONTROL_ADDR_ISR                0x0c
#define XECHO_EFFECT_CONTROL_ADDR_SAMPLE_IN_DATA     0x10
#define XECHO_EFFECT_CONTROL_BITS_SAMPLE_IN_DATA     32
#define XECHO_EFFECT_CONTROL_ADDR_SAMPLE_OUT_DATA    0x18
#define XECHO_EFFECT_CONTROL_BITS_SAMPLE_OUT_DATA    32
#define XECHO_EFFECT_CONTROL_ADDR_SAMPLE_OUT_CTRL    0x1c
#define XECHO_EFFECT_CONTROL_ADDR_DELAY_MS_DATA      0x28
#define XECHO_EFFECT_CONTROL_BITS_DELAY_MS_DATA      32
#define XECHO_EFFECT_CONTROL_ADDR_FEEDBACK_GAIN_DATA 0x30
#define XECHO_EFFECT_CONTROL_BITS_FEEDBACK_GAIN_DATA 32
#define XECHO_EFFECT_CONTROL_ADDR_SAMPLE_RATE_DATA   0x38
#define XECHO_EFFECT_CONTROL_BITS_SAMPLE_RATE_DATA   32
#define XECHO_EFFECT_CONTROL_ADDR_BUFFER_R_R_DATA    0x40
#define XECHO_EFFECT_CONTROL_BITS_BUFFER_R_R_DATA    64

// CTRL
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of index_i
//        bit 31~0 - index_i[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of index_o
//        bit 31~0 - index_o[31:0] (Read)
// 0x1c : Control signal of index_o
//        bit 0  - index_o_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XECHO_EFFECT_CTRL_ADDR_INDEX_I_DATA 0x10
#define XECHO_EFFECT_CTRL_BITS_INDEX_I_DATA 32
#define XECHO_EFFECT_CTRL_ADDR_INDEX_O_DATA 0x18
#define XECHO_EFFECT_CTRL_BITS_INDEX_O_DATA 32
#define XECHO_EFFECT_CTRL_ADDR_INDEX_O_CTRL 0x1c

