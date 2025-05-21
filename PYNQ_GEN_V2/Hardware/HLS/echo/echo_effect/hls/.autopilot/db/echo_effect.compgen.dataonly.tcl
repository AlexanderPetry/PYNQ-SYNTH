# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
index_i { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
index_o { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
}
dict set axilite_register_dict CTRL $port_CTRL


set port_control {
sample_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
sample_out { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
delay_ms { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
feedback_gain { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
sample_rate { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
buffer_r_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


