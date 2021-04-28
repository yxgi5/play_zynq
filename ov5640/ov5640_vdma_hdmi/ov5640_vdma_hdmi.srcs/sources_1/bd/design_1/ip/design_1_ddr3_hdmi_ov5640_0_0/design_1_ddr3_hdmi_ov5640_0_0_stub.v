// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Apr 14 22:48:12 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/andy/workdir/microphase/20_ov5640_hdmi/ov5640_hdmi/ov5640_hdmi.srcs/sources_1/bd/design_1/ip/design_1_ddr3_hdmi_ov5640_0_0/design_1_ddr3_hdmi_ov5640_0_0_stub.v
// Design      : design_1_ddr3_hdmi_ov5640_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov5640_capture,Vivado 2018.3" *)
module design_1_ddr3_hdmi_ov5640_0_0(clk, rst, cmos_scl, cmos_sda, cmos_pclk, 
  cmos_vsync, cmos_href, cmos_rst_n, cmos_data, pclk, data_active, cmos_clk_en, capture_data, 
  vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,cmos_scl,cmos_sda,cmos_pclk,cmos_vsync,cmos_href,cmos_rst_n,cmos_data[9:0],pclk,data_active,cmos_clk_en,capture_data[23:0],vsync" */;
  input clk;
  input rst;
  output cmos_scl;
  inout cmos_sda;
  input cmos_pclk;
  input cmos_vsync;
  input cmos_href;
  output cmos_rst_n;
  input [9:0]cmos_data;
  output pclk;
  output data_active;
  output cmos_clk_en;
  output [23:0]capture_data;
  output vsync;
endmodule
