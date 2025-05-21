# This script segment is generated automatically by AutoPilot

set name waverforms_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name waverforms_fmul_32ns_32ns_32_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name waverforms_uitofp_32ns_32_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {uitofp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name waverforms_fptrunc_64ns_32_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fptrunc} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name waverforms_fpext_32ns_64_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fpext} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name waverforms_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name waverforms_dadd_64ns_64ns_64_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name waverforms_dmul_64ns_64ns_64_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name waverforms_ddiv_64ns_64ns_64_17_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {ddiv} IMPL {fabric} LATENCY 16 ALLOW_PRAGMA 1
}


set name waverforms_dcmp_64ns_64ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name waverforms_sitodp_32ns_64_3_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitodp} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set name waverforms_mul_32s_32ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
freq { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
amplitude { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
wave_type { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
sample_rate { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
phase_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
sample_out { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
phase_out { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 62 \
			corename waverforms_control_axilite \
			name waverforms_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler waverforms_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


