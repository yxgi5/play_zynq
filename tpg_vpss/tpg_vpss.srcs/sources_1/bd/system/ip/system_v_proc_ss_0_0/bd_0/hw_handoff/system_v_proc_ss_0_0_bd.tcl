
################################################################
# This is a generated script based on design: bd_2d50
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

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

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_2d50_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_2d50

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axi_mm [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_mm ]
  set m_axis [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis ]
  set s_axi_ctrl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {20} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   ] $s_axi_ctrl
  set s_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis ]

  # Create ports
  set aclk_axi_mm [ create_bd_port -dir I -type clk aclk_axi_mm ]
  set aclk_axis [ create_bd_port -dir I -type clk aclk_axis ]
  set aclk_ctrl [ create_bd_port -dir I -type clk aclk_ctrl ]
  set aresetn_ctrl [ create_bd_port -dir I -type rst aresetn_ctrl ]
  set aresetn_io_axis [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_io_axis ]
  set deint_field_id [ create_bd_port -dir I deint_field_id ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.S00_HAS_DATA_FIFO {0} \
   CONFIG.STRATEGY {0} \
 ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {3} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {2} \
   CONFIG.XBAR_DATA_WIDTH {256} \
 ] $axi_interconnect_1

  # Create instance: axi_vdma, and set properties
  set axi_vdma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma ]
  set_property -dict [ list \
   CONFIG.c_m_axi_mm2s_data_width {128} \
   CONFIG.c_m_axis_mm2s_tdata_width {48} \
   CONFIG.c_mm2s_genlock_mode {1} \
   CONFIG.c_mm2s_max_burst_length {64} \
   CONFIG.c_num_fstores {4} \
   CONFIG.c_s2mm_genlock_mode {0} \
   CONFIG.c_s2mm_max_burst_length {64} \
 ] $axi_vdma

  # Create instance: csc, and set properties
  set csc [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_csc:1.0 csc ]
  set_property -dict [ list \
   CONFIG.ENABLE_420 {0} \
   CONFIG.ENABLE_422 {1} \
   CONFIG.ENABLE_WINDOW {1} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.USE_URAM {0} \
   CONFIG.V_CSC_MAX_HEIGHT {2160} \
   CONFIG.V_CSC_MAX_WIDTH {3840} \
 ] $csc

  # Create instance: deint_cc, and set properties
  set deint_cc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter:1.1 deint_cc ]
  set_property -dict [ list \
   CONFIG.TUSER_WIDTH {2} \
 ] $deint_cc

  # Create instance: deint_concat, and set properties
  set deint_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 deint_concat ]

  # Create instance: deint_fid_tap, and set properties
  set deint_fid_tap [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 deint_fid_tap ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
 ] $deint_fid_tap

  # Create instance: deint_ss, and set properties
  set deint_ss [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 deint_ss ]
  set_property -dict [ list \
   CONFIG.M_TUSER_WIDTH {1} \
 ] $deint_ss

  # Create instance: deint_tuser_tap, and set properties
  set deint_tuser_tap [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 deint_tuser_tap ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {2} \
 ] $deint_tuser_tap

  # Create instance: dint, and set properties
  set dint [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_deinterlacer:5.0 dint ]
  set_property -dict [ list \
   CONFIG.AXIMM_ADDR_WIDTH {32} \
   CONFIG.AXIMM_BURST_LENGTH {16} \
   CONFIG.AXIMM_NUM_OUTSTANDING {16} \
   CONFIG.HAS_AXI4MM_INTF {1} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.NUM_VIDEO_COMPONENTS {3} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.USE_URAM {0} \
 ] $dint

  # Create instance: hcr, and set properties
  set hcr [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hcresampler:1.0 hcr ]
  set_property -dict [ list \
   CONFIG.CONVERT_TYPE {2} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.NUM_H_TAPS {4} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
 ] $hcr

  # Create instance: hsc, and set properties
  set hsc [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hscaler:1.0 hsc ]
  set_property -dict [ list \
   CONFIG.ENABLE_420 {1} \
   CONFIG.ENABLE_422 {1} \
   CONFIG.ENABLE_CSC {0} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.SCALE_MODE {2} \
   CONFIG.TAPS {6} \
   CONFIG.USE_URAM {0} \
 ] $hsc

  # Create instance: input_size_set, and set properties
  set input_size_set [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 input_size_set ]
  set_property -dict [ list \
   CONFIG.M_HAS_TKEEP {1} \
   CONFIG.M_HAS_TSTRB {1} \
   CONFIG.M_TDEST_WIDTH {1} \
   CONFIG.M_TID_WIDTH {1} \
   CONFIG.S_HAS_TKEEP {1} \
   CONFIG.S_HAS_TLAST {1} \
   CONFIG.S_HAS_TSTRB {1} \
   CONFIG.S_TDATA_NUM_BYTES {3} \
   CONFIG.S_TDEST_WIDTH {1} \
   CONFIG.S_TID_WIDTH {1} \
   CONFIG.S_TUSER_WIDTH {1} \
 ] $input_size_set

  # Create instance: ltr, and set properties
  set ltr [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_letterbox:1.0 ltr ]
  set_property -dict [ list \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
 ] $ltr

  # Create instance: proc_ss_ip_aresetn, and set properties
  set proc_ss_ip_aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 proc_ss_ip_aresetn ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $proc_ss_ip_aresetn

  # Create instance: reset_sel_axi_mm, and set properties
  set reset_sel_axi_mm [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 reset_sel_axi_mm ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $reset_sel_axi_mm

  # Create instance: reset_sel_axis, and set properties
  set reset_sel_axis [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 reset_sel_axis ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {2} \
 ] $reset_sel_axis

  # Create instance: rst_axi_mm, and set properties
  set rst_axi_mm [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_mm ]

  # Create instance: rst_axis, and set properties
  set rst_axis [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axis ]

  # Create instance: vcr_i, and set properties
  set vcr_i [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vcresampler:1.0 vcr_i ]
  set_property -dict [ list \
   CONFIG.CONVERT_TYPE {2} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.NUM_V_TAPS {4} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.USE_URAM {0} \
 ] $vcr_i

  # Create instance: vcr_o, and set properties
  set vcr_o [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vcresampler:1.0 vcr_o ]
  set_property -dict [ list \
   CONFIG.CONVERT_TYPE {2} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.NUM_V_TAPS {4} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.USE_URAM {0} \
 ] $vcr_o

  # Create instance: vdma_pad, and set properties
  set vdma_pad [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 vdma_pad ]
  set_property -dict [ list \
   CONFIG.M_TUSER_WIDTH {6} \
   CONFIG.S_TDATA_NUM_BYTES {6} \
 ] $vdma_pad

  # Create instance: vdma_trunc, and set properties
  set vdma_trunc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 vdma_trunc ]
  set_property -dict [ list \
   CONFIG.M_TUSER_WIDTH {6} \
   CONFIG.S_TDATA_NUM_BYTES {6} \
 ] $vdma_trunc

  # Create instance: vid_in_aresetn, and set properties
  set vid_in_aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 vid_in_aresetn ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {2} \
 ] $vid_in_aresetn

  # Create instance: video_router, and set properties
  set video_router [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 video_router ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {1} \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.M02_HAS_REGSLICE {1} \
   CONFIG.M04_HAS_REGSLICE {1} \
   CONFIG.M05_HAS_REGSLICE {1} \
   CONFIG.M06_HAS_REGSLICE {1} \
   CONFIG.M07_HAS_REGSLICE {1} \
   CONFIG.M08_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {10} \
   CONFIG.NUM_SI {10} \
   CONFIG.ROUTING_MODE {1} \
   CONFIG.S00_HAS_REGSLICE {0} \
   CONFIG.XBAR_TDATA_NUM_BYTES {3} \
 ] $video_router

  # Create instance: vsc, and set properties
  set vsc [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vscaler:1.0 vsc ]
  set_property -dict [ list \
   CONFIG.ENABLE_420 {1} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.SCALE_MODE {2} \
   CONFIG.TAPS {6} \
   CONFIG.USE_URAM {0} \
 ] $vsc

  # Create interface connections
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins video_router/S_AXI_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins reset_sel_axis/S_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins vsc/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins hsc/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins ltr/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_interconnect_0/M05_AXI] [get_bd_intf_pins hcr/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_pins vcr_i/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_interconnect_0/M07_AXI] [get_bd_intf_pins vcr_o/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M08_AXI [get_bd_intf_pins axi_interconnect_0/M08_AXI] [get_bd_intf_pins csc/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M09_AXI [get_bd_intf_pins axi_interconnect_0/M09_AXI] [get_bd_intf_pins axi_vdma/S_AXI_LITE]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M10_AXI [get_bd_intf_pins axi_interconnect_0/M10_AXI] [get_bd_intf_pins dint/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_0_M11_AXI [get_bd_intf_pins axi_interconnect_0/M11_AXI] [get_bd_intf_pins reset_sel_axi_mm/S_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_1_M00_AXI [get_bd_intf_ports m_axi_mm] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_vdma_M_AXIS_MM2S [get_bd_intf_pins axi_vdma/M_AXIS_MM2S] [get_bd_intf_pins vdma_pad/S_AXIS]
  connect_bd_intf_net -intf_net intf_net_axi_vdma_M_AXI_MM2S [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins axi_vdma/M_AXI_MM2S]
  connect_bd_intf_net -intf_net intf_net_axi_vdma_M_AXI_S2MM [get_bd_intf_pins axi_interconnect_1/S01_AXI] [get_bd_intf_pins axi_vdma/M_AXI_S2MM]
  connect_bd_intf_net -intf_net intf_net_bdry_in_s_axi_ctrl [get_bd_intf_ports s_axi_ctrl] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net intf_net_bdry_in_s_axis [get_bd_intf_ports s_axis] [get_bd_intf_pins input_size_set/S_AXIS]
  connect_bd_intf_net -intf_net intf_net_csc_m_axis_video [get_bd_intf_pins csc/m_axis_video] [get_bd_intf_pins video_router/S08_AXIS]
  connect_bd_intf_net -intf_net intf_net_deint_cc_M_AXIS [get_bd_intf_pins deint_cc/M_AXIS] [get_bd_intf_pins dint/s_axis_video]
  connect_bd_intf_net -intf_net intf_net_deint_ss_M_AXIS [get_bd_intf_pins deint_cc/S_AXIS] [get_bd_intf_pins deint_ss/M_AXIS]
  connect_bd_intf_net -intf_net intf_net_dint_m_axi_gmem [get_bd_intf_pins axi_interconnect_1/S02_AXI] [get_bd_intf_pins dint/m_axi_gmem]
  connect_bd_intf_net -intf_net intf_net_dint_m_axis_video [get_bd_intf_pins dint/m_axis_video] [get_bd_intf_pins video_router/S09_AXIS]
  connect_bd_intf_net -intf_net intf_net_hcr_m_axis_video [get_bd_intf_pins hcr/m_axis_video] [get_bd_intf_pins video_router/S05_AXIS]
  connect_bd_intf_net -intf_net intf_net_hsc_m_axis_video [get_bd_intf_pins hsc/m_axis_video] [get_bd_intf_pins video_router/S02_AXIS]
  connect_bd_intf_net -intf_net intf_net_input_size_set_M_AXIS [get_bd_intf_pins input_size_set/M_AXIS] [get_bd_intf_pins video_router/S00_AXIS]
  connect_bd_intf_net -intf_net intf_net_ltr_m_axis_video [get_bd_intf_pins ltr/m_axis_video] [get_bd_intf_pins video_router/S04_AXIS]
  connect_bd_intf_net -intf_net intf_net_vcr_i_m_axis_video [get_bd_intf_pins vcr_i/m_axis_video] [get_bd_intf_pins video_router/S06_AXIS]
  connect_bd_intf_net -intf_net intf_net_vcr_o_m_axis_video [get_bd_intf_pins vcr_o/m_axis_video] [get_bd_intf_pins video_router/S07_AXIS]
  connect_bd_intf_net -intf_net intf_net_vdma_pad_M_AXIS [get_bd_intf_pins vdma_pad/M_AXIS] [get_bd_intf_pins video_router/S03_AXIS]
  connect_bd_intf_net -intf_net intf_net_vdma_trunc_M_AXIS [get_bd_intf_pins axi_vdma/S_AXIS_S2MM] [get_bd_intf_pins vdma_trunc/M_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M00_AXIS [get_bd_intf_ports m_axis] [get_bd_intf_pins video_router/M00_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M01_AXIS [get_bd_intf_pins video_router/M01_AXIS] [get_bd_intf_pins vsc/s_axis_video]
  connect_bd_intf_net -intf_net intf_net_video_router_M02_AXIS [get_bd_intf_pins hsc/s_axis_video] [get_bd_intf_pins video_router/M02_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M03_AXIS [get_bd_intf_pins vdma_trunc/S_AXIS] [get_bd_intf_pins video_router/M03_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M04_AXIS [get_bd_intf_pins ltr/s_axis_video] [get_bd_intf_pins video_router/M04_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M05_AXIS [get_bd_intf_pins hcr/s_axis_video] [get_bd_intf_pins video_router/M05_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M06_AXIS [get_bd_intf_pins vcr_i/s_axis_video] [get_bd_intf_pins video_router/M06_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M07_AXIS [get_bd_intf_pins vcr_o/s_axis_video] [get_bd_intf_pins video_router/M07_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M08_AXIS [get_bd_intf_pins csc/s_axis_video] [get_bd_intf_pins video_router/M08_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M09_AXIS [get_bd_intf_pins deint_ss/S_AXIS] [get_bd_intf_pins video_router/M09_AXIS]
  connect_bd_intf_net -intf_net intf_net_vsc_m_axis_video [get_bd_intf_pins video_router/S01_AXIS] [get_bd_intf_pins vsc/m_axis_video]

  # Create port connections
  connect_bd_net -net net_bdry_in_aclk_axi_mm [get_bd_ports aclk_axi_mm] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_interconnect_0/M11_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins axi_interconnect_1/S02_ACLK] [get_bd_pins axi_vdma/m_axi_mm2s_aclk] [get_bd_pins axi_vdma/m_axi_s2mm_aclk] [get_bd_pins axi_vdma/m_axis_mm2s_aclk] [get_bd_pins axi_vdma/s_axi_lite_aclk] [get_bd_pins axi_vdma/s_axis_s2mm_aclk] [get_bd_pins deint_cc/m_axis_aclk] [get_bd_pins dint/ap_clk] [get_bd_pins reset_sel_axi_mm/s_axi_aclk] [get_bd_pins rst_axi_mm/slowest_sync_clk] [get_bd_pins vdma_pad/aclk] [get_bd_pins vdma_trunc/aclk] [get_bd_pins video_router/M03_AXIS_ACLK] [get_bd_pins video_router/S03_AXIS_ACLK] [get_bd_pins video_router/S09_AXIS_ACLK]
  connect_bd_net -net net_bdry_in_aclk_axis [get_bd_ports aclk_axis] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins csc/ap_clk] [get_bd_pins deint_cc/s_axis_aclk] [get_bd_pins deint_ss/aclk] [get_bd_pins hcr/ap_clk] [get_bd_pins hsc/ap_clk] [get_bd_pins input_size_set/aclk] [get_bd_pins ltr/ap_clk] [get_bd_pins reset_sel_axis/s_axi_aclk] [get_bd_pins rst_axis/slowest_sync_clk] [get_bd_pins vcr_i/ap_clk] [get_bd_pins vcr_o/ap_clk] [get_bd_pins video_router/ACLK] [get_bd_pins video_router/M00_AXIS_ACLK] [get_bd_pins video_router/M01_AXIS_ACLK] [get_bd_pins video_router/M02_AXIS_ACLK] [get_bd_pins video_router/M04_AXIS_ACLK] [get_bd_pins video_router/M05_AXIS_ACLK] [get_bd_pins video_router/M06_AXIS_ACLK] [get_bd_pins video_router/M07_AXIS_ACLK] [get_bd_pins video_router/M08_AXIS_ACLK] [get_bd_pins video_router/M09_AXIS_ACLK] [get_bd_pins video_router/S00_AXIS_ACLK] [get_bd_pins video_router/S01_AXIS_ACLK] [get_bd_pins video_router/S02_AXIS_ACLK] [get_bd_pins video_router/S04_AXIS_ACLK] [get_bd_pins video_router/S05_AXIS_ACLK] [get_bd_pins video_router/S06_AXIS_ACLK] [get_bd_pins video_router/S07_AXIS_ACLK] [get_bd_pins video_router/S08_AXIS_ACLK] [get_bd_pins vsc/ap_clk]
  connect_bd_net -net net_bdry_in_aclk_ctrl [get_bd_ports aclk_ctrl] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins video_router/S_AXI_CTRL_ACLK]
  connect_bd_net -net net_bdry_in_aresetn_ctrl [get_bd_ports aresetn_ctrl] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins rst_axi_mm/ext_reset_in] [get_bd_pins rst_axis/ext_reset_in] [get_bd_pins video_router/S_AXI_CTRL_ARESETN]
  connect_bd_net -net net_bdry_in_deint_field_id [get_bd_ports deint_field_id] [get_bd_pins deint_concat/In1]
  connect_bd_net -net net_deint_cc_m_axis_tuser [get_bd_pins deint_cc/m_axis_tuser] [get_bd_pins deint_fid_tap/Din] [get_bd_pins deint_tuser_tap/Din]
  connect_bd_net -net net_deint_concat_dout [get_bd_pins deint_cc/s_axis_tuser] [get_bd_pins deint_concat/dout]
  connect_bd_net -net net_deint_fid_tap_Dout [get_bd_pins deint_fid_tap/Dout] [get_bd_pins dint/even]
  connect_bd_net -net net_deint_ss_m_axis_tuser [get_bd_pins deint_concat/In0] [get_bd_pins deint_ss/m_axis_tuser]
  connect_bd_net -net net_deint_tuser_tap_Dout [get_bd_pins deint_tuser_tap/Dout] [get_bd_pins dint/s_axis_video_TUSER]
  connect_bd_net -net net_proc_ss_ip_aresetn_Dout [get_bd_pins csc/ap_rst_n] [get_bd_pins deint_cc/s_axis_aresetn] [get_bd_pins deint_ss/aresetn] [get_bd_pins hcr/ap_rst_n] [get_bd_pins hsc/ap_rst_n] [get_bd_pins input_size_set/aresetn] [get_bd_pins ltr/ap_rst_n] [get_bd_pins proc_ss_ip_aresetn/Dout] [get_bd_pins vcr_i/ap_rst_n] [get_bd_pins vcr_o/ap_rst_n] [get_bd_pins video_router/ARESETN] [get_bd_pins video_router/M00_AXIS_ARESETN] [get_bd_pins video_router/M01_AXIS_ARESETN] [get_bd_pins video_router/M02_AXIS_ARESETN] [get_bd_pins video_router/M04_AXIS_ARESETN] [get_bd_pins video_router/M05_AXIS_ARESETN] [get_bd_pins video_router/M06_AXIS_ARESETN] [get_bd_pins video_router/M07_AXIS_ARESETN] [get_bd_pins video_router/M08_AXIS_ARESETN] [get_bd_pins video_router/M09_AXIS_ARESETN] [get_bd_pins video_router/S00_AXIS_ARESETN] [get_bd_pins video_router/S01_AXIS_ARESETN] [get_bd_pins video_router/S02_AXIS_ARESETN] [get_bd_pins video_router/S04_AXIS_ARESETN] [get_bd_pins video_router/S05_AXIS_ARESETN] [get_bd_pins video_router/S06_AXIS_ARESETN] [get_bd_pins video_router/S07_AXIS_ARESETN] [get_bd_pins video_router/S08_AXIS_ARESETN] [get_bd_pins vsc/ap_rst_n]
  connect_bd_net -net net_reset_sel_axi_mm_gpio_io_o [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_interconnect_1/S01_ARESETN] [get_bd_pins axi_interconnect_1/S02_ARESETN] [get_bd_pins deint_cc/m_axis_aresetn] [get_bd_pins dint/ap_rst_n] [get_bd_pins reset_sel_axi_mm/gpio_io_i] [get_bd_pins reset_sel_axi_mm/gpio_io_o] [get_bd_pins vdma_pad/aresetn] [get_bd_pins vdma_trunc/aresetn] [get_bd_pins video_router/M03_AXIS_ARESETN] [get_bd_pins video_router/S03_AXIS_ARESETN] [get_bd_pins video_router/S09_AXIS_ARESETN]
  connect_bd_net -net net_reset_sel_axis_gpio_io_o [get_bd_pins proc_ss_ip_aresetn/Din] [get_bd_pins reset_sel_axis/gpio_io_i] [get_bd_pins reset_sel_axis/gpio_io_o] [get_bd_pins vid_in_aresetn/Din]
  connect_bd_net -net net_rst_axi_mm_peripheral_aresetn [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_interconnect_0/M11_ARESETN] [get_bd_pins axi_vdma/axi_resetn] [get_bd_pins reset_sel_axi_mm/s_axi_aresetn] [get_bd_pins rst_axi_mm/peripheral_aresetn]
  connect_bd_net -net net_rst_axis_peripheral_aresetn [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins reset_sel_axis/s_axi_aresetn] [get_bd_pins rst_axis/peripheral_aresetn]
  connect_bd_net -net net_vid_in_aresetn_Dout [get_bd_ports aresetn_io_axis] [get_bd_pins vid_in_aresetn/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma/Data_MM2S] [get_bd_addr_segs m_axi_mm/Reg] Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma/Data_S2MM] [get_bd_addr_segs m_axi_mm/Reg] Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces dint/Data_m_axi_gmem] [get_bd_addr_segs m_axi_mm/Reg] Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs axi_vdma/S_AXI_LITE/Reg] SEG_axi_vdma_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00010000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs csc/s_axi_CTRL/Reg] SEG_csc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00020000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs dint/s_axi_CTRL/Reg] SEG_dint_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00030000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs hcr/s_axi_CTRL/Reg] SEG_hcr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00040000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs hsc/s_axi_CTRL/Reg] SEG_hsc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00050000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs ltr/s_axi_CTRL/Reg] SEG_ltr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00060000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs reset_sel_axi_mm/S_AXI/Reg] SEG_reset_sel_axi_mm_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00070000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs reset_sel_axis/S_AXI/Reg] SEG_reset_sel_axis_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00080000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs vcr_i/s_axi_CTRL/Reg] SEG_vcr_i_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00090000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs vcr_o/s_axi_CTRL/Reg] SEG_vcr_o_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x000B0000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs vsc/s_axi_CTRL/Reg] SEG_vsc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x000A0000 [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs video_router/xbar/S_AXI_CTRL/Reg] SEG_xbar_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


