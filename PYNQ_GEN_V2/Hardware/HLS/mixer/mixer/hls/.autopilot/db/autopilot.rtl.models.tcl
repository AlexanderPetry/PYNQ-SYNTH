set SynModuleInfo {
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME mixer_exp_generic_double_s
    SUBMODULES {
      {MODELNAME mixer_mul_13s_71s_71_1_1 RTLNAME mixer_mul_13s_71s_71_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mixer_mul_43ns_36ns_79_1_1 RTLNAME mixer_mul_43ns_36ns_79_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mixer_mul_49ns_44ns_93_1_1 RTLNAME mixer_mul_49ns_44ns_93_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mixer_mul_50ns_50ns_100_1_1 RTLNAME mixer_mul_50ns_50ns_100_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mixer_sparsemux_9_3_64_1_1 RTLNAME mixer_sparsemux_9_3_64_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME mixer_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME mixer_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME mixer_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME mixer_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mixer_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME mixer_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mixer_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME mixer_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<float> MODELNAME generic_tanh_float_s RTLNAME mixer_generic_tanh_float_s
    SUBMODULES {
      {MODELNAME mixer_fdiv_32ns_32ns_32_8_no_dsp_1 RTLNAME mixer_fdiv_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME mixer_fptrunc_64ns_32_2_no_dsp_1 RTLNAME mixer_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mixer_fpext_32ns_64_2_no_dsp_1 RTLNAME mixer_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mixer_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME mixer_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mixer_dadd_64ns_64ns_64_4_full_dsp_1 RTLNAME mixer_dadd_64ns_64ns_64_4_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mixer MODELNAME mixer RTLNAME mixer IS_TOP 1
    SUBMODULES {
      {MODELNAME mixer_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME mixer_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mixer_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME mixer_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mixer_control_s_axi RTLNAME mixer_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
