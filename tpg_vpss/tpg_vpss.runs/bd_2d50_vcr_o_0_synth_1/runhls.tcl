open_project bd_2d50_vcr_o_0
set_top v_vcresampler
add_files -cflags " -I /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/src " /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/src/v_vcresampler_config.h
add_files -cflags " -I /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/src " /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/src/v_vcresampler.cpp
add_files -cflags " -I /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/src " /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_27/src/v_vcresampler.h

open_solution "prj"
set_part {xc7z020clg484-2}
create_clock -period 7.500 -name ap_clk


config_interface -input_reg_mode both -output_reg_mode both


config_rtl -prefix bd_2d50_vcr_o_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 1.0
exit