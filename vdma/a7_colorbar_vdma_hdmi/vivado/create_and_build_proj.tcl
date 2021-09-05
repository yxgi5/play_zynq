#*****************************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# create_proj.tcl: Tcl script for re-creating project 'Native_to_AXI4S'
#
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
#*****************************************************************************************
################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

# Configuration - Can be modified by the user
set project_name vivado_proj
set BD_name system
set design_name $BD_name
set ip_repo_path [pwd]/ip_repo
set ip_cache_path [pwd]/ip_cache


# Create a new project
create_project $project_name ./$project_name -part xc7a35tfgg484-2
set_property target_language Verilog [current_project]

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}
# Add hdl files
#add_files -fileset sources_1 -norecurse -scan_for_includes .//hdl
#import_files -fileset sources_1 -norecurse ./hdl

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset -quiet constrs_1
}
# Add constraint files
add_files -fileset constrs_1 -norecurse -scan_for_includes ./xdc
import_files -fileset constrs_1 -norecurse ./xdc

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}
# Add simulation files
#add_files -fileset sim_1 -norecurse -scan_for_includes ./src/sim
#import_files -fileset sim_1 -norecurse ./src/sim


# Add ip repository
set_property ip_repo_paths $ip_repo_path [current_project]
config_ip_cache -use_cache_location $ip_cache_path
update_ip_catalog

# Build the Block Design
source ./bd/system.tcl

# Validate the BD
regenerate_bd_layout
validate_bd_design 
save_bd_design

# Create the HDL wrapper
export_ip_user_files -of_objects  [get_files  ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd] -sync -no_script -force -quiet
make_wrapper -files [get_files ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd] -top
#make_wrapper -files [get_files ./$project_name/$project_name.srcs/sources_1/top.v] -top


# Add the wrapper to the fileset
set obj [get_filesets sources_1]
set files [list "[file normalize [glob "./$project_name/$project_name.srcs/sources_1/bd/$BD_name/hdl/*_wrapper*"]]"]
#set files [list \
#               [file normalize $origin_dir/generated-src/Top.$CONFIG.v] \
#               [file normalize $base_dir/src/main/verilog/chip_top.sv] \
#               [file normalize $base_dir/socip/nasti/channel.sv] \
#               ...
#              ]
add_files -norecurse -fileset $obj $files

#set_property top led_twinkle [current_fileset]
#set_property top top [get_filesets sources_1]
#set_property top_file {./$project_name/$project_name.srcs/sources_1/led_twinkle.v} [current_fileset]
#set_property top_file {./$project_name/$project_name.srcs/sources_1/led_twinkle.v} [get_filesets sources_1]

#create_ip -name clk_wiz -vendor xilinx.com -library ip -version 6.0 -module_name clk_wiz_0
#set_property -dict [list \
#  CONFIG.PRIM_IN_FREQ {50} \
#  CONFIG.CLKOUT2_USED {true} \
#  CONFIG.CLKOUT3_USED {true}  \
#  CONFIG.CLKOUT4_USED {true}  \
#  CONFIG.CLKOUT5_USED {true}  \
#  CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {135}  \
#  CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {675}  \
#  CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {675}  \
#  CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {675}  \
#  CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {675}  \
#  CONFIG.CLKOUT2_DRIVES {No_buffer}  \
#  CONFIG.CLKOUT3_DRIVES {No_buffer}  \
#  CONFIG.CLKOUT4_DRIVES {No_buffer}  \
#  CONFIG.CLKOUT5_DRIVES {No_buffer}  \
#  CONFIG.CLKIN1_JITTER_PS {200.0} \
#  CONFIG.MMCM_DIVCLK_DIVIDE {1}  \
#  CONFIG.MMCM_CLKFBOUT_MULT_F {13.500}  \
#  CONFIG.MMCM_CLKOUT0_DIVIDE_F {5.000}  \
#  CONFIG.MMCM_CLKOUT1_DIVIDE {1}  \
#  CONFIG.MMCM_CLKOUT2_DIVIDE {1}  \
#  CONFIG.MMCM_CLKOUT3_DIVIDE {1}  \
#  CONFIG.MMCM_CLKOUT4_DIVIDE {1}  \
#  CONFIG.NUM_OUT_CLKS {5}  \
#  CONFIG.CLKOUT1_JITTER {151.933}  \
#  CONFIG.CLKOUT1_PHASE_ERROR {214.897}  \
#  CONFIG.CLKOUT2_JITTER {125.097}  \
#  CONFIG.CLKOUT2_PHASE_ERROR {214.897}  \
#  CONFIG.CLKOUT3_JITTER {125.097}  \
#  CONFIG.CLKOUT3_PHASE_ERROR {214.897}  \
#  CONFIG.CLKOUT4_JITTER {125.097}  \
#  CONFIG.CLKOUT4_PHASE_ERROR {214.897}  \
#  CONFIG.CLKOUT5_JITTER {125.097}  \
#  CONFIG.CLKOUT5_PHASE_ERROR {214.897}  \
#] [get_ips clk_wiz_0]

#create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_0
#set_property -dict [list \
#  CONFIG.C_PROBE2_WIDTH {24}  \
#  CONFIG.C_NUM_OF_PROBES {6}  \
#] [get_ips ila_0]

#create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_1
#set_property -dict [list \
#  CONFIG.C_PROBE0_WIDTH {4}  \
#  CONFIG.C_PROBE1_WIDTH {9}  \
#  CONFIG.C_PROBE6_WIDTH {9}  \
#  CONFIG.C_PROBE7_WIDTH {2}  \
#  CONFIG.C_PROBE10_WIDTH {8}  \
#  CONFIG.C_PROBE13_WIDTH {8}  \
#  CONFIG.C_NUM_OF_PROBES {14}  \
#] [get_ips ila_1]

#create_ip -name hdmi_trans -vendor xilinx.com -library user -version 1.0 -module_name hdmi_trans_0

update_compile_order -fileset sources_1
#update_compile_order -fileset sim_1
write_bd_layout -format pdf -orientation portrait -force ./$BD_name.pdf

#set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]

######
#exit
######

# Generate the output products
#generate_target all [get_files ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd]
#create_ip_run [get_files -of_objects [get_fileset sources_1] ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd]
#launch_runs -jobs 8 [get_runs $BD_name*synth_1]

# Generate the bitstream
launch_runs synth_1 -jobs 8
wait_on_run synth_1
open_run synth_1
report_timing_summary
#report_timing_summary -file timing_synth.log
#close_design
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
open_run impl_1
report_timing_summary
#report_timing_summary -file timing_impl.log
#close_design
#file copy -force xxx xxx.hdf
#write_hw_platform -fixed -include_bit -force -file ../vitis/xsa/${BD_name}_wrapper.xsa

