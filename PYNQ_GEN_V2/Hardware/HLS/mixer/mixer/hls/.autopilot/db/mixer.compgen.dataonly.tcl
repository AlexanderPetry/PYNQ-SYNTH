# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
voice_in0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
voice_in1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
voice_in2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
voice_in3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
drive { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
mix_out { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


