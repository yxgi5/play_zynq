open_project system_v_tpg_0_0
set_top v_tpg
add_files -cflags " -I /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src " /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src/v_tpg_config.h
add_files -cflags " -I /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src " /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src/v_tpg.cpp
add_files -cflags " -I /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src " /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src/v_tpg.h
add_files -cflags " -I /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src " /home/andy/zynq/vdma_ov5640_test/vdma_ov5640_test.srcs/sources_1/bd/system/ip/system_v_tpg_0_0/src/v_tpg_zoneplate.h

open_solution "prj"
set_part {xc7z020clg484-2}
create_clock -period 7.500 -name ap_clk


config_rtl -form_dsp
config_schedule -verbose
config_interface -input_reg_mode both -output_reg_mode both


config_rtl -prefix system_v_tpg_0_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 8.0
exit
