// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 24 21:13:31 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top bd_2d50_auto_cc_12 -prefix
//               bd_2d50_auto_cc_12_ bd_2d50_auto_cc_12_stub.v
// Design      : bd_2d50_auto_cc_12
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *)
module bd_2d50_auto_cc_12(s_axis_aresetn, m_axis_aresetn, s_axis_aclk, 
  s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tuser, 
  m_axis_aclk, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tlast, 
  m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aresetn,m_axis_aresetn,s_axis_aclk,s_axis_tvalid,s_axis_tready,s_axis_tdata[47:0],s_axis_tkeep[5:0],s_axis_tlast,s_axis_tuser[5:0],m_axis_aclk,m_axis_tvalid,m_axis_tready,m_axis_tdata[47:0],m_axis_tkeep[5:0],m_axis_tlast,m_axis_tuser[5:0]" */;
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [5:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [5:0]m_axis_tuser;
endmodule
