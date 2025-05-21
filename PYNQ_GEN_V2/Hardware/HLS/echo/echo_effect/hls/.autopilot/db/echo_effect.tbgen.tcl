set moduleName echo_effect
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
set C_modelName {echo_effect}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ BUFFER_r int 32 regular {axi_master 2}  }
	{ sample_in float 32 regular {axi_slave 0}  }
	{ sample_out int 32 regular {axi_slave 1}  }
	{ delay_ms float 32 regular {axi_slave 0}  }
	{ feedback_gain float 32 regular {axi_slave 0}  }
	{ sample_rate int 32 regular {axi_slave 0}  }
	{ buffer_r_r int 64 regular {axi_slave 0}  }
	{ index int 32 regular {axi_slave 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "BUFFER_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "buffer_r","offset": { "type": "dynamic","port_name": "buffer_r","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sample_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "sample_out", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "delay_ms", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "feedback_gain", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "sample_rate", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "buffer_r_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "index", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_ovld","bitwidth" : 32, "direction" : "READWRITE", "offset" : {"in":16, "out":24}, "offset_end" : {"in":23, "out":31}} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_BUFFER_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_BUFFER_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_BUFFER_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUFFER_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUFFER_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUFFER_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUFFER_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_BUFFER_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_BUFFER_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_BUFFER_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUFFER_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUFFER_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_BUFFER_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_BUFFER_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_BUFFER_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_BUFFER_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_BUFFER_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_BUFFER_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_BUFFER_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_BUFFER_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
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
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"index","role":"data","value":"16"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"index","role":"data","value":"24"}, {"name":"index","role":"valid","value":"28","valid_bit":"0"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"echo_effect","role":"start","value":"0","valid_bit":"0"},{"name":"echo_effect","role":"continue","value":"0","valid_bit":"4"},{"name":"echo_effect","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sample_in","role":"data","value":"16"},{"name":"delay_ms","role":"data","value":"40"},{"name":"feedback_gain","role":"data","value":"48"},{"name":"sample_rate","role":"data","value":"56"},{"name":"buffer_r_r","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"echo_effect","role":"start","value":"0","valid_bit":"0"},{"name":"echo_effect","role":"done","value":"0","valid_bit":"1"},{"name":"echo_effect","role":"idle","value":"0","valid_bit":"2"},{"name":"echo_effect","role":"ready","value":"0","valid_bit":"3"},{"name":"echo_effect","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sample_out","role":"data","value":"24"}, {"name":"sample_out","role":"valid","value":"28","valid_bit":"0"}] },
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
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_BUFFER_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_BUFFER_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_BUFFER_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_BUFFER_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWID" }} , 
 	{ "name": "m_axi_BUFFER_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_BUFFER_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_BUFFER_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_BUFFER_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_BUFFER_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_BUFFER_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_BUFFER_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_BUFFER_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_BUFFER_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_BUFFER_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_BUFFER_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_BUFFER_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_BUFFER_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_BUFFER_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_BUFFER_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WID" }} , 
 	{ "name": "m_axi_BUFFER_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_BUFFER_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_BUFFER_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_BUFFER_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_BUFFER_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARID" }} , 
 	{ "name": "m_axi_BUFFER_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_BUFFER_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_BUFFER_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_BUFFER_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_BUFFER_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_BUFFER_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_BUFFER_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_BUFFER_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_BUFFER_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_BUFFER_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_BUFFER_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_BUFFER_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_BUFFER_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_BUFFER_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RID" }} , 
 	{ "name": "m_axi_BUFFER_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_BUFFER_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_BUFFER_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_BUFFER_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_BUFFER_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_BUFFER_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "BID" }} , 
 	{ "name": "m_axi_BUFFER_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BUFFER_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "echo_effect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61", "EstimateLatencyMax" : "61",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "BUFFER_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "BUFFER_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "BUFFER_r_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "BUFFER_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "BUFFER_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "BUFFER_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "sample_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "sample_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "delay_ms", "Type" : "None", "Direction" : "I"},
			{"Name" : "feedback_gain", "Type" : "None", "Direction" : "I"},
			{"Name" : "sample_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_r_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BUFFER_r_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_17ns_17_36_seq_1_U4", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_17ns_32_36_seq_1_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	echo_effect {
		BUFFER_r {Type IO LastRead 57 FirstWrite 56}
		sample_in {Type I LastRead 0 FirstWrite -1}
		sample_out {Type O LastRead -1 FirstWrite 56}
		delay_ms {Type I LastRead 0 FirstWrite -1}
		feedback_gain {Type I LastRead 0 FirstWrite -1}
		sample_rate {Type I LastRead 0 FirstWrite -1}
		buffer_r_r {Type I LastRead 0 FirstWrite -1}
		index {Type IO LastRead 0 FirstWrite 56}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61", "Max" : "61"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "62"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	BUFFER_r { m_axi {  { m_axi_BUFFER_r_AWVALID VALID 1 1 }  { m_axi_BUFFER_r_AWREADY READY 0 1 }  { m_axi_BUFFER_r_AWADDR ADDR 1 64 }  { m_axi_BUFFER_r_AWID ID 1 1 }  { m_axi_BUFFER_r_AWLEN SIZE 1 8 }  { m_axi_BUFFER_r_AWSIZE BURST 1 3 }  { m_axi_BUFFER_r_AWBURST LOCK 1 2 }  { m_axi_BUFFER_r_AWLOCK CACHE 1 2 }  { m_axi_BUFFER_r_AWCACHE PROT 1 4 }  { m_axi_BUFFER_r_AWPROT QOS 1 3 }  { m_axi_BUFFER_r_AWQOS REGION 1 4 }  { m_axi_BUFFER_r_AWREGION USER 1 4 }  { m_axi_BUFFER_r_AWUSER DATA 1 1 }  { m_axi_BUFFER_r_WVALID VALID 1 1 }  { m_axi_BUFFER_r_WREADY READY 0 1 }  { m_axi_BUFFER_r_WDATA FIFONUM 1 32 }  { m_axi_BUFFER_r_WSTRB STRB 1 4 }  { m_axi_BUFFER_r_WLAST LAST 1 1 }  { m_axi_BUFFER_r_WID ID 1 1 }  { m_axi_BUFFER_r_WUSER DATA 1 1 }  { m_axi_BUFFER_r_ARVALID VALID 1 1 }  { m_axi_BUFFER_r_ARREADY READY 0 1 }  { m_axi_BUFFER_r_ARADDR ADDR 1 64 }  { m_axi_BUFFER_r_ARID ID 1 1 }  { m_axi_BUFFER_r_ARLEN SIZE 1 8 }  { m_axi_BUFFER_r_ARSIZE BURST 1 3 }  { m_axi_BUFFER_r_ARBURST LOCK 1 2 }  { m_axi_BUFFER_r_ARLOCK CACHE 1 2 }  { m_axi_BUFFER_r_ARCACHE PROT 1 4 }  { m_axi_BUFFER_r_ARPROT QOS 1 3 }  { m_axi_BUFFER_r_ARQOS REGION 1 4 }  { m_axi_BUFFER_r_ARREGION USER 1 4 }  { m_axi_BUFFER_r_ARUSER DATA 1 1 }  { m_axi_BUFFER_r_RVALID VALID 0 1 }  { m_axi_BUFFER_r_RREADY READY 1 1 }  { m_axi_BUFFER_r_RDATA FIFONUM 0 32 }  { m_axi_BUFFER_r_RLAST LAST 0 1 }  { m_axi_BUFFER_r_RID ID 0 1 }  { m_axi_BUFFER_r_RUSER DATA 0 1 }  { m_axi_BUFFER_r_RRESP RESP 0 2 }  { m_axi_BUFFER_r_BVALID VALID 0 1 }  { m_axi_BUFFER_r_BREADY READY 1 1 }  { m_axi_BUFFER_r_BRESP RESP 0 2 }  { m_axi_BUFFER_r_BID ID 0 1 }  { m_axi_BUFFER_r_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict BUFFER_r { CHANNEL_NUM 0 BUNDLE BUFFER_r NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ BUFFER_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ BUFFER_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
