// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 19 21:56:46 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_raw_colorbar_gen_0_0 -prefix
//               design_1_raw_colorbar_gen_0_0_ design_1_raw_colorbar_gen_0_0_stub.v
// Design      : design_1_raw_colorbar_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "raw_colorbar_gen,Vivado 2018.3" *)
module design_1_raw_colorbar_gen_0_0(reset_n, clk, data_i, fv, lv, data, de, vsync, hsync, 
  x_cnt, y_cnt, h_cnt, v_cnt, ready)
/* synthesis syn_black_box black_box_pad_pin="reset_n,clk,data_i[9:0],fv,lv,data[9:0],de,vsync,hsync,x_cnt[11:0],y_cnt[11:0],h_cnt[11:0],v_cnt[11:0],ready" */;
  input reset_n;
  input clk;
  input [9:0]data_i;
  output fv;
  output lv;
  output [9:0]data;
  output de;
  output vsync;
  output hsync;
  output [11:0]x_cnt;
  output [11:0]y_cnt;
  output [11:0]h_cnt;
  output [11:0]v_cnt;
  output ready;
endmodule
