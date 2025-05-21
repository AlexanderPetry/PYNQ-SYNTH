set SynModuleInfo {
  {SRCNAME echo_effect MODELNAME echo_effect RTLNAME echo_effect IS_TOP 1
    SUBMODULES {
      {MODELNAME echo_effect_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME echo_effect_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME echo_effect_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME echo_effect_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME echo_effect_sitofp_32ns_32_2_no_dsp_1 RTLNAME echo_effect_sitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME echo_effect_srem_32ns_17ns_17_36_seq_1 RTLNAME echo_effect_srem_32ns_17ns_17_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME echo_effect_srem_32ns_17ns_32_36_seq_1 RTLNAME echo_effect_srem_32ns_17ns_32_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME echo_effect_BUFFER_r_m_axi RTLNAME echo_effect_BUFFER_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME echo_effect_CTRL_s_axi RTLNAME echo_effect_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME echo_effect_control_s_axi RTLNAME echo_effect_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
