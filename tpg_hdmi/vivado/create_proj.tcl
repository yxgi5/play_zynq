#*****************************************************************************************
# Vivado (TM) v2018.1 (64-bit)
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
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

# Configuration - Can be modified by the user
set project_name 				tpg_hdmi
set BD_name 					system

# Create a new project
create_project $project_name ./$project_name -part xc7z020clg484-2
set_property target_language Verilog [current_project]

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}
# Add hdl files
#add_files -fileset sources_1 -norecurse -scan_for_includes .//hdl
#import_files -fileset sources_1 -norecurse ./src/hdl

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
set_property  ip_repo_paths  ../../ip_repo [current_project]
update_ip_catalog

set design_name 	$BD_name

# Build the Block Design
source ./bd/system.tcl

# Validate the BD
regenerate_bd_layout
validate_bd_design 
save_bd_design

# Create the HDL wrapper
export_ip_user_files -of_objects  [get_files  ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd] -sync -no_script -force -quiet
make_wrapper -files [get_files ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd] -top

# Add the wrapper to the fileset
set obj [get_filesets sources_1]
set files [list "[file normalize [glob "./$project_name/$project_name.srcs/sources_1/bd/$BD_name/hdl/*_wrapper*"]]"]
add_files -norecurse -fileset $obj $files
update_compile_order -fileset sources_1
#update_compile_order -fileset sim_1

# Generate the output products
generate_target all [get_files ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd]
create_ip_run [get_files -of_objects [get_fileset sources_1] ./$project_name/$project_name.srcs/sources_1/bd/$BD_name/$BD_name.bd]
launch_runs -jobs 8 [get_runs $BD_name*synth_1]

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
file copy -force ./$project_name/$project_name.runs/impl_1/${BD_name}_wrapper.sysdef ../sdk/hdf/${BD_name}_wrapper.hdf
#write_hw_platform -fixed -include_bit -force -file ../vitis/xsa/${BD_name}_wrapper.xsa

