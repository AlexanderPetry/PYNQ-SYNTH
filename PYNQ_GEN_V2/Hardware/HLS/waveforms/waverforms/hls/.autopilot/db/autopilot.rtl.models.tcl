set SynModuleInfo {
  {SRCNAME sin_or_cos<float>_Pipeline_1 MODELNAME sin_or_cos_float_Pipeline_1 RTLNAME waverforms_sin_or_cos_float_Pipeline_1
    SUBMODULES {
      {MODELNAME waverforms_flow_control_loop_pipe_sequential_init RTLNAME waverforms_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME waverforms_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sin_or_cos<float>_Pipeline_2 MODELNAME sin_or_cos_float_Pipeline_2 RTLNAME waverforms_sin_or_cos_float_Pipeline_2}
  {SRCNAME sin_or_cos<float> MODELNAME sin_or_cos_float_s RTLNAME waverforms_sin_or_cos_float_s
    SUBMODULES {
      {MODELNAME waverforms_mul_23s_22ns_45_1_1 RTLNAME waverforms_mul_23s_22ns_45_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_mul_30s_29ns_58_1_1 RTLNAME waverforms_mul_30s_29ns_58_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_mul_80s_24ns_80_1_1 RTLNAME waverforms_mul_80s_24ns_80_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_sparsemux_17_3_1_1_1 RTLNAME waverforms_sparsemux_17_3_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME waverforms_sparsemux_33_4_1_1_1 RTLNAME waverforms_sparsemux_33_4_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME waverforms_mul_15ns_15ns_30_1_1 RTLNAME waverforms_mul_15ns_15ns_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_mul_15ns_15s_30_1_1 RTLNAME waverforms_mul_15ns_15s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R RTLNAME waverforms_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R RTLNAME waverforms_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R RTLNAME waverforms_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R RTLNAME waverforms_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_asin<float>_Pipeline_1 MODELNAME generic_asin_float_Pipeline_1 RTLNAME waverforms_generic_asin_float_Pipeline_1
    SUBMODULES {
      {MODELNAME waverforms_generic_asin_float_Pipeline_1_cordic_apfixed_circ_table_arctan_128_ROM_AUTO_1R RTLNAME waverforms_generic_asin_float_Pipeline_1_cordic_apfixed_circ_table_arctan_128_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_asin<float> MODELNAME generic_asin_float_s RTLNAME waverforms_generic_asin_float_s
    SUBMODULES {
      {MODELNAME waverforms_sparsemux_11_4_55_1_1 RTLNAME waverforms_sparsemux_11_4_55_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME waverforms MODELNAME waverforms RTLNAME waverforms IS_TOP 1
    SUBMODULES {
      {MODELNAME waverforms_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME waverforms_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME waverforms_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_uitofp_32ns_32_2_no_dsp_1 RTLNAME waverforms_uitofp_32ns_32_2_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_fptrunc_64ns_32_2_no_dsp_1 RTLNAME waverforms_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_fpext_32ns_64_2_no_dsp_1 RTLNAME waverforms_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME waverforms_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_dadd_64ns_64ns_64_4_full_dsp_1 RTLNAME waverforms_dadd_64ns_64ns_64_4_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME waverforms_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_ddiv_64ns_64ns_64_17_no_dsp_1 RTLNAME waverforms_ddiv_64ns_64ns_64_17_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 16 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME waverforms_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_sitodp_32ns_64_3_no_dsp_1 RTLNAME waverforms_sitodp_32ns_64_3_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_mul_32s_32ns_32_1_1 RTLNAME waverforms_mul_32s_32ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME waverforms_control_s_axi RTLNAME waverforms_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
