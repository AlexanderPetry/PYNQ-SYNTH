set moduleName filter_Pipeline_VITIS_LOOP_44_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {filter_Pipeline_VITIS_LOOP_44_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buffer_r { MEM_WIDTH 32 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ icmp_ln35 int 1 regular  }
	{ icmp_ln35_1 int 1 regular  }
	{ acc_out float 32 regular {pointer 1}  }
	{ buffer_r float 32 regular {array 4 { 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "icmp_ln35", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln35_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "acc_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ icmp_ln35 sc_in sc_lv 1 signal 0 } 
	{ icmp_ln35_1 sc_in sc_lv 1 signal 1 } 
	{ acc_out sc_out sc_lv 32 signal 2 } 
	{ acc_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ buffer_r_address0 sc_out sc_lv 2 signal 3 } 
	{ buffer_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ buffer_r_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "icmp_ln35", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln35", "role": "default" }} , 
 	{ "name": "icmp_ln35_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln35_1", "role": "default" }} , 
 	{ "name": "acc_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_out", "role": "default" }} , 
 	{ "name": "acc_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_out", "role": "ap_vld" }} , 
 	{ "name": "buffer_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_r", "role": "address0" }} , 
 	{ "name": "buffer_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce0" }} , 
 	{ "name": "buffer_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_r", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "filter_Pipeline_VITIS_LOOP_44_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "icmp_ln35", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln35_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U5", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U6", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	filter_Pipeline_VITIS_LOOP_44_2 {
		icmp_ln35 {Type I LastRead 0 FirstWrite -1}
		icmp_ln35_1 {Type I LastRead 0 FirstWrite -1}
		acc_out {Type O LastRead -1 FirstWrite 3}
		buffer_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	icmp_ln35 { ap_none {  { icmp_ln35 in_data 0 1 } } }
	icmp_ln35_1 { ap_none {  { icmp_ln35_1 in_data 0 1 } } }
	acc_out { ap_vld {  { acc_out out_data 1 32 }  { acc_out_ap_vld out_vld 1 1 } } }
	buffer_r { ap_memory {  { buffer_r_address0 mem_address 1 2 }  { buffer_r_ce0 mem_ce 1 1 }  { buffer_r_q0 mem_dout 0 32 } } }
}
