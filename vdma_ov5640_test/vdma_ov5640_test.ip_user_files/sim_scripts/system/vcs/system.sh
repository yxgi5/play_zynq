#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : system.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Sun Dec 27 15:18:58 CST 2020
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved. 
#
# usage: system.sh [-help]
# usage: system.sh [-lib_map_path]
# usage: system.sh [-noclean_files]
# usage: system.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'system.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xilinx_vip xil_defaultlib xpm lib_cdc_v1_0_2 lib_pkg_v1_0_2 fifo_generator_v13_2_3 lib_fifo_v1_0_12 blk_mem_gen_v8_4_2 lib_bmg_v1_0_11 lib_srl_fifo_v1_0_2 axi_datamover_v5_1_20 axi_vdma_v6_3_6 axis_infrastructure_v1_1_0 axis_register_slice_v1_1_18 axis_subset_converter_v1_1_18 axi_infrastructure_v1_1_0 axi_vip_v1_1_4 processing_system7_vip_v1_0_6 proc_sys_reset_v5_0_13 axi_lite_ipif_v3_0_4 v_tc_v6_1_13 v_vid_in_axi4s_v4_0_9 v_axi4s_vid_out_v4_0_10 xlconcat_v2_1_1 xlconstant_v1_1_5 interrupt_control_v3_1_4 axi_gpio_v2_0_20 generic_baseblocks_v2_1_0 axi_register_slice_v2_1_18 axi_data_fifo_v2_1_17 axi_crossbar_v2_1_19 axi_protocol_converter_v2_1_18)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "system.sh - Script generated by export_simulation (Vivado v2018.3 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/9097/src/mmcme2_drp.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/9097/src/axi_dynclk.vhd" \
    "$ref_dir/../../../bd/system/ip/system_axi_dynclk_0_0/sim/system_axi_dynclk_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_3 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_fifo_v1_0_12 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_2 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_bmg_v1_0_11 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_datamover_v5_1_20 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_vdma_v6_3_6 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_vdma_v6_3_6 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axis_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axis_register_slice_v1_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/af00/hdl/axis_register_slice_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tdata_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tuser_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tstrb_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tkeep_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tid_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tdest_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/tlast_system_axis_subset_converter_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axis_subset_converter_v1_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/33dd/hdl/axis_subset_converter_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/hdl/top_system_axis_subset_converter_0_0.v" \
    "$ref_dir/../../../bd/system/ip/system_axis_subset_converter_0_0/sim/system_axis_subset_converter_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_4 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work processing_system7_vip_v1_0_6 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/ip/system_rst_processing_system7_0_100M_0/sim/system_rst_processing_system7_0_100M_0.vhd" \
    "$ref_dir/../../../bd/system/ip/system_rst_processing_system7_0_150M_0/sim/system_rst_processing_system7_0_150M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work v_tc_v6_1_13 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work v_vid_in_axi4s_v4_0_9 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work v_axi4s_vid_out_v4_0_10 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconcat_v2_1_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconstant_v1_1_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_xlconstant_1_0/sim/system_xlconstant_1_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_20 $vhdlan_opts \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_17 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/58e2/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/8713/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ipshared/70cf/hdl" +incdir+"$ref_dir/../../../../vdma_test_to_flash.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" +incdir+"/opt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
    "$ref_dir/../../../bd/system/ip/system_auto_pc_5/sim/system_auto_pc_5.v" \
    "$ref_dir/../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
    "$ref_dir/../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
    "$ref_dir/../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \
    "$ref_dir/../../../bd/system/ip/system_auto_pc_4/sim/system_auto_pc_4.v" \
    "$ref_dir/../../../bd/system/sim/system.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.system xil_defaultlib.glbl -o system_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./system_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./system.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  else
    lib_map_path="/home/andy/zynq/09_vdma_test_to_flash/vdma_test_to_flash.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key system_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc system_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./system.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: system.sh [-help]\n\
Usage: system.sh [-lib_map_path]\n\
Usage: system.sh [-reset_run]\n\
Usage: system.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
