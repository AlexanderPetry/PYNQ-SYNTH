set moduleName waverforms
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {waverforms}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ freq float 32 regular {axi_slave 0}  }
	{ amplitude float 32 regular {axi_slave 0}  }
	{ wave_type int 32 regular {axi_slave 0}  }
	{ sample_rate int 32 regular {axi_slave 0}  }
	{ phase_in float 32 regular {axi_slave 0}  }
	{ sample_out int 32 regular {axi_slave 1}  }
	{ phase_out int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "freq", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "amplitude", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "wave_type", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "sample_rate", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "phase_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "sample_out", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":56}, "offset_end" : {"out":63}} , 
 	{ "Name" : "phase_out", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":72}, "offset_end" : {"out":79}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"waverforms","role":"start","value":"0","valid_bit":"0"},{"name":"waverforms","role":"continue","value":"0","valid_bit":"4"},{"name":"waverforms","role":"auto_start","value":"0","valid_bit":"7"},{"name":"freq","role":"data","value":"16"},{"name":"amplitude","role":"data","value":"24"},{"name":"wave_type","role":"data","value":"32"},{"name":"sample_rate","role":"data","value":"40"},{"name":"phase_in","role":"data","value":"48"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"waverforms","role":"start","value":"0","valid_bit":"0"},{"name":"waverforms","role":"done","value":"0","valid_bit":"1"},{"name":"waverforms","role":"idle","value":"0","valid_bit":"2"},{"name":"waverforms","role":"ready","value":"0","valid_bit":"3"},{"name":"waverforms","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sample_out","role":"data","value":"56"}, {"name":"sample_out","role":"valid","value":"60","valid_bit":"0"},{"name":"phase_out","role":"data","value":"72"}, {"name":"phase_out","role":"valid","value":"76","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "18", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "waverforms",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "116",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "freq", "Type" : "None", "Direction" : "I"},
			{"Name" : "amplitude", "Type" : "None", "Direction" : "I"},
			{"Name" : "wave_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "sample_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "phase_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "sample_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phase_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_205", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_205", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_205", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_205", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "cordic_apfixed_circ_table_arctan_128", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_generic_asin_float_s_fu_218", "Port" : "cordic_apfixed_circ_table_arctan_128", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "noise_state", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "8", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "sin_or_cos_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.ref_4oPi_table_100_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.second_order_float_sin_cos_K0_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.second_order_float_sin_cos_K1_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.second_order_float_sin_cos_K2_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.grp_sin_or_cos_float_Pipeline_1_fu_302", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "sin_or_cos_float_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_bits_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_bits", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.grp_sin_or_cos_float_Pipeline_1_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.grp_sin_or_cos_float_Pipeline_2_fu_310", "Parent" : "1", "Child" : ["9"],
		"CDFG" : "sin_or_cos_float_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "result", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln291_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.grp_sin_or_cos_float_Pipeline_2_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.mul_23s_22ns_45_1_1_U10", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.mul_30s_29ns_58_1_1_U11", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.mul_80s_24ns_80_1_1_U12", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.sparsemux_17_3_1_1_1_U13", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.sparsemux_33_4_1_1_1_U14", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.sparsemux_33_4_1_1_1_U15", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.mul_15ns_15ns_30_1_1_U16", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_205.mul_15ns_15s_30_1_1_U17", "Parent" : "1"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_float_s_fu_218", "Parent" : "0", "Child" : ["19", "22"],
		"CDFG" : "generic_asin_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "60",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_apfixed_circ_table_arctan_128", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_generic_asin_float_Pipeline_1_fu_169", "Port" : "cordic_apfixed_circ_table_arctan_128", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_float_s_fu_218.grp_generic_asin_float_Pipeline_1_fu_169", "Parent" : "18", "Child" : ["20", "21"],
		"CDFG" : "generic_asin_float_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_ph", "Type" : "None", "Direction" : "I"},
			{"Name" : "tz_0_0_0_08_i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cordic_apfixed_circ_table_arctan_128", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_float_s_fu_218.grp_generic_asin_float_Pipeline_1_fu_169.cordic_apfixed_circ_table_arctan_128_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_float_s_fu_218.grp_generic_asin_float_Pipeline_1_fu_169.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_float_s_fu_218.sparsemux_11_4_55_1_1_U35", "Parent" : "18"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U39", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitofp_32ns_32_2_no_dsp_1_U40", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U41", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U42", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U43", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U44", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_4_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_17_no_dsp_1_U46", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U47", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_3_no_dsp_1_U48", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32ns_32_1_1_U49", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	waverforms {
		freq {Type I LastRead 0 FirstWrite -1}
		amplitude {Type I LastRead 0 FirstWrite -1}
		wave_type {Type I LastRead 0 FirstWrite -1}
		sample_rate {Type I LastRead 0 FirstWrite -1}
		phase_in {Type I LastRead 0 FirstWrite -1}
		sample_out {Type O LastRead -1 FirstWrite 64}
		phase_out {Type O LastRead -1 FirstWrite 64}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}
		cordic_apfixed_circ_table_arctan_128 {Type I LastRead -1 FirstWrite -1}
		noise_state {Type IO LastRead -1 FirstWrite -1}}
	sin_or_cos_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_float_Pipeline_1 {
		out_bits_1 {Type I LastRead 0 FirstWrite -1}
		out_bits {Type I LastRead 0 FirstWrite -1}
		c_1_out {Type O LastRead -1 FirstWrite 0}
		c_out {Type O LastRead -1 FirstWrite 0}}
	sin_or_cos_float_Pipeline_2 {
		result {Type I LastRead 0 FirstWrite -1}
		c_1_reload {Type I LastRead 0 FirstWrite -1}
		c_reload {Type I LastRead 0 FirstWrite -1}
		shift_1_out {Type O LastRead -1 FirstWrite 1}
		select_ln291_1_out {Type O LastRead -1 FirstWrite 1}}
	generic_asin_float_s {
		in_r {Type I LastRead 0 FirstWrite -1}
		cordic_apfixed_circ_table_arctan_128 {Type I LastRead -1 FirstWrite -1}}
	generic_asin_float_Pipeline_1 {
		t_ph {Type I LastRead 0 FirstWrite -1}
		tz_0_0_0_08_i_out {Type O LastRead -1 FirstWrite 1}
		cordic_apfixed_circ_table_arctan_128 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "116"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "117"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
