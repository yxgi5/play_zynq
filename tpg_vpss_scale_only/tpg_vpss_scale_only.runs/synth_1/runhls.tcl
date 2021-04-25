open_project bd_ed91_hsc_0
set_top v_hscaler
add_files -cflags " -I /home/andreas/zynq/play_zynq/tpg_vpss_scale_only/tpg_vpss_scale_only.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_1/bd_0/ip/ip_3/src " /home/andreas/zynq/play_zynq/tpg_vpss_scale_only/tpg_vpss_scale_only.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_1/bd_0/ip/ip_3/src/v_hscaler_config.h
add_files -cflags " -I /home/andreas/zynq/play_zynq/tpg_vpss_scale_only/tpg_vpss_scale_only.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_1/bd_0/ip/ip_3/src " /home/andreas/zynq/play_zynq/tpg_vpss_scale_only/tpg_vpss_scale_only.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_1/bd_0/ip/ip_3/src/v_hscaler.cpp
add_files -cflags " -I /home/andreas/zynq/play_zynq/tpg_vpss_scale_only/tpg_vpss_scale_only.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_1/bd_0/ip/ip_3/src " /home/andreas/zynq/play_zynq/tpg_vpss_scale_only/tpg_vpss_scale_only.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_1/bd_0/ip/ip_3/src/v_hscaler.h

open_solution "prj"
set_part {xc7z020clg484-2}
create_clock -period 7.500 -name ap_clk


config_rtl -form_dsp
config_schedule -verbose
config_interface -input_reg_mode both -output_reg_mode both


config_rtl -prefix bd_ed91_hsc_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 1.0
exit
