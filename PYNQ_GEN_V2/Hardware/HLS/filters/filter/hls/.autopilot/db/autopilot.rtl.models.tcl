set SynModuleInfo {
  {SRCNAME filter_Pipeline_VITIS_LOOP_29_1 MODELNAME filter_Pipeline_VITIS_LOOP_29_1 RTLNAME filter_filter_Pipeline_VITIS_LOOP_29_1
    SUBMODULES {
      {MODELNAME filter_flow_control_loop_pipe_sequential_init RTLNAME filter_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME filter_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME filter_Pipeline_VITIS_LOOP_44_2 MODELNAME filter_Pipeline_VITIS_LOOP_44_2 RTLNAME filter_filter_Pipeline_VITIS_LOOP_44_2
    SUBMODULES {
      {MODELNAME filter_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME filter_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME filter_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME filter_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME filter_sparsemux_9_2_32_1_1 RTLNAME filter_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME filter MODELNAME filter RTLNAME filter IS_TOP 1
    SUBMODULES {
      {MODELNAME filter_buffer_r_RAM_1P_BRAM_1R1W RTLNAME filter_buffer_r_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME filter_control_s_axi RTLNAME filter_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
