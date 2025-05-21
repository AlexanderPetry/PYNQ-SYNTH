set moduleName generic_tanh_float_s
set isTopModule 0
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
set C_modelName {generic_tanh<float>}
set C_modelType { float 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ t_in float 32 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_in sc_in sc_lv 32 signal 0 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ grp_fu_106_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_106_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_106_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_106_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_106_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_112_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_112_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_112_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_112_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_in", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_106_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_106_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_106_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_106_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_106_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_106_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_106_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_106_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_106_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_106_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_112_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_112_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_112_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_112_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_112_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_112_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_112_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_112_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "11", "12", "13", "14", "15"],
		"CDFG" : "generic_tanh_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "7", "Inst_end_state" : "17"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "7", "Inst_end_state" : "17"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "7", "Inst_end_state" : "17"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "exp_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.mul_13s_71s_71_1_1_U1", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.mul_43ns_36ns_79_1_1_U2", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.mul_49ns_44ns_93_1_1_U3", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.mul_50ns_50ns_100_1_1_U4", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.sparsemux_9_3_64_1_1_U5", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exp_generic_double_s_fu_89.mac_muladd_16s_15ns_19s_31_4_1_U6", "Parent" : "1"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_8_no_dsp_1_U19", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U20", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U21", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U22", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	generic_tanh_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "37"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "37"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t_in { ap_none {  { t_in in_data 0 32 } } }
}
