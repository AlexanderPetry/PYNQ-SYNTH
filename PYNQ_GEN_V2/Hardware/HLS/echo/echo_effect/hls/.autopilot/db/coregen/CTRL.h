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

#define CTRL_ADDR_INDEX_I_DATA 0x10
#define CTRL_BITS_INDEX_I_DATA 32
#define CTRL_ADDR_INDEX_O_DATA 0x18
#define CTRL_BITS_INDEX_O_DATA 32
#define CTRL_ADDR_INDEX_O_CTRL 0x1c
