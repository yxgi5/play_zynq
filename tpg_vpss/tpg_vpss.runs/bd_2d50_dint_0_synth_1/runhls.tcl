open_project bd_2d50_dint_0
set_top v_deinterlacer
add_files -cflags " -I /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/src " /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/src/v_deinterlacer_config.h
add_files -cflags " -I /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/src " /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/src/v_deinterlacer.cpp
add_files -cflags " -I /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/src " /home/andy/zynq/play_zynq/tpg_vpss/tpg_vpss.srcs/sources_1/bd/system/ip/system_v_proc_ss_0_0/bd_0/ip/ip_20/src/v_deinterlacer.h

open_solution "prj"
set_part {xc7z020clg484-2}
create_clock -period 7.500 -name ap_clk


#config_rtl -reset_level low
config_dataflow -default_channel fifo

config_interface -input_reg_mode both -output_reg_mode both



config_rtl -prefix bd_2d50_dint_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 5.0
exit