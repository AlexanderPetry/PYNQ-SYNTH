dict set slaves control {ports {sample_in {type i_ap_none width 32} sample_out {type o_ap_vld width 32} filter_type {type i_ap_none width 2} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
