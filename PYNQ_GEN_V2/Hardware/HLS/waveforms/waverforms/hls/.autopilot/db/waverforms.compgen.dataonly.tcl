# This script segment is generated automatically by AutoPilot

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


