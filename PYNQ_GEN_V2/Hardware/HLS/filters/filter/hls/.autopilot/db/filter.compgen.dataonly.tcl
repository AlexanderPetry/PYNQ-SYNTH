# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
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
filter_type { 
	dir I
	width 2
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


