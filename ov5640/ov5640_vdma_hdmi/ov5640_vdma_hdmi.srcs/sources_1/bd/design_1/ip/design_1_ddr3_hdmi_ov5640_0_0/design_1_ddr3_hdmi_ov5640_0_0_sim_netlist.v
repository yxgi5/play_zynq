// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Apr 14 22:48:12 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/andy/workdir/microphase/20_ov5640_hdmi/ov5640_hdmi/ov5640_hdmi.srcs/sources_1/bd/design_1/ip/design_1_ddr3_hdmi_ov5640_0_0/design_1_ddr3_hdmi_ov5640_0_0_sim_netlist.v
// Design      : design_1_ddr3_hdmi_ov5640_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ddr3_hdmi_ov5640_0_0,ov5640_capture,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ov5640_capture,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ddr3_hdmi_ov5640_0_0
   (clk,
    rst,
    cmos_scl,
    cmos_sda,
    cmos_pclk,
    cmos_vsync,
    cmos_href,
    cmos_rst_n,
    cmos_data,
    pclk,
    data_active,
    cmos_clk_en,
    capture_data,
    vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  output cmos_scl;
  inout cmos_sda;
  input cmos_pclk;
  input cmos_vsync;
  input cmos_href;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmos_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmos_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cmos_rst_n;
  input [9:0]cmos_data;
  output pclk;
  output data_active;
  output cmos_clk_en;
  output [23:0]capture_data;
  output vsync;

  wire \<const1> ;
  wire [23:3]\^capture_data ;
  wire clk;
  wire cmos_clk_en;
  wire [9:0]cmos_data;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_scl;
  wire cmos_sda;
  wire cmos_vsync;
  wire rst;

  assign capture_data[23:22] = \^capture_data [23:22];
  assign capture_data[21:19] = \^capture_data [18:16];
  assign capture_data[18:10] = \^capture_data [18:10];
  assign capture_data[9:8] = \^capture_data [11:10];
  assign capture_data[7:3] = \^capture_data [7:3];
  assign capture_data[2:0] = \^capture_data [5:3];
  assign cmos_rst_n = \<const1> ;
  assign data_active = cmos_href;
  assign pclk = cmos_pclk;
  assign vsync = cmos_vsync;
  VCC VCC
       (.P(\<const1> ));
  design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture inst
       (.capture_data({\^capture_data [23:22],\^capture_data [18:10],\^capture_data [7:3]}),
        .clk(clk),
        .cmos_clk_en(cmos_clk_en),
        .cmos_data(cmos_data[9:2]),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_scl(cmos_scl),
        .cmos_sda(cmos_sda),
        .cmos_vsync(cmos_vsync),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "cmos_cfg" *) 
module design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg
   (cmos_scl,
    cmos_sda,
    rst,
    clk);
  output cmos_scl;
  inout cmos_sda;
  input rst;
  input clk;

  wire cfg_done_i_1_n_0;
  wire cfg_done_reg_n_0;
  wire clk;
  wire cmos_scl;
  wire cmos_sda;
  wire [24:1]cnt_wait;
  wire \cnt_wait[0]_i_1_n_0 ;
  wire \cnt_wait[24]_i_1_n_0 ;
  wire \cnt_wait[24]_i_3_n_0 ;
  wire \cnt_wait[24]_i_4_n_0 ;
  wire \cnt_wait[24]_i_5_n_0 ;
  wire \cnt_wait[24]_i_7_n_0 ;
  wire \cnt_wait[24]_i_8_n_0 ;
  wire \cnt_wait[24]_i_9_n_0 ;
  wire \cnt_wait_reg[12]_i_2_n_0 ;
  wire \cnt_wait_reg[12]_i_2_n_1 ;
  wire \cnt_wait_reg[12]_i_2_n_2 ;
  wire \cnt_wait_reg[12]_i_2_n_3 ;
  wire \cnt_wait_reg[16]_i_2_n_0 ;
  wire \cnt_wait_reg[16]_i_2_n_1 ;
  wire \cnt_wait_reg[16]_i_2_n_2 ;
  wire \cnt_wait_reg[16]_i_2_n_3 ;
  wire \cnt_wait_reg[20]_i_2_n_0 ;
  wire \cnt_wait_reg[20]_i_2_n_1 ;
  wire \cnt_wait_reg[20]_i_2_n_2 ;
  wire \cnt_wait_reg[20]_i_2_n_3 ;
  wire \cnt_wait_reg[24]_i_6_n_1 ;
  wire \cnt_wait_reg[24]_i_6_n_2 ;
  wire \cnt_wait_reg[24]_i_6_n_3 ;
  wire \cnt_wait_reg[4]_i_2_n_0 ;
  wire \cnt_wait_reg[4]_i_2_n_1 ;
  wire \cnt_wait_reg[4]_i_2_n_2 ;
  wire \cnt_wait_reg[4]_i_2_n_3 ;
  wire \cnt_wait_reg[8]_i_2_n_0 ;
  wire \cnt_wait_reg[8]_i_2_n_1 ;
  wire \cnt_wait_reg[8]_i_2_n_2 ;
  wire \cnt_wait_reg[8]_i_2_n_3 ;
  wire \cnt_wait_reg_n_0_[0] ;
  wire \cnt_wait_reg_n_0_[10] ;
  wire \cnt_wait_reg_n_0_[11] ;
  wire \cnt_wait_reg_n_0_[12] ;
  wire \cnt_wait_reg_n_0_[13] ;
  wire \cnt_wait_reg_n_0_[14] ;
  wire \cnt_wait_reg_n_0_[15] ;
  wire \cnt_wait_reg_n_0_[16] ;
  wire \cnt_wait_reg_n_0_[17] ;
  wire \cnt_wait_reg_n_0_[18] ;
  wire \cnt_wait_reg_n_0_[19] ;
  wire \cnt_wait_reg_n_0_[1] ;
  wire \cnt_wait_reg_n_0_[20] ;
  wire \cnt_wait_reg_n_0_[21] ;
  wire \cnt_wait_reg_n_0_[22] ;
  wire \cnt_wait_reg_n_0_[23] ;
  wire \cnt_wait_reg_n_0_[24] ;
  wire \cnt_wait_reg_n_0_[2] ;
  wire \cnt_wait_reg_n_0_[3] ;
  wire \cnt_wait_reg_n_0_[4] ;
  wire \cnt_wait_reg_n_0_[5] ;
  wire \cnt_wait_reg_n_0_[6] ;
  wire \cnt_wait_reg_n_0_[7] ;
  wire \cnt_wait_reg_n_0_[8] ;
  wire \cnt_wait_reg_n_0_[9] ;
  wire [24:1]data0;
  wire [7:7]dev_addr;
  wire inst_sccb_driver_n_1;
  wire inst_sccb_driver_n_2;
  wire inst_sccb_driver_n_3;
  wire inst_sccb_driver_n_4;
  wire \lut_data[0]_i_10_n_0 ;
  wire \lut_data[0]_i_11_n_0 ;
  wire \lut_data[0]_i_12_n_0 ;
  wire \lut_data[0]_i_1_n_0 ;
  wire \lut_data[0]_i_3_n_0 ;
  wire \lut_data[0]_i_5_n_0 ;
  wire \lut_data[0]_i_6_n_0 ;
  wire \lut_data[0]_i_7_n_0 ;
  wire \lut_data[0]_i_9_n_0 ;
  wire \lut_data[10]_i_1_n_0 ;
  wire \lut_data[10]_i_2_n_0 ;
  wire \lut_data[10]_i_3_n_0 ;
  wire \lut_data[10]_i_4_n_0 ;
  wire \lut_data[10]_i_5_n_0 ;
  wire \lut_data[10]_i_6_n_0 ;
  wire \lut_data[10]_i_7_n_0 ;
  wire \lut_data[10]_i_8_n_0 ;
  wire \lut_data[10]_i_9_n_0 ;
  wire \lut_data[11]_i_10_n_0 ;
  wire \lut_data[11]_i_11_n_0 ;
  wire \lut_data[11]_i_12_n_0 ;
  wire \lut_data[11]_i_1_n_0 ;
  wire \lut_data[11]_i_2_n_0 ;
  wire \lut_data[11]_i_3_n_0 ;
  wire \lut_data[11]_i_7_n_0 ;
  wire \lut_data[11]_i_8_n_0 ;
  wire \lut_data[11]_i_9_n_0 ;
  wire \lut_data[12]_i_10_n_0 ;
  wire \lut_data[12]_i_11_n_0 ;
  wire \lut_data[12]_i_12_n_0 ;
  wire \lut_data[12]_i_13_n_0 ;
  wire \lut_data[12]_i_1_n_0 ;
  wire \lut_data[12]_i_2_n_0 ;
  wire \lut_data[12]_i_4_n_0 ;
  wire \lut_data[12]_i_5_n_0 ;
  wire \lut_data[12]_i_6_n_0 ;
  wire \lut_data[12]_i_7_n_0 ;
  wire \lut_data[13]_i_1_n_0 ;
  wire \lut_data[13]_i_2_n_0 ;
  wire \lut_data[13]_i_4_n_0 ;
  wire \lut_data[13]_i_5_n_0 ;
  wire \lut_data[13]_i_6_n_0 ;
  wire \lut_data[15]_i_1_n_0 ;
  wire \lut_data[15]_i_2_n_0 ;
  wire \lut_data[15]_i_3_n_0 ;
  wire \lut_data[15]_i_4_n_0 ;
  wire \lut_data[16]_i_10_n_0 ;
  wire \lut_data[16]_i_11_n_0 ;
  wire \lut_data[16]_i_1_n_0 ;
  wire \lut_data[16]_i_2_n_0 ;
  wire \lut_data[16]_i_4_n_0 ;
  wire \lut_data[16]_i_5_n_0 ;
  wire \lut_data[16]_i_6_n_0 ;
  wire \lut_data[16]_i_7_n_0 ;
  wire \lut_data[16]_i_8_n_0 ;
  wire \lut_data[16]_i_9_n_0 ;
  wire \lut_data[17]_i_1_n_0 ;
  wire \lut_data[17]_i_3_n_0 ;
  wire \lut_data[17]_i_4_n_0 ;
  wire \lut_data[17]_i_5_n_0 ;
  wire \lut_data[17]_i_6_n_0 ;
  wire \lut_data[17]_i_7_n_0 ;
  wire \lut_data[18]_i_10_n_0 ;
  wire \lut_data[18]_i_11_n_0 ;
  wire \lut_data[18]_i_1_n_0 ;
  wire \lut_data[18]_i_2_n_0 ;
  wire \lut_data[18]_i_3_n_0 ;
  wire \lut_data[18]_i_4_n_0 ;
  wire \lut_data[18]_i_6_n_0 ;
  wire \lut_data[18]_i_8_n_0 ;
  wire \lut_data[18]_i_9_n_0 ;
  wire \lut_data[19]_i_1_n_0 ;
  wire \lut_data[19]_i_2_n_0 ;
  wire \lut_data[19]_i_3_n_0 ;
  wire \lut_data[19]_i_4_n_0 ;
  wire \lut_data[19]_i_5_n_0 ;
  wire \lut_data[1]_i_10_n_0 ;
  wire \lut_data[1]_i_11_n_0 ;
  wire \lut_data[1]_i_12_n_0 ;
  wire \lut_data[1]_i_13_n_0 ;
  wire \lut_data[1]_i_14_n_0 ;
  wire \lut_data[1]_i_1_n_0 ;
  wire \lut_data[1]_i_2_n_0 ;
  wire \lut_data[1]_i_4_n_0 ;
  wire \lut_data[1]_i_6_n_0 ;
  wire \lut_data[1]_i_8_n_0 ;
  wire \lut_data[1]_i_9_n_0 ;
  wire \lut_data[20]_i_1_n_0 ;
  wire \lut_data[20]_i_2_n_0 ;
  wire \lut_data[20]_i_3_n_0 ;
  wire \lut_data[21]_i_1_n_0 ;
  wire \lut_data[21]_i_2_n_0 ;
  wire \lut_data[21]_i_3_n_0 ;
  wire \lut_data[22]_i_1_n_0 ;
  wire \lut_data[22]_i_2_n_0 ;
  wire \lut_data[22]_i_3_n_0 ;
  wire \lut_data[2]_i_10_n_0 ;
  wire \lut_data[2]_i_11_n_0 ;
  wire \lut_data[2]_i_12_n_0 ;
  wire \lut_data[2]_i_1_n_0 ;
  wire \lut_data[2]_i_2_n_0 ;
  wire \lut_data[2]_i_4_n_0 ;
  wire \lut_data[2]_i_6_n_0 ;
  wire \lut_data[2]_i_7_n_0 ;
  wire \lut_data[2]_i_8_n_0 ;
  wire \lut_data[2]_i_9_n_0 ;
  wire \lut_data[31]_i_2_n_0 ;
  wire \lut_data[3]_i_10_n_0 ;
  wire \lut_data[3]_i_11_n_0 ;
  wire \lut_data[3]_i_1_n_0 ;
  wire \lut_data[3]_i_3_n_0 ;
  wire \lut_data[3]_i_6_n_0 ;
  wire \lut_data[3]_i_7_n_0 ;
  wire \lut_data[3]_i_8_n_0 ;
  wire \lut_data[3]_i_9_n_0 ;
  wire \lut_data[4]_i_10_n_0 ;
  wire \lut_data[4]_i_11_n_0 ;
  wire \lut_data[4]_i_12_n_0 ;
  wire \lut_data[4]_i_1_n_0 ;
  wire \lut_data[4]_i_3_n_0 ;
  wire \lut_data[4]_i_5_n_0 ;
  wire \lut_data[4]_i_6_n_0 ;
  wire \lut_data[4]_i_7_n_0 ;
  wire \lut_data[4]_i_8_n_0 ;
  wire \lut_data[4]_i_9_n_0 ;
  wire \lut_data[5]_i_10_n_0 ;
  wire \lut_data[5]_i_11_n_0 ;
  wire \lut_data[5]_i_12_n_0 ;
  wire \lut_data[5]_i_1_n_0 ;
  wire \lut_data[5]_i_2_n_0 ;
  wire \lut_data[5]_i_4_n_0 ;
  wire \lut_data[5]_i_7_n_0 ;
  wire \lut_data[5]_i_8_n_0 ;
  wire \lut_data[5]_i_9_n_0 ;
  wire \lut_data[6]_i_10_n_0 ;
  wire \lut_data[6]_i_12_n_0 ;
  wire \lut_data[6]_i_13_n_0 ;
  wire \lut_data[6]_i_1_n_0 ;
  wire \lut_data[6]_i_4_n_0 ;
  wire \lut_data[6]_i_5_n_0 ;
  wire \lut_data[6]_i_6_n_0 ;
  wire \lut_data[6]_i_7_n_0 ;
  wire \lut_data[6]_i_8_n_0 ;
  wire \lut_data[6]_i_9_n_0 ;
  wire \lut_data[7]_i_10_n_0 ;
  wire \lut_data[7]_i_1_n_0 ;
  wire \lut_data[7]_i_3_n_0 ;
  wire \lut_data[7]_i_4_n_0 ;
  wire \lut_data[7]_i_5_n_0 ;
  wire \lut_data[7]_i_6_n_0 ;
  wire \lut_data[7]_i_7_n_0 ;
  wire \lut_data[7]_i_9_n_0 ;
  wire \lut_data[8]_i_10_n_0 ;
  wire \lut_data[8]_i_11_n_0 ;
  wire \lut_data[8]_i_12_n_0 ;
  wire \lut_data[8]_i_1_n_0 ;
  wire \lut_data[8]_i_2_n_0 ;
  wire \lut_data[8]_i_3_n_0 ;
  wire \lut_data[8]_i_4_n_0 ;
  wire \lut_data[8]_i_6_n_0 ;
  wire \lut_data[8]_i_7_n_0 ;
  wire \lut_data[8]_i_8_n_0 ;
  wire \lut_data[8]_i_9_n_0 ;
  wire \lut_data[9]_i_10_n_0 ;
  wire \lut_data[9]_i_11_n_0 ;
  wire \lut_data[9]_i_12_n_0 ;
  wire \lut_data[9]_i_1_n_0 ;
  wire \lut_data[9]_i_3_n_0 ;
  wire \lut_data[9]_i_5_n_0 ;
  wire \lut_data[9]_i_6_n_0 ;
  wire \lut_data[9]_i_7_n_0 ;
  wire \lut_data[9]_i_8_n_0 ;
  wire \lut_data[9]_i_9_n_0 ;
  wire \lut_data_reg[0]_i_2_n_0 ;
  wire \lut_data_reg[0]_i_4_n_0 ;
  wire \lut_data_reg[0]_i_8_n_0 ;
  wire \lut_data_reg[11]_i_4_n_0 ;
  wire \lut_data_reg[11]_i_5_n_0 ;
  wire \lut_data_reg[11]_i_6_n_0 ;
  wire \lut_data_reg[12]_i_3_n_0 ;
  wire \lut_data_reg[12]_i_8_n_0 ;
  wire \lut_data_reg[12]_i_9_n_0 ;
  wire \lut_data_reg[13]_i_3_n_0 ;
  wire \lut_data_reg[16]_i_3_n_0 ;
  wire \lut_data_reg[17]_i_2_n_0 ;
  wire \lut_data_reg[18]_i_5_n_0 ;
  wire \lut_data_reg[18]_i_7_n_0 ;
  wire \lut_data_reg[1]_i_3_n_0 ;
  wire \lut_data_reg[1]_i_5_n_0 ;
  wire \lut_data_reg[1]_i_7_n_0 ;
  wire \lut_data_reg[2]_i_3_n_0 ;
  wire \lut_data_reg[2]_i_5_n_0 ;
  wire \lut_data_reg[3]_i_2_n_0 ;
  wire \lut_data_reg[3]_i_4_n_0 ;
  wire \lut_data_reg[3]_i_5_n_0 ;
  wire \lut_data_reg[4]_i_2_n_0 ;
  wire \lut_data_reg[4]_i_4_n_0 ;
  wire \lut_data_reg[5]_i_3_n_0 ;
  wire \lut_data_reg[5]_i_5_n_0 ;
  wire \lut_data_reg[5]_i_6_n_0 ;
  wire \lut_data_reg[6]_i_11_n_0 ;
  wire \lut_data_reg[6]_i_2_n_0 ;
  wire \lut_data_reg[6]_i_3_n_0 ;
  wire \lut_data_reg[7]_i_2_n_0 ;
  wire \lut_data_reg[7]_i_8_n_0 ;
  wire \lut_data_reg[8]_i_5_n_0 ;
  wire \lut_data_reg[9]_i_2_n_0 ;
  wire \lut_data_reg[9]_i_4_n_0 ;
  wire \lut_data_reg_n_0_[0] ;
  wire \lut_data_reg_n_0_[1] ;
  wire \lut_data_reg_n_0_[2] ;
  wire \lut_data_reg_n_0_[3] ;
  wire \lut_data_reg_n_0_[4] ;
  wire \lut_data_reg_n_0_[5] ;
  wire \lut_data_reg_n_0_[6] ;
  wire \lut_data_reg_n_0_[7] ;
  wire [15:0]mem_addr;
  wire [8:0]p_0_in__1;
  wire ready_i_1_n_0;
  wire ready_i_2_n_0;
  wire ready_i_3_n_0;
  wire ready_i_4_n_0;
  wire ready_i_5_n_0;
  wire ready_i_6_n_0;
  wire ready_i_7_n_0;
  wire ready_i_8_n_0;
  wire ready_reg_n_0;
  wire rst;
  wire start;
  wire start_i_1_n_0;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire wr_index1;
  wire \wr_index[8]_i_3_n_0 ;
  wire [8:0]wr_index_reg__0;
  wire wr_req;
  wire wr_req0;
  wire [3:3]\NLW_cnt_wait_reg[24]_i_6_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    cfg_done_i_1
       (.I0(dev_addr),
        .I1(cfg_done_reg_n_0),
        .O(cfg_done_i_1_n_0));
  FDRE cfg_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(cfg_done_i_1_n_0),
        .Q(cfg_done_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \cnt_wait[0]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(\cnt_wait_reg_n_0_[0] ),
        .O(\cnt_wait[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[10]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[10]),
        .O(cnt_wait[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[11]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[11]),
        .O(cnt_wait[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[12]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[12]),
        .O(cnt_wait[12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[13]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[13]),
        .O(cnt_wait[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[14]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[14]),
        .O(cnt_wait[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[15]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[15]),
        .O(cnt_wait[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[16]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[16]),
        .O(cnt_wait[16]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[17]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[17]),
        .O(cnt_wait[17]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[18]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[18]),
        .O(cnt_wait[18]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[19]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[19]),
        .O(cnt_wait[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[1]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[1]),
        .O(cnt_wait[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[20]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[20]),
        .O(cnt_wait[20]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[21]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[21]),
        .O(cnt_wait[21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[22]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[22]),
        .O(cnt_wait[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[23]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[23]),
        .O(cnt_wait[23]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \cnt_wait[24]_i_1 
       (.I0(rst),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\cnt_wait[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[24]_i_2 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[24]),
        .O(cnt_wait[24]));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \cnt_wait[24]_i_3 
       (.I0(\cnt_wait_reg_n_0_[9] ),
        .I1(\cnt_wait[24]_i_7_n_0 ),
        .I2(\cnt_wait_reg_n_0_[1] ),
        .I3(\cnt_wait_reg_n_0_[0] ),
        .I4(\cnt_wait_reg_n_0_[3] ),
        .I5(\cnt_wait_reg_n_0_[2] ),
        .O(\cnt_wait[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_wait[24]_i_4 
       (.I0(\cnt_wait_reg_n_0_[13] ),
        .I1(\cnt_wait_reg_n_0_[15] ),
        .I2(\cnt_wait_reg_n_0_[7] ),
        .I3(\cnt_wait_reg_n_0_[6] ),
        .I4(\cnt_wait[24]_i_8_n_0 ),
        .O(\cnt_wait[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \cnt_wait[24]_i_5 
       (.I0(\cnt_wait_reg_n_0_[23] ),
        .I1(\cnt_wait_reg_n_0_[5] ),
        .I2(\cnt_wait_reg_n_0_[4] ),
        .I3(\cnt_wait_reg_n_0_[14] ),
        .I4(\cnt_wait[24]_i_9_n_0 ),
        .O(\cnt_wait[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_wait[24]_i_7 
       (.I0(\cnt_wait_reg_n_0_[18] ),
        .I1(\cnt_wait_reg_n_0_[19] ),
        .I2(\cnt_wait_reg_n_0_[16] ),
        .I3(\cnt_wait_reg_n_0_[17] ),
        .O(\cnt_wait[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_wait[24]_i_8 
       (.I0(\cnt_wait_reg_n_0_[21] ),
        .I1(\cnt_wait_reg_n_0_[20] ),
        .I2(\cnt_wait_reg_n_0_[24] ),
        .I3(\cnt_wait_reg_n_0_[22] ),
        .O(\cnt_wait[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_wait[24]_i_9 
       (.I0(\cnt_wait_reg_n_0_[10] ),
        .I1(\cnt_wait_reg_n_0_[11] ),
        .I2(\cnt_wait_reg_n_0_[8] ),
        .I3(\cnt_wait_reg_n_0_[12] ),
        .O(\cnt_wait[24]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[2]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[2]),
        .O(cnt_wait[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[3]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[3]),
        .O(cnt_wait[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[4]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[4]),
        .O(cnt_wait[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[5]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[5]),
        .O(cnt_wait[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[6]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[6]),
        .O(cnt_wait[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[7]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[7]),
        .O(cnt_wait[7]));
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[8]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[8]),
        .O(cnt_wait[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_wait[9]_i_1 
       (.I0(\cnt_wait[24]_i_3_n_0 ),
        .I1(\cnt_wait[24]_i_4_n_0 ),
        .I2(\cnt_wait[24]_i_5_n_0 ),
        .I3(data0[9]),
        .O(cnt_wait[9]));
  FDRE \cnt_wait_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_wait[0]_i_1_n_0 ),
        .Q(\cnt_wait_reg_n_0_[0] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[10]),
        .Q(\cnt_wait_reg_n_0_[10] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[11]),
        .Q(\cnt_wait_reg_n_0_[11] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[12]),
        .Q(\cnt_wait_reg_n_0_[12] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  CARRY4 \cnt_wait_reg[12]_i_2 
       (.CI(\cnt_wait_reg[8]_i_2_n_0 ),
        .CO({\cnt_wait_reg[12]_i_2_n_0 ,\cnt_wait_reg[12]_i_2_n_1 ,\cnt_wait_reg[12]_i_2_n_2 ,\cnt_wait_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_wait_reg_n_0_[12] ,\cnt_wait_reg_n_0_[11] ,\cnt_wait_reg_n_0_[10] ,\cnt_wait_reg_n_0_[9] }));
  FDRE \cnt_wait_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[13]),
        .Q(\cnt_wait_reg_n_0_[13] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[14]),
        .Q(\cnt_wait_reg_n_0_[14] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[15]),
        .Q(\cnt_wait_reg_n_0_[15] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[16]),
        .Q(\cnt_wait_reg_n_0_[16] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  CARRY4 \cnt_wait_reg[16]_i_2 
       (.CI(\cnt_wait_reg[12]_i_2_n_0 ),
        .CO({\cnt_wait_reg[16]_i_2_n_0 ,\cnt_wait_reg[16]_i_2_n_1 ,\cnt_wait_reg[16]_i_2_n_2 ,\cnt_wait_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_wait_reg_n_0_[16] ,\cnt_wait_reg_n_0_[15] ,\cnt_wait_reg_n_0_[14] ,\cnt_wait_reg_n_0_[13] }));
  FDRE \cnt_wait_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[17]),
        .Q(\cnt_wait_reg_n_0_[17] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[18]),
        .Q(\cnt_wait_reg_n_0_[18] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[19]),
        .Q(\cnt_wait_reg_n_0_[19] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[1]),
        .Q(\cnt_wait_reg_n_0_[1] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[20]),
        .Q(\cnt_wait_reg_n_0_[20] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  CARRY4 \cnt_wait_reg[20]_i_2 
       (.CI(\cnt_wait_reg[16]_i_2_n_0 ),
        .CO({\cnt_wait_reg[20]_i_2_n_0 ,\cnt_wait_reg[20]_i_2_n_1 ,\cnt_wait_reg[20]_i_2_n_2 ,\cnt_wait_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\cnt_wait_reg_n_0_[20] ,\cnt_wait_reg_n_0_[19] ,\cnt_wait_reg_n_0_[18] ,\cnt_wait_reg_n_0_[17] }));
  FDRE \cnt_wait_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[21]),
        .Q(\cnt_wait_reg_n_0_[21] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[22]),
        .Q(\cnt_wait_reg_n_0_[22] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[23]),
        .Q(\cnt_wait_reg_n_0_[23] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[24]),
        .Q(\cnt_wait_reg_n_0_[24] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  CARRY4 \cnt_wait_reg[24]_i_6 
       (.CI(\cnt_wait_reg[20]_i_2_n_0 ),
        .CO({\NLW_cnt_wait_reg[24]_i_6_CO_UNCONNECTED [3],\cnt_wait_reg[24]_i_6_n_1 ,\cnt_wait_reg[24]_i_6_n_2 ,\cnt_wait_reg[24]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\cnt_wait_reg_n_0_[24] ,\cnt_wait_reg_n_0_[23] ,\cnt_wait_reg_n_0_[22] ,\cnt_wait_reg_n_0_[21] }));
  FDRE \cnt_wait_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[2]),
        .Q(\cnt_wait_reg_n_0_[2] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[3]),
        .Q(\cnt_wait_reg_n_0_[3] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[4]),
        .Q(\cnt_wait_reg_n_0_[4] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  CARRY4 \cnt_wait_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_wait_reg[4]_i_2_n_0 ,\cnt_wait_reg[4]_i_2_n_1 ,\cnt_wait_reg[4]_i_2_n_2 ,\cnt_wait_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_wait_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_wait_reg_n_0_[4] ,\cnt_wait_reg_n_0_[3] ,\cnt_wait_reg_n_0_[2] ,\cnt_wait_reg_n_0_[1] }));
  FDRE \cnt_wait_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[5]),
        .Q(\cnt_wait_reg_n_0_[5] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[6]),
        .Q(\cnt_wait_reg_n_0_[6] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[7]),
        .Q(\cnt_wait_reg_n_0_[7] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  FDRE \cnt_wait_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[8]),
        .Q(\cnt_wait_reg_n_0_[8] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  CARRY4 \cnt_wait_reg[8]_i_2 
       (.CI(\cnt_wait_reg[4]_i_2_n_0 ),
        .CO({\cnt_wait_reg[8]_i_2_n_0 ,\cnt_wait_reg[8]_i_2_n_1 ,\cnt_wait_reg[8]_i_2_n_2 ,\cnt_wait_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_wait_reg_n_0_[8] ,\cnt_wait_reg_n_0_[7] ,\cnt_wait_reg_n_0_[6] ,\cnt_wait_reg_n_0_[5] }));
  FDRE \cnt_wait_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_wait[9]),
        .Q(\cnt_wait_reg_n_0_[9] ),
        .R(\cnt_wait[24]_i_1_n_0 ));
  design_1_ddr3_hdmi_ov5640_0_0_sccb_driver inst_sccb_driver
       (.E(inst_sccb_driver_n_1),
        .Q({dev_addr,mem_addr[15:7],mem_addr[5:0],\lut_data_reg_n_0_[7] ,\lut_data_reg_n_0_[6] ,\lut_data_reg_n_0_[5] ,\lut_data_reg_n_0_[4] ,\lut_data_reg_n_0_[3] ,\lut_data_reg_n_0_[2] ,\lut_data_reg_n_0_[1] ,\lut_data_reg_n_0_[0] }),
        .clk(clk),
        .cmos_scl(cmos_scl),
        .cmos_sda(cmos_sda),
        .rst(rst),
        .start(start),
        .state(state),
        .\state_reg[2] (cfg_done_reg_n_0),
        .\state_reg[2]_0 (ready_reg_n_0),
        .wr_done_reg_0(inst_sccb_driver_n_3),
        .wr_done_reg_1(inst_sccb_driver_n_4),
        .wr_req(wr_req),
        .wr_req0(wr_req0),
        .wr_req_reg(inst_sccb_driver_n_2));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \lut_data[0]_i_1 
       (.I0(\lut_data_reg[0]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data[0]_i_3_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data_reg[0]_i_4_n_0 ),
        .I5(\lut_data[0]_i_5_n_0 ),
        .O(\lut_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1044440140724441)) 
    \lut_data[0]_i_10 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h880080C3AE000000)) 
    \lut_data[0]_i_11 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000008)) 
    \lut_data[0]_i_12 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008009)) 
    \lut_data[0]_i_3 
       (.I0(wr_index_reg__0[2]),
        .I1(\lut_data[1]_i_8_n_0 ),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[3]),
        .I5(\lut_data_reg[0]_i_8_n_0 ),
        .O(\lut_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010400400000)) 
    \lut_data[0]_i_5 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000404040244000A)) 
    \lut_data[0]_i_6 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0540804B0001011)) 
    \lut_data[0]_i_7 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0040008040408000)) 
    \lut_data[0]_i_9 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAE)) 
    \lut_data[10]_i_1 
       (.I0(\lut_data[10]_i_2_n_0 ),
        .I1(\lut_data[10]_i_3_n_0 ),
        .I2(wr_index_reg__0[1]),
        .I3(\lut_data[10]_i_4_n_0 ),
        .I4(wr_index_reg__0[8]),
        .I5(\lut_data[10]_i_5_n_0 ),
        .O(\lut_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800080020100000A)) 
    \lut_data[10]_i_2 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22105A501A51AA10)) 
    \lut_data[10]_i_3 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4848450544454644)) 
    \lut_data[10]_i_4 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \lut_data[10]_i_5 
       (.I0(\lut_data[10]_i_6_n_0 ),
        .I1(\lut_data[10]_i_7_n_0 ),
        .I2(wr_index_reg__0[0]),
        .I3(\lut_data[10]_i_8_n_0 ),
        .I4(wr_index_reg__0[7]),
        .I5(\lut_data[10]_i_9_n_0 ),
        .O(\lut_data[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0855000000A045A2)) 
    \lut_data[10]_i_6 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0040600000000580)) 
    \lut_data[10]_i_7 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0FA0105000005050)) 
    \lut_data[10]_i_8 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0005400001000000)) 
    \lut_data[10]_i_9 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBB8FFFFFFFF)) 
    \lut_data[11]_i_1 
       (.I0(\lut_data[11]_i_2_n_0 ),
        .I1(wr_index_reg__0[0]),
        .I2(\lut_data[11]_i_3_n_0 ),
        .I3(\lut_data_reg[11]_i_4_n_0 ),
        .I4(wr_index_reg__0[8]),
        .I5(\lut_data_reg[11]_i_5_n_0 ),
        .O(\lut_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7376F0F13678D455)) 
    \lut_data[11]_i_10 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h02800080)) 
    \lut_data[11]_i_11 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .O(\lut_data[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200A20)) 
    \lut_data[11]_i_12 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \lut_data[11]_i_2 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[1]),
        .I5(\lut_data_reg[11]_i_6_n_0 ),
        .O(\lut_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0212100012121002)) 
    \lut_data[11]_i_3 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \lut_data[11]_i_7 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .O(\lut_data[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8002800080088000)) 
    \lut_data[11]_i_8 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7EF577FFF75577FE)) 
    \lut_data[11]_i_9 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \lut_data[12]_i_1 
       (.I0(\lut_data[12]_i_2_n_0 ),
        .I1(\lut_data_reg[12]_i_3_n_0 ),
        .I2(wr_index_reg__0[8]),
        .I3(\lut_data[12]_i_4_n_0 ),
        .I4(wr_index_reg__0[0]),
        .I5(\lut_data[12]_i_5_n_0 ),
        .O(\lut_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000800000800000)) 
    \lut_data[12]_i_10 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0602060204000000)) 
    \lut_data[12]_i_11 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000408000004)) 
    \lut_data[12]_i_12 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h511BA44050000000)) 
    \lut_data[12]_i_13 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8012882888080828)) 
    \lut_data[12]_i_2 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \lut_data[12]_i_4 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[5]),
        .I5(\lut_data_reg[12]_i_8_n_0 ),
        .O(\lut_data[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \lut_data[12]_i_5 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[2]),
        .I5(\lut_data_reg[12]_i_9_n_0 ),
        .O(\lut_data[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h10221001006E0110)) 
    \lut_data[12]_i_6 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0011000095000080)) 
    \lut_data[12]_i_7 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFF8FFF80)) 
    \lut_data[13]_i_1 
       (.I0(\lut_data[13]_i_2_n_0 ),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[8]),
        .I4(\lut_data_reg[13]_i_3_n_0 ),
        .O(\lut_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCA44884488008A40)) 
    \lut_data[13]_i_2 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[0]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8082)) 
    \lut_data[13]_i_4 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[1]),
        .O(\lut_data[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000700000FC0)) 
    \lut_data[13]_i_5 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[0]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000000000)) 
    \lut_data[13]_i_6 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[0]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \lut_data[15]_i_1 
       (.I0(wr_index_reg__0[8]),
        .I1(\lut_data[15]_i_2_n_0 ),
        .I2(\lut_data[15]_i_3_n_0 ),
        .O(\lut_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h044404440444C444)) 
    \lut_data[15]_i_2 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(\lut_data[15]_i_4_n_0 ),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[1]),
        .I5(wr_index_reg__0[0]),
        .O(\lut_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \lut_data[15]_i_3 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lut_data[15]_i_4 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[3]),
        .O(\lut_data[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEAFF)) 
    \lut_data[16]_i_1 
       (.I0(\lut_data[16]_i_2_n_0 ),
        .I1(wr_index_reg__0[7]),
        .I2(\lut_data_reg[16]_i_3_n_0 ),
        .I3(wr_index_reg__0[6]),
        .I4(\lut_data[16]_i_4_n_0 ),
        .O(\lut_data[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \lut_data[16]_i_10 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[1]),
        .O(\lut_data[16]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lut_data[16]_i_11 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[6]),
        .O(\lut_data[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \lut_data[16]_i_2 
       (.I0(wr_index_reg__0[6]),
        .I1(\lut_data[16]_i_5_n_0 ),
        .I2(wr_index_reg__0[8]),
        .I3(\lut_data[16]_i_6_n_0 ),
        .I4(\lut_data[16]_i_7_n_0 ),
        .I5(\lut_data[16]_i_8_n_0 ),
        .O(\lut_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFBFF7BFDF95)) 
    \lut_data[16]_i_4 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[0]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \lut_data[16]_i_5 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .O(\lut_data[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00AA8A0022AA8A00)) 
    \lut_data[16]_i_6 
       (.I0(\lut_data[16]_i_11_n_0 ),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8088000000022222)) 
    \lut_data[16]_i_7 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h02F00F0000000000)) 
    \lut_data[16]_i_8 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[3]),
        .I5(\lut_data[6]_i_10_n_0 ),
        .O(\lut_data[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000040800000)) 
    \lut_data[16]_i_9 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEEEFEEEFEEE)) 
    \lut_data[17]_i_1 
       (.I0(wr_index_reg__0[8]),
        .I1(\lut_data_reg[17]_i_2_n_0 ),
        .I2(\lut_data[17]_i_3_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(wr_index_reg__0[5]),
        .I5(\lut_data[17]_i_4_n_0 ),
        .O(\lut_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00006F2C)) 
    \lut_data[17]_i_3 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[2]),
        .I4(\lut_data[17]_i_7_n_0 ),
        .O(\lut_data[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3004B00000C480C3)) 
    \lut_data[17]_i_4 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h40058A0062058A10)) 
    \lut_data[17]_i_5 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0A09554000024A1)) 
    \lut_data[17]_i_6 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hDDFDFFF1)) 
    \lut_data[17]_i_7 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[5]),
        .O(\lut_data[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \lut_data[18]_i_1 
       (.I0(\lut_data[18]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data[18]_i_3_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data[18]_i_4_n_0 ),
        .O(\lut_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0110505001100000)) 
    \lut_data[18]_i_10 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000800888)) 
    \lut_data[18]_i_11 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80100110)) 
    \lut_data[18]_i_2 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .I5(\lut_data_reg[18]_i_5_n_0 ),
        .O(\lut_data[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hA2000000)) 
    \lut_data[18]_i_3 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[2]),
        .I4(\lut_data[18]_i_6_n_0 ),
        .O(\lut_data[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \lut_data[18]_i_4 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[4]),
        .I5(\lut_data_reg[18]_i_7_n_0 ),
        .O(\lut_data[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h03ABC0AA)) 
    \lut_data[18]_i_6 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[1]),
        .O(\lut_data[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5000505000410000)) 
    \lut_data[18]_i_8 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003000044000040)) 
    \lut_data[18]_i_9 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEEEEEEEEEE)) 
    \lut_data[19]_i_1 
       (.I0(\lut_data[19]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[4]),
        .I4(\lut_data[19]_i_3_n_0 ),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC2201010)) 
    \lut_data[19]_i_2 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(\lut_data[19]_i_4_n_0 ),
        .O(\lut_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40A8406444644444)) 
    \lut_data[19]_i_3 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[1]),
        .I5(wr_index_reg__0[0]),
        .O(\lut_data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4D7F30EC00000000)) 
    \lut_data[19]_i_4 
       (.I0(wr_index_reg__0[0]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[2]),
        .I5(\lut_data[19]_i_5_n_0 ),
        .O(\lut_data[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \lut_data[19]_i_5 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[7]),
        .O(\lut_data[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAAFE)) 
    \lut_data[1]_i_1 
       (.I0(\lut_data[1]_i_2_n_0 ),
        .I1(\lut_data_reg[1]_i_3_n_0 ),
        .I2(\lut_data[1]_i_4_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data_reg[1]_i_5_n_0 ),
        .I5(\lut_data[1]_i_6_n_0 ),
        .O(\lut_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00201E0001018080)) 
    \lut_data[1]_i_10 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h03001C472020208C)) 
    \lut_data[1]_i_11 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000201000057A00)) 
    \lut_data[1]_i_12 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8800C850A8050500)) 
    \lut_data[1]_i_13 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA008000000008200)) 
    \lut_data[1]_i_14 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    \lut_data[1]_i_2 
       (.I0(wr_index_reg__0[8]),
        .I1(\lut_data_reg[1]_i_7_n_0 ),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[4]),
        .I4(\lut_data[1]_i_8_n_0 ),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0008000C8000003)) 
    \lut_data[1]_i_4 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02A0224820100508)) 
    \lut_data[1]_i_6 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \lut_data[1]_i_8 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[7]),
        .O(\lut_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC30004C40008000B)) 
    \lut_data[1]_i_9 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABAAFAA)) 
    \lut_data[20]_i_1 
       (.I0(\lut_data[20]_i_2_n_0 ),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[0]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[2]),
        .I5(\lut_data[20]_i_3_n_0 ),
        .O(\lut_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hE7F50F3F)) 
    \lut_data[20]_i_2 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[4]),
        .O(\lut_data[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFDFFFFCF)) 
    \lut_data[20]_i_3 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[8]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[7]),
        .O(\lut_data[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFAABAAAB)) 
    \lut_data[21]_i_1 
       (.I0(wr_index_reg__0[8]),
        .I1(\lut_data[21]_i_2_n_0 ),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(\lut_data[21]_i_3_n_0 ),
        .O(\lut_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0CF000020000000)) 
    \lut_data[21]_i_2 
       (.I0(wr_index_reg__0[0]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDEDEDEE6E6EEEE)) 
    \lut_data[21]_i_3 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[0]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF6F6F6FFF6)) 
    \lut_data[22]_i_1 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[8]),
        .I3(\lut_data[22]_i_2_n_0 ),
        .I4(wr_index_reg__0[5]),
        .I5(\lut_data[22]_i_3_n_0 ),
        .O(\lut_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000080557F0000)) 
    \lut_data[22]_i_2 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[0]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC30CC30C880C0B0)) 
    \lut_data[22]_i_3 
       (.I0(wr_index_reg__0[0]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[1]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAAFE)) 
    \lut_data[2]_i_1 
       (.I0(\lut_data[2]_i_2_n_0 ),
        .I1(\lut_data_reg[2]_i_3_n_0 ),
        .I2(\lut_data[2]_i_4_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data_reg[2]_i_5_n_0 ),
        .I5(\lut_data[2]_i_6_n_0 ),
        .O(\lut_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004602024000)) 
    \lut_data[2]_i_10 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h828580A808000828)) 
    \lut_data[2]_i_11 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA0F050500040909F)) 
    \lut_data[2]_i_12 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBABFFFFBBFB)) 
    \lut_data[2]_i_2 
       (.I0(wr_index_reg__0[8]),
        .I1(\lut_data[2]_i_7_n_0 ),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[5]),
        .I5(\lut_data[2]_i_8_n_0 ),
        .O(\lut_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4418121810000000)) 
    \lut_data[2]_i_4 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0220180002400000)) 
    \lut_data[2]_i_6 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hEFFFBFEB)) 
    \lut_data[2]_i_7 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[1]),
        .O(\lut_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h77DFFFDF77FDFB5F)) 
    \lut_data[2]_i_8 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5111002051058094)) 
    \lut_data[2]_i_9 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[2]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lut_data[31]_i_1 
       (.I0(cfg_done_reg_n_0),
        .O(wr_index1));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \lut_data[31]_i_2 
       (.I0(wr_index_reg__0[8]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEFFFE)) 
    \lut_data[3]_i_1 
       (.I0(\lut_data_reg[3]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data[3]_i_3_n_0 ),
        .I3(\lut_data_reg[3]_i_4_n_0 ),
        .I4(wr_index_reg__0[0]),
        .I5(\lut_data_reg[3]_i_5_n_0 ),
        .O(\lut_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0005005B5805A10)) 
    \lut_data[3]_i_10 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000021210050212)) 
    \lut_data[3]_i_11 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0002010088000008)) 
    \lut_data[3]_i_3 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2200220000008404)) 
    \lut_data[3]_i_6 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[1]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA11400000006000)) 
    \lut_data[3]_i_7 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8808000000038C4C)) 
    \lut_data[3]_i_8 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF01144001504C700)) 
    \lut_data[3]_i_9 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \lut_data[4]_i_1 
       (.I0(\lut_data_reg[4]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data[4]_i_3_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data_reg[4]_i_4_n_0 ),
        .I5(\lut_data[4]_i_5_n_0 ),
        .O(\lut_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500040000151402)) 
    \lut_data[4]_i_10 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h033303032FC00200)) 
    \lut_data[4]_i_11 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h20020001000A9009)) 
    \lut_data[4]_i_12 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \lut_data[4]_i_3 
       (.I0(\lut_data[4]_i_8_n_0 ),
        .I1(\lut_data[4]_i_9_n_0 ),
        .I2(wr_index_reg__0[1]),
        .I3(\lut_data[4]_i_10_n_0 ),
        .O(\lut_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4400490801880584)) 
    \lut_data[4]_i_5 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000100000000010)) 
    \lut_data[4]_i_6 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8830000000000C)) 
    \lut_data[4]_i_7 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000520020000020)) 
    \lut_data[4]_i_8 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000900009100000)) 
    \lut_data[4]_i_9 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \lut_data[5]_i_1 
       (.I0(\lut_data[5]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data_reg[5]_i_3_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data[5]_i_4_n_0 ),
        .I5(\lut_data_reg[5]_i_5_n_0 ),
        .O(\lut_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000080)) 
    \lut_data[5]_i_10 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .O(\lut_data[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0208208404040004)) 
    \lut_data[5]_i_11 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC0008000C00C0C00)) 
    \lut_data[5]_i_12 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \lut_data[5]_i_2 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[4]),
        .I5(\lut_data_reg[5]_i_6_n_0 ),
        .O(\lut_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404044E00820000)) 
    \lut_data[5]_i_4 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20A22EA080C75730)) 
    \lut_data[5]_i_7 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004040000004000)) 
    \lut_data[5]_i_8 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1001221D00002210)) 
    \lut_data[5]_i_9 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEFFFE)) 
    \lut_data[6]_i_1 
       (.I0(\lut_data_reg[6]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data_reg[6]_i_3_n_0 ),
        .I3(\lut_data[6]_i_4_n_0 ),
        .I4(wr_index_reg__0[0]),
        .I5(\lut_data[6]_i_5_n_0 ),
        .O(\lut_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \lut_data[6]_i_10 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[6]),
        .O(\lut_data[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0044000055041104)) 
    \lut_data[6]_i_12 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008304045)) 
    \lut_data[6]_i_13 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010020000000200)) 
    \lut_data[6]_i_4 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22700000)) 
    \lut_data[6]_i_5 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[2]),
        .I4(\lut_data[6]_i_10_n_0 ),
        .I5(\lut_data_reg[6]_i_11_n_0 ),
        .O(\lut_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0040040000040000)) 
    \lut_data[6]_i_6 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0E8400000000008)) 
    \lut_data[6]_i_7 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[1]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0505000050000510)) 
    \lut_data[6]_i_8 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[7]),
        .O(\lut_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h002B000020000020)) 
    \lut_data[6]_i_9 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEFEEEEEEEF)) 
    \lut_data[7]_i_1 
       (.I0(\lut_data_reg[7]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data[7]_i_3_n_0 ),
        .I3(wr_index_reg__0[6]),
        .I4(wr_index_reg__0[0]),
        .I5(\lut_data[7]_i_4_n_0 ),
        .O(\lut_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A00800011440041)) 
    \lut_data[7]_i_10 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[6]),
        .O(\lut_data[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBFF65FFEDEDFFFFE)) 
    \lut_data[7]_i_3 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \lut_data[7]_i_4 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[2]),
        .I4(\lut_data[7]_i_7_n_0 ),
        .I5(\lut_data_reg[7]_i_8_n_0 ),
        .O(\lut_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000040000)) 
    \lut_data[7]_i_5 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA08000000000200)) 
    \lut_data[7]_i_6 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[7]),
        .I4(wr_index_reg__0[6]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lut_data[7]_i_7 
       (.I0(wr_index_reg__0[6]),
        .I1(wr_index_reg__0[7]),
        .O(\lut_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0050500000206200)) 
    \lut_data[7]_i_9 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEAE)) 
    \lut_data[8]_i_1 
       (.I0(\lut_data[8]_i_2_n_0 ),
        .I1(\lut_data[8]_i_3_n_0 ),
        .I2(wr_index_reg__0[0]),
        .I3(\lut_data[8]_i_4_n_0 ),
        .I4(\lut_data_reg[8]_i_5_n_0 ),
        .I5(\lut_data[8]_i_6_n_0 ),
        .O(\lut_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040000110400001)) 
    \lut_data[8]_i_10 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h01550000)) 
    \lut_data[8]_i_11 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .O(\lut_data[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFDF7DD5F)) 
    \lut_data[8]_i_12 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[2]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .O(\lut_data[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hABABEFABABABABAB)) 
    \lut_data[8]_i_2 
       (.I0(wr_index_reg__0[8]),
        .I1(wr_index_reg__0[6]),
        .I2(\lut_data[8]_i_7_n_0 ),
        .I3(wr_index_reg__0[4]),
        .I4(\lut_data[8]_i_8_n_0 ),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF80FF00FF80)) 
    \lut_data[8]_i_3 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[7]),
        .I3(\lut_data[8]_i_9_n_0 ),
        .I4(wr_index_reg__0[1]),
        .I5(\lut_data[8]_i_10_n_0 ),
        .O(\lut_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h231011105558AF58)) 
    \lut_data[8]_i_4 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80000000800C0C00)) 
    \lut_data[8]_i_6 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[5]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFFFFBFFFFBBB)) 
    \lut_data[8]_i_7 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \lut_data[8]_i_8 
       (.I0(wr_index_reg__0[7]),
        .I1(wr_index_reg__0[5]),
        .O(\lut_data[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h112020202320E120)) 
    \lut_data[8]_i_9 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[2]),
        .O(\lut_data[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \lut_data[9]_i_1 
       (.I0(\lut_data_reg[9]_i_2_n_0 ),
        .I1(wr_index_reg__0[8]),
        .I2(\lut_data[9]_i_3_n_0 ),
        .I3(wr_index_reg__0[0]),
        .I4(\lut_data_reg[9]_i_4_n_0 ),
        .I5(\lut_data[9]_i_5_n_0 ),
        .O(\lut_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444404444A020206)) 
    \lut_data[9]_i_10 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[3]),
        .O(\lut_data[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00008200)) 
    \lut_data[9]_i_11 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[5]),
        .I3(wr_index_reg__0[4]),
        .I4(wr_index_reg__0[6]),
        .O(\lut_data[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2030010044101919)) 
    \lut_data[9]_i_12 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[6]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[7]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55ABFFFF55AB0000)) 
    \lut_data[9]_i_3 
       (.I0(wr_index_reg__0[1]),
        .I1(\lut_data[9]_i_8_n_0 ),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[6]),
        .I4(\lut_data[9]_i_9_n_0 ),
        .I5(\lut_data[9]_i_10_n_0 ),
        .O(\lut_data[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010011000)) 
    \lut_data[9]_i_5 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[5]),
        .I4(wr_index_reg__0[3]),
        .I5(wr_index_reg__0[4]),
        .O(\lut_data[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00020A0020A020A2)) 
    \lut_data[9]_i_6 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[4]),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[5]),
        .O(\lut_data[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA08000009BB7FFB7)) 
    \lut_data[9]_i_7 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[4]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[5]),
        .I5(wr_index_reg__0[1]),
        .O(\lut_data[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \lut_data[9]_i_8 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[5]),
        .O(\lut_data[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h5F51C0F5)) 
    \lut_data[9]_i_9 
       (.I0(wr_index_reg__0[4]),
        .I1(wr_index_reg__0[7]),
        .I2(wr_index_reg__0[3]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[5]),
        .O(\lut_data[9]_i_9_n_0 ));
  FDRE \lut_data_reg[0] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[0]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[0] ),
        .R(rst));
  MUXF7 \lut_data_reg[0]_i_2 
       (.I0(\lut_data[0]_i_6_n_0 ),
        .I1(\lut_data[0]_i_7_n_0 ),
        .O(\lut_data_reg[0]_i_2_n_0 ),
        .S(wr_index_reg__0[6]));
  MUXF7 \lut_data_reg[0]_i_4 
       (.I0(\lut_data[0]_i_9_n_0 ),
        .I1(\lut_data[0]_i_10_n_0 ),
        .O(\lut_data_reg[0]_i_4_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[0]_i_8 
       (.I0(\lut_data[0]_i_11_n_0 ),
        .I1(\lut_data[0]_i_12_n_0 ),
        .O(\lut_data_reg[0]_i_8_n_0 ),
        .S(wr_index_reg__0[1]));
  FDRE \lut_data_reg[10] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[10]_i_1_n_0 ),
        .Q(mem_addr[2]),
        .R(rst));
  FDRE \lut_data_reg[11] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[11]_i_1_n_0 ),
        .Q(mem_addr[3]),
        .R(rst));
  MUXF7 \lut_data_reg[11]_i_4 
       (.I0(\lut_data[11]_i_7_n_0 ),
        .I1(\lut_data[11]_i_8_n_0 ),
        .O(\lut_data_reg[11]_i_4_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[11]_i_5 
       (.I0(\lut_data[11]_i_9_n_0 ),
        .I1(\lut_data[11]_i_10_n_0 ),
        .O(\lut_data_reg[11]_i_5_n_0 ),
        .S(wr_index_reg__0[3]));
  MUXF7 \lut_data_reg[11]_i_6 
       (.I0(\lut_data[11]_i_11_n_0 ),
        .I1(\lut_data[11]_i_12_n_0 ),
        .O(\lut_data_reg[11]_i_6_n_0 ),
        .S(wr_index_reg__0[1]));
  FDRE \lut_data_reg[12] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[12]_i_1_n_0 ),
        .Q(mem_addr[4]),
        .R(rst));
  MUXF7 \lut_data_reg[12]_i_3 
       (.I0(\lut_data[12]_i_6_n_0 ),
        .I1(\lut_data[12]_i_7_n_0 ),
        .O(\lut_data_reg[12]_i_3_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[12]_i_8 
       (.I0(\lut_data[12]_i_10_n_0 ),
        .I1(\lut_data[12]_i_11_n_0 ),
        .O(\lut_data_reg[12]_i_8_n_0 ),
        .S(wr_index_reg__0[2]));
  MUXF7 \lut_data_reg[12]_i_9 
       (.I0(\lut_data[12]_i_12_n_0 ),
        .I1(\lut_data[12]_i_13_n_0 ),
        .O(\lut_data_reg[12]_i_9_n_0 ),
        .S(wr_index_reg__0[5]));
  FDRE \lut_data_reg[13] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[13]_i_1_n_0 ),
        .Q(mem_addr[5]),
        .R(rst));
  MUXF7 \lut_data_reg[13]_i_3 
       (.I0(\lut_data[13]_i_5_n_0 ),
        .I1(\lut_data[13]_i_6_n_0 ),
        .O(\lut_data_reg[13]_i_3_n_0 ),
        .S(\lut_data[13]_i_4_n_0 ));
  FDRE \lut_data_reg[15] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[15]_i_1_n_0 ),
        .Q(mem_addr[7]),
        .R(rst));
  FDRE \lut_data_reg[16] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[16]_i_1_n_0 ),
        .Q(mem_addr[8]),
        .R(rst));
  MUXF7 \lut_data_reg[16]_i_3 
       (.I0(\lut_data[16]_i_9_n_0 ),
        .I1(\lut_data[16]_i_10_n_0 ),
        .O(\lut_data_reg[16]_i_3_n_0 ),
        .S(wr_index_reg__0[0]));
  FDRE \lut_data_reg[17] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[17]_i_1_n_0 ),
        .Q(mem_addr[9]),
        .R(rst));
  MUXF7 \lut_data_reg[17]_i_2 
       (.I0(\lut_data[17]_i_5_n_0 ),
        .I1(\lut_data[17]_i_6_n_0 ),
        .O(\lut_data_reg[17]_i_2_n_0 ),
        .S(wr_index_reg__0[4]));
  FDRE \lut_data_reg[18] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[18]_i_1_n_0 ),
        .Q(mem_addr[10]),
        .R(rst));
  MUXF7 \lut_data_reg[18]_i_5 
       (.I0(\lut_data[18]_i_8_n_0 ),
        .I1(\lut_data[18]_i_9_n_0 ),
        .O(\lut_data_reg[18]_i_5_n_0 ),
        .S(wr_index_reg__0[2]));
  MUXF7 \lut_data_reg[18]_i_7 
       (.I0(\lut_data[18]_i_10_n_0 ),
        .I1(\lut_data[18]_i_11_n_0 ),
        .O(\lut_data_reg[18]_i_7_n_0 ),
        .S(wr_index_reg__0[7]));
  FDRE \lut_data_reg[19] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[19]_i_1_n_0 ),
        .Q(mem_addr[11]),
        .R(rst));
  FDRE \lut_data_reg[1] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[1]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[1] ),
        .R(rst));
  MUXF7 \lut_data_reg[1]_i_3 
       (.I0(\lut_data[1]_i_9_n_0 ),
        .I1(\lut_data[1]_i_10_n_0 ),
        .O(\lut_data_reg[1]_i_3_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[1]_i_5 
       (.I0(\lut_data[1]_i_11_n_0 ),
        .I1(\lut_data[1]_i_12_n_0 ),
        .O(\lut_data_reg[1]_i_5_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[1]_i_7 
       (.I0(\lut_data[1]_i_13_n_0 ),
        .I1(\lut_data[1]_i_14_n_0 ),
        .O(\lut_data_reg[1]_i_7_n_0 ),
        .S(wr_index_reg__0[1]));
  FDRE \lut_data_reg[20] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[20]_i_1_n_0 ),
        .Q(mem_addr[12]),
        .R(rst));
  FDSE \lut_data_reg[21] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[21]_i_1_n_0 ),
        .Q(mem_addr[13]),
        .S(rst));
  FDRE \lut_data_reg[22] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[22]_i_1_n_0 ),
        .Q(mem_addr[14]),
        .R(rst));
  FDSE \lut_data_reg[23] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[31]_i_2_n_0 ),
        .Q(mem_addr[15]),
        .S(rst));
  FDRE \lut_data_reg[2] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[2]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[2] ),
        .R(rst));
  MUXF7 \lut_data_reg[2]_i_3 
       (.I0(\lut_data[2]_i_9_n_0 ),
        .I1(\lut_data[2]_i_10_n_0 ),
        .O(\lut_data_reg[2]_i_3_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[2]_i_5 
       (.I0(\lut_data[2]_i_11_n_0 ),
        .I1(\lut_data[2]_i_12_n_0 ),
        .O(\lut_data_reg[2]_i_5_n_0 ),
        .S(wr_index_reg__0[1]));
  FDRE \lut_data_reg[31] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[31]_i_2_n_0 ),
        .Q(dev_addr),
        .R(rst));
  FDRE \lut_data_reg[3] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[3]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[3] ),
        .R(rst));
  MUXF7 \lut_data_reg[3]_i_2 
       (.I0(\lut_data[3]_i_6_n_0 ),
        .I1(\lut_data[3]_i_7_n_0 ),
        .O(\lut_data_reg[3]_i_2_n_0 ),
        .S(wr_index_reg__0[4]));
  MUXF7 \lut_data_reg[3]_i_4 
       (.I0(\lut_data[3]_i_8_n_0 ),
        .I1(\lut_data[3]_i_9_n_0 ),
        .O(\lut_data_reg[3]_i_4_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[3]_i_5 
       (.I0(\lut_data[3]_i_10_n_0 ),
        .I1(\lut_data[3]_i_11_n_0 ),
        .O(\lut_data_reg[3]_i_5_n_0 ),
        .S(wr_index_reg__0[2]));
  FDRE \lut_data_reg[4] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[4]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[4] ),
        .R(rst));
  MUXF7 \lut_data_reg[4]_i_2 
       (.I0(\lut_data[4]_i_6_n_0 ),
        .I1(\lut_data[4]_i_7_n_0 ),
        .O(\lut_data_reg[4]_i_2_n_0 ),
        .S(wr_index_reg__0[4]));
  MUXF7 \lut_data_reg[4]_i_4 
       (.I0(\lut_data[4]_i_11_n_0 ),
        .I1(\lut_data[4]_i_12_n_0 ),
        .O(\lut_data_reg[4]_i_4_n_0 ),
        .S(wr_index_reg__0[1]));
  FDRE \lut_data_reg[5] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[5]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[5] ),
        .R(rst));
  MUXF7 \lut_data_reg[5]_i_3 
       (.I0(\lut_data[5]_i_7_n_0 ),
        .I1(\lut_data[5]_i_8_n_0 ),
        .O(\lut_data_reg[5]_i_3_n_0 ),
        .S(wr_index_reg__0[6]));
  MUXF7 \lut_data_reg[5]_i_5 
       (.I0(\lut_data[5]_i_9_n_0 ),
        .I1(\lut_data[5]_i_10_n_0 ),
        .O(\lut_data_reg[5]_i_5_n_0 ),
        .S(wr_index_reg__0[4]));
  MUXF7 \lut_data_reg[5]_i_6 
       (.I0(\lut_data[5]_i_11_n_0 ),
        .I1(\lut_data[5]_i_12_n_0 ),
        .O(\lut_data_reg[5]_i_6_n_0 ),
        .S(wr_index_reg__0[3]));
  FDRE \lut_data_reg[6] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[6]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[6] ),
        .R(rst));
  MUXF7 \lut_data_reg[6]_i_11 
       (.I0(\lut_data[6]_i_12_n_0 ),
        .I1(\lut_data[6]_i_13_n_0 ),
        .O(\lut_data_reg[6]_i_11_n_0 ),
        .S(wr_index_reg__0[1]));
  MUXF7 \lut_data_reg[6]_i_2 
       (.I0(\lut_data[6]_i_6_n_0 ),
        .I1(\lut_data[6]_i_7_n_0 ),
        .O(\lut_data_reg[6]_i_2_n_0 ),
        .S(wr_index_reg__0[3]));
  MUXF7 \lut_data_reg[6]_i_3 
       (.I0(\lut_data[6]_i_8_n_0 ),
        .I1(\lut_data[6]_i_9_n_0 ),
        .O(\lut_data_reg[6]_i_3_n_0 ),
        .S(wr_index_reg__0[1]));
  FDRE \lut_data_reg[7] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[7]_i_1_n_0 ),
        .Q(\lut_data_reg_n_0_[7] ),
        .R(rst));
  MUXF7 \lut_data_reg[7]_i_2 
       (.I0(\lut_data[7]_i_5_n_0 ),
        .I1(\lut_data[7]_i_6_n_0 ),
        .O(\lut_data_reg[7]_i_2_n_0 ),
        .S(wr_index_reg__0[3]));
  MUXF7 \lut_data_reg[7]_i_8 
       (.I0(\lut_data[7]_i_9_n_0 ),
        .I1(\lut_data[7]_i_10_n_0 ),
        .O(\lut_data_reg[7]_i_8_n_0 ),
        .S(wr_index_reg__0[1]));
  FDSE \lut_data_reg[8] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[8]_i_1_n_0 ),
        .Q(mem_addr[0]),
        .S(rst));
  MUXF7 \lut_data_reg[8]_i_5 
       (.I0(\lut_data[8]_i_11_n_0 ),
        .I1(\lut_data[8]_i_12_n_0 ),
        .O(\lut_data_reg[8]_i_5_n_0 ),
        .S(wr_index_reg__0[6]));
  FDRE \lut_data_reg[9] 
       (.C(clk),
        .CE(wr_index1),
        .D(\lut_data[9]_i_1_n_0 ),
        .Q(mem_addr[1]),
        .R(rst));
  MUXF7 \lut_data_reg[9]_i_2 
       (.I0(\lut_data[9]_i_6_n_0 ),
        .I1(\lut_data[9]_i_7_n_0 ),
        .O(\lut_data_reg[9]_i_2_n_0 ),
        .S(wr_index_reg__0[6]));
  MUXF7 \lut_data_reg[9]_i_4 
       (.I0(\lut_data[9]_i_11_n_0 ),
        .I1(\lut_data[9]_i_12_n_0 ),
        .O(\lut_data_reg[9]_i_4_n_0 ),
        .S(wr_index_reg__0[2]));
  LUT6 #(
    .INIT(64'h000FFFFF00010001)) 
    ready_i_1
       (.I0(ready_i_2_n_0),
        .I1(ready_i_3_n_0),
        .I2(ready_i_4_n_0),
        .I3(state[2]),
        .I4(start),
        .I5(ready_reg_n_0),
        .O(ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    ready_i_2
       (.I0(\cnt_wait_reg_n_0_[0] ),
        .I1(ready_i_5_n_0),
        .I2(\cnt_wait_reg_n_0_[24] ),
        .I3(\cnt_wait_reg_n_0_[23] ),
        .I4(\cnt_wait_reg_n_0_[21] ),
        .I5(\cnt_wait_reg_n_0_[22] ),
        .O(ready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    ready_i_3
       (.I0(ready_i_6_n_0),
        .I1(\cnt_wait_reg_n_0_[15] ),
        .I2(\cnt_wait_reg_n_0_[8] ),
        .I3(\cnt_wait_reg_n_0_[13] ),
        .I4(\cnt_wait_reg_n_0_[10] ),
        .I5(ready_i_7_n_0),
        .O(ready_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ready_i_4
       (.I0(state[0]),
        .I1(state[1]),
        .O(ready_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ready_i_5
       (.I0(\cnt_wait_reg_n_0_[11] ),
        .I1(\cnt_wait_reg_n_0_[20] ),
        .I2(\cnt_wait_reg_n_0_[7] ),
        .I3(\cnt_wait_reg_n_0_[6] ),
        .O(ready_i_5_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    ready_i_6
       (.I0(\cnt_wait_reg_n_0_[19] ),
        .I1(\cnt_wait_reg_n_0_[12] ),
        .I2(\cnt_wait_reg_n_0_[9] ),
        .I3(\cnt_wait_reg_n_0_[14] ),
        .O(ready_i_6_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    ready_i_7
       (.I0(\cnt_wait_reg_n_0_[18] ),
        .I1(\cnt_wait_reg_n_0_[5] ),
        .I2(\cnt_wait_reg_n_0_[16] ),
        .I3(\cnt_wait_reg_n_0_[17] ),
        .I4(ready_i_8_n_0),
        .O(ready_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ready_i_8
       (.I0(\cnt_wait_reg_n_0_[3] ),
        .I1(\cnt_wait_reg_n_0_[4] ),
        .I2(\cnt_wait_reg_n_0_[1] ),
        .I3(\cnt_wait_reg_n_0_[2] ),
        .O(ready_i_8_n_0));
  FDRE ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    start_i_1
       (.I0(ready_reg_n_0),
        .I1(dev_addr),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(cfg_done_reg_n_0),
        .O(start_i_1_n_0));
  FDRE start_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE9)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,WRITE:0100,WR_CHECK:0010" *) 
  FDSE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .S(rst));
  (* FSM_ENCODED_STATES = "IDLE:0001,WRITE:0100,WR_CHECK:0010" *) 
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sccb_driver_n_4),
        .Q(state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "IDLE:0001,WRITE:0100,WR_CHECK:0010" *) 
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(inst_sccb_driver_n_3),
        .Q(state[2]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(wr_index_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(wr_index_reg__0[0]),
        .I1(wr_index_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index[2]_i_1 
       (.I0(wr_index_reg__0[0]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index[3]_i_1 
       (.I0(wr_index_reg__0[1]),
        .I1(wr_index_reg__0[0]),
        .I2(wr_index_reg__0[2]),
        .I3(wr_index_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_index[4]_i_1 
       (.I0(wr_index_reg__0[2]),
        .I1(wr_index_reg__0[0]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[3]),
        .I4(wr_index_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_index[5]_i_1 
       (.I0(wr_index_reg__0[3]),
        .I1(wr_index_reg__0[1]),
        .I2(wr_index_reg__0[0]),
        .I3(wr_index_reg__0[2]),
        .I4(wr_index_reg__0[4]),
        .I5(wr_index_reg__0[5]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[6]_i_1 
       (.I0(\wr_index[8]_i_3_n_0 ),
        .I1(wr_index_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index[7]_i_1 
       (.I0(\wr_index[8]_i_3_n_0 ),
        .I1(wr_index_reg__0[6]),
        .I2(wr_index_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index[8]_i_2 
       (.I0(wr_index_reg__0[6]),
        .I1(\wr_index[8]_i_3_n_0 ),
        .I2(wr_index_reg__0[7]),
        .I3(wr_index_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wr_index[8]_i_3 
       (.I0(wr_index_reg__0[5]),
        .I1(wr_index_reg__0[3]),
        .I2(wr_index_reg__0[1]),
        .I3(wr_index_reg__0[0]),
        .I4(wr_index_reg__0[2]),
        .I5(wr_index_reg__0[4]),
        .O(\wr_index[8]_i_3_n_0 ));
  FDRE \wr_index_reg[0] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[0]),
        .Q(wr_index_reg__0[0]),
        .R(rst));
  FDRE \wr_index_reg[1] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[1]),
        .Q(wr_index_reg__0[1]),
        .R(rst));
  FDRE \wr_index_reg[2] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[2]),
        .Q(wr_index_reg__0[2]),
        .R(rst));
  FDRE \wr_index_reg[3] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[3]),
        .Q(wr_index_reg__0[3]),
        .R(rst));
  FDRE \wr_index_reg[4] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[4]),
        .Q(wr_index_reg__0[4]),
        .R(rst));
  FDRE \wr_index_reg[5] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[5]),
        .Q(wr_index_reg__0[5]),
        .R(rst));
  FDRE \wr_index_reg[6] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[6]),
        .Q(wr_index_reg__0[6]),
        .R(rst));
  FDRE \wr_index_reg[7] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[7]),
        .Q(wr_index_reg__0[7]),
        .R(rst));
  FDRE \wr_index_reg[8] 
       (.C(clk),
        .CE(inst_sccb_driver_n_1),
        .D(p_0_in__1[8]),
        .Q(wr_index_reg__0[8]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    wr_req_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(dev_addr),
        .I4(ready_reg_n_0),
        .O(wr_req0));
  FDRE wr_req_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_sccb_driver_n_2),
        .Q(wr_req),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cmos_img_capture" *) 
module design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture
   (capture_data,
    cmos_clk_en,
    rst,
    cmos_pclk,
    cmos_href,
    cmos_data,
    cmos_vsync);
  output [15:0]capture_data;
  output cmos_clk_en;
  input rst;
  input cmos_pclk;
  input cmos_href;
  input [7:0]cmos_data;
  input cmos_vsync;

  wire [15:0]capture_data;
  wire \cmos_capture_data[0]_i_1_n_0 ;
  wire \cmos_capture_data[10]_i_1_n_0 ;
  wire \cmos_capture_data[11]_i_1_n_0 ;
  wire \cmos_capture_data[12]_i_1_n_0 ;
  wire \cmos_capture_data[13]_i_1_n_0 ;
  wire \cmos_capture_data[14]_i_1_n_0 ;
  wire \cmos_capture_data[15]_i_1_n_0 ;
  wire \cmos_capture_data[1]_i_1_n_0 ;
  wire \cmos_capture_data[2]_i_1_n_0 ;
  wire \cmos_capture_data[3]_i_1_n_0 ;
  wire \cmos_capture_data[4]_i_1_n_0 ;
  wire \cmos_capture_data[5]_i_1_n_0 ;
  wire \cmos_capture_data[6]_i_1_n_0 ;
  wire \cmos_capture_data[7]_i_1_n_0 ;
  wire \cmos_capture_data[8]_i_1_n_0 ;
  wire \cmos_capture_data[9]_i_1_n_0 ;
  wire cmos_clk_en;
  wire [7:0]cmos_data;
  wire cmos_data_vld_r;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_vsync;
  wire \cmos_vsync_dd_reg_n_0_[1] ;
  wire \cnt_data[0]_i_1_n_0 ;
  wire [0:0]cnt_data_reg;
  wire [1:1]p_1_in;
  wire ready;
  wire ready_i_1__0_n_0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[0]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[0]),
        .O(\cmos_capture_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[10]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[2]),
        .O(\cmos_capture_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[11]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[3]),
        .O(\cmos_capture_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[12]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[4]),
        .O(\cmos_capture_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[13]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[5]),
        .O(\cmos_capture_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[14]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[6]),
        .O(\cmos_capture_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[15]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[7]),
        .O(\cmos_capture_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[1]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[1]),
        .O(\cmos_capture_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[2]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[2]),
        .O(\cmos_capture_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[3]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[3]),
        .O(\cmos_capture_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[4]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[4]),
        .O(\cmos_capture_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[5]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[5]),
        .O(\cmos_capture_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[6]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[6]),
        .O(\cmos_capture_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[7]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(cmos_data[7]),
        .O(\cmos_capture_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[8]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[0]),
        .O(\cmos_capture_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_capture_data[9]_i_1 
       (.I0(ready),
        .I1(cmos_href),
        .I2(capture_data[1]),
        .O(\cmos_capture_data[9]_i_1_n_0 ));
  FDRE \cmos_capture_data_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[0]_i_1_n_0 ),
        .Q(capture_data[0]),
        .R(rst));
  FDRE \cmos_capture_data_reg[10] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[10]_i_1_n_0 ),
        .Q(capture_data[10]),
        .R(rst));
  FDRE \cmos_capture_data_reg[11] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[11]_i_1_n_0 ),
        .Q(capture_data[11]),
        .R(rst));
  FDRE \cmos_capture_data_reg[12] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[12]_i_1_n_0 ),
        .Q(capture_data[12]),
        .R(rst));
  FDRE \cmos_capture_data_reg[13] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[13]_i_1_n_0 ),
        .Q(capture_data[13]),
        .R(rst));
  FDRE \cmos_capture_data_reg[14] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[14]_i_1_n_0 ),
        .Q(capture_data[14]),
        .R(rst));
  FDRE \cmos_capture_data_reg[15] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[15]_i_1_n_0 ),
        .Q(capture_data[15]),
        .R(rst));
  FDRE \cmos_capture_data_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[1]_i_1_n_0 ),
        .Q(capture_data[1]),
        .R(rst));
  FDRE \cmos_capture_data_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[2]_i_1_n_0 ),
        .Q(capture_data[2]),
        .R(rst));
  FDRE \cmos_capture_data_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[3]_i_1_n_0 ),
        .Q(capture_data[3]),
        .R(rst));
  FDRE \cmos_capture_data_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[4]_i_1_n_0 ),
        .Q(capture_data[4]),
        .R(rst));
  FDRE \cmos_capture_data_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[5]_i_1_n_0 ),
        .Q(capture_data[5]),
        .R(rst));
  FDRE \cmos_capture_data_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[6]_i_1_n_0 ),
        .Q(capture_data[6]),
        .R(rst));
  FDRE \cmos_capture_data_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[7]_i_1_n_0 ),
        .Q(capture_data[7]),
        .R(rst));
  FDRE \cmos_capture_data_reg[8] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[8]_i_1_n_0 ),
        .Q(capture_data[8]),
        .R(rst));
  FDRE \cmos_capture_data_reg[9] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_capture_data[9]_i_1_n_0 ),
        .Q(capture_data[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cmos_clk_en_INST_0
       (.I0(cmos_data_vld_r),
        .I1(cmos_href),
        .O(cmos_clk_en));
  FDRE cmos_data_vld_r_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cnt_data_reg),
        .Q(cmos_data_vld_r),
        .R(rst));
  FDRE \cmos_vsync_dd_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_vsync),
        .Q(p_1_in),
        .R(rst));
  FDRE \cmos_vsync_dd_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\cmos_vsync_dd_reg_n_0_[1] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt_data[0]_i_1 
       (.I0(cmos_href),
        .I1(ready),
        .I2(rst),
        .I3(cnt_data_reg),
        .O(\cnt_data[0]_i_1_n_0 ));
  FDRE \cnt_data_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cnt_data[0]_i_1_n_0 ),
        .Q(cnt_data_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    ready_i_1__0
       (.I0(\cmos_vsync_dd_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(ready),
        .O(ready_i_1__0_n_0));
  FDRE ready_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(ready_i_1__0_n_0),
        .Q(ready),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ov5640_capture" *) 
module design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture
   (capture_data,
    cmos_scl,
    cmos_clk_en,
    cmos_sda,
    cmos_href,
    rst,
    clk,
    cmos_pclk,
    cmos_vsync,
    cmos_data);
  output [15:0]capture_data;
  output cmos_scl;
  output cmos_clk_en;
  inout cmos_sda;
  input cmos_href;
  input rst;
  input clk;
  input cmos_pclk;
  input cmos_vsync;
  input [7:0]cmos_data;

  wire [15:0]capture_data;
  wire clk;
  wire cmos_clk_en;
  wire [7:0]cmos_data;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_scl;
  wire cmos_sda;
  wire cmos_vsync;
  wire rst;

  design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg inst_cmos_cfg
       (.clk(clk),
        .cmos_scl(cmos_scl),
        .cmos_sda(cmos_sda),
        .rst(rst));
  design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture inst_cmos_img_capture
       (.capture_data(capture_data),
        .cmos_clk_en(cmos_clk_en),
        .cmos_data(cmos_data),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_vsync(cmos_vsync),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "sccb_driver" *) 
module design_1_ddr3_hdmi_ov5640_0_0_sccb_driver
   (cmos_scl,
    E,
    wr_req_reg,
    wr_done_reg_0,
    wr_done_reg_1,
    cmos_sda,
    rst,
    clk,
    wr_req,
    start,
    \state_reg[2] ,
    Q,
    wr_req0,
    state,
    \state_reg[2]_0 );
  output cmos_scl;
  output [0:0]E;
  output wr_req_reg;
  output wr_done_reg_0;
  output wr_done_reg_1;
  inout cmos_sda;
  input rst;
  input clk;
  input wr_req;
  input start;
  input \state_reg[2] ;
  input [23:0]Q;
  input wr_req0;
  input [2:0]state;
  input \state_reg[2]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_2_n_0 ;
  wire [23:0]Q;
  wire ack_flag0__0;
  wire ack_flag_i_1_n_0;
  wire ack_flag_i_2_n_0;
  wire ack_flag_i_3_n_0;
  wire ack_flag_i_4_n_0;
  wire ack_flag_i_5_n_0;
  wire ack_flag_reg_n_0;
  wire clk;
  wire cmos_scl;
  wire cmos_sda;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[9]_i_1_n_0 ;
  wire \cnt[9]_i_3_n_0 ;
  wire cnt_byte;
  wire cnt_byte_i_1_n_0;
  wire \cnt_flag[5]_i_1_n_0 ;
  wire \cnt_flag[5]_i_4_n_0 ;
  wire \cnt_flag[5]_i_5_n_0 ;
  wire \cnt_flag[5]_i_6_n_0 ;
  wire [5:0]cnt_flag_reg__0;
  wire [2:0]cnt_freq;
  wire \cnt_freq[0]_i_1_n_0 ;
  wire \cnt_freq[1]_i_1_n_0 ;
  wire \cnt_freq[2]_i_1_n_0 ;
  wire [9:0]cnt_reg__0;
  wire data_shift;
  wire data_shift044_out__1;
  wire data_shift125_out__0;
  wire data_shift127_out__0;
  wire data_shift1__0;
  wire \data_shift[0]_i_1_n_0 ;
  wire \data_shift[0]_i_2_n_0 ;
  wire \data_shift[1]_i_1_n_0 ;
  wire \data_shift[1]_i_2_n_0 ;
  wire \data_shift[1]_i_3_n_0 ;
  wire \data_shift[2]_i_1_n_0 ;
  wire \data_shift[2]_i_2_n_0 ;
  wire \data_shift[2]_i_3_n_0 ;
  wire \data_shift[3]_i_1_n_0 ;
  wire \data_shift[3]_i_2_n_0 ;
  wire \data_shift[3]_i_3_n_0 ;
  wire \data_shift[4]_i_1_n_0 ;
  wire \data_shift[4]_i_2_n_0 ;
  wire \data_shift[4]_i_3_n_0 ;
  wire \data_shift[5]_i_1_n_0 ;
  wire \data_shift[5]_i_2_n_0 ;
  wire \data_shift[5]_i_3_n_0 ;
  wire \data_shift[6]_i_1_n_0 ;
  wire \data_shift[6]_i_2_n_0 ;
  wire \data_shift[6]_i_3_n_0 ;
  wire \data_shift[7]_i_11_n_0 ;
  wire \data_shift[7]_i_2_n_0 ;
  wire \data_shift[7]_i_3_n_0 ;
  wire \data_shift[7]_i_4_n_0 ;
  wire \data_shift[7]_i_5_n_0 ;
  wire \data_shift[7]_i_6_n_0 ;
  wire \data_shift_reg_n_0_[7] ;
  wire drive_flag;
  wire drive_flag0;
  wire drive_flag_i_2_n_0;
  wire drive_flag_i_3_n_0;
  wire drive_flag_i_5_n_0;
  wire drive_flag_i_6_n_0;
  wire end_cnt_flag__0;
  wire end_cnt_freq__0;
  wire [7:0]in19;
  wire [7:1]in20;
  wire [5:0]p_0_in;
  wire [9:1]p_0_in__0;
  wire p_2_in6_in;
  wire p_32_in;
  wire p_45_in;
  wire rst;
  wire scl1__0;
  wire scl3_out__1;
  wire scl_i_1_n_0;
  wire scl_i_6_n_0;
  wire start;
  wire [2:0]state;
  wire state141_out__0;
  wire state142_out__0;
  wire state1__0;
  wire [3:0]state_0;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire work_flag_i_1_n_0;
  wire work_flag_reg_n_0;
  wire wr_done;
  wire wr_done1__0;
  wire wr_done_i_1_n_0;
  wire wr_done_reg_0;
  wire wr_done_reg_1;
  wire wr_en_i_1_n_0;
  wire wr_en_reg_n_0;
  wire wr_req;
  wire wr_req0;
  wire wr_req_reg;
  wire wr_sda1__0;
  wire wr_sda6_in;
  wire wr_sda_i_10_n_0;
  wire wr_sda_i_11_n_0;
  wire wr_sda_i_12_n_0;
  wire wr_sda_i_13_n_0;
  wire wr_sda_i_1_n_0;
  wire wr_sda_i_2_n_0;
  wire wr_sda_i_3_n_0;
  wire wr_sda_i_4_n_0;
  wire wr_sda_i_5_n_0;
  wire wr_sda_i_6_n_0;
  wire wr_sda_i_9_n_0;
  wire wr_sda_reg_n_0;

  LUT6 #(
    .INIT(64'h220CFFFF220C0000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state141_out__0),
        .I4(state_0[1]),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000F0008)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(wr_req),
        .I1(start),
        .I2(state_0[1]),
        .I3(state_0[2]),
        .I4(state_0[0]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7477333344770000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state142_out__0),
        .I1(state_0[2]),
        .I2(cnt_byte),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(state_0[0]),
        .I5(state141_out__0),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EEE2E22)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state_0[1]),
        .I2(state141_out__0),
        .I3(state_0[0]),
        .I4(state_0[2]),
        .I5(state_0[3]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E4C444C4)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state141_out__0),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(state_0[0]),
        .I3(cnt_byte),
        .I4(wr_req),
        .I5(state_0[2]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(ack_flag_reg_n_0),
        .I1(drive_flag),
        .I2(cnt_flag_reg__0[5]),
        .I3(cnt_flag_reg__0[1]),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(cnt_flag_reg__0[0]),
        .O(state141_out__0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(cnt_flag_reg__0[2]),
        .I1(cnt_flag_reg__0[4]),
        .I2(cnt_flag_reg__0[3]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state_0[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state_0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state_0[1]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF2FFFFFF)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state_0[0]),
        .I1(state_0[2]),
        .I2(state_0[1]),
        .I3(start),
        .I4(wr_req),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF404)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(state_0[2]),
        .I2(state141_out__0),
        .I3(state_0[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F30503050305030)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state142_out__0),
        .I1(p_45_in),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .I4(wr_req),
        .I5(state1__0),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(drive_flag),
        .I1(cnt_flag_reg__0[5]),
        .I2(cnt_flag_reg__0[1]),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(cnt_flag_reg__0[0]),
        .I5(ack_flag_reg_n_0),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(drive_flag),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(cnt_flag_reg__0[1]),
        .O(state142_out__0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(cnt_flag_reg__0[5]),
        .I1(cnt_flag_reg__0[0]),
        .I2(cnt_flag_reg__0[2]),
        .I3(cnt_flag_reg__0[3]),
        .I4(cnt_flag_reg__0[4]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(state1__0),
        .I3(wr_req),
        .I4(state_0[2]),
        .I5(state_0[3]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(cnt_byte),
        .I1(state141_out__0),
        .O(state1__0));
  LUT6 #(
    .INIT(64'h004A004A054A004A)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state_0[1]),
        .I1(p_45_in),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .I4(state1__0),
        .I5(wr_req),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(wr_req),
        .I1(start),
        .I2(state_0[0]),
        .I3(state_0[2]),
        .I4(state_0[1]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .O(p_45_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[5]),
        .I2(cnt_flag_reg__0[2]),
        .I3(cnt_flag_reg__0[4]),
        .I4(cnt_flag_reg__0[3]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_0[0]),
        .R(rst));
  MUXF7 \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .S(state_0[3]));
  (* FSM_ENCODED_STATES = "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state_0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state_0[2]),
        .R(rst));
  (* FSM_ENCODED_STATES = "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100" *) 
  FDSE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .Q(state_0[3]),
        .S(rst));
  MUXF7 \FSM_sequential_state_reg[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .S(state_0[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    ack_flag_i_1
       (.I0(ack_flag_i_2_n_0),
        .I1(ack_flag_i_3_n_0),
        .I2(ack_flag_i_4_n_0),
        .I3(ack_flag_reg_n_0),
        .O(ack_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000D4848484)) 
    ack_flag_i_2
       (.I0(state_0[2]),
        .I1(ack_flag_i_5_n_0),
        .I2(state_0[1]),
        .I3(ack_flag0__0),
        .I4(state_0[0]),
        .I5(state_0[3]),
        .O(ack_flag_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    ack_flag_i_3
       (.I0(state_0[1]),
        .I1(state_0[2]),
        .I2(end_cnt_flag__0),
        .I3(ack_flag0__0),
        .I4(state_0[3]),
        .I5(state_0[0]),
        .O(ack_flag_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBE)) 
    ack_flag_i_4
       (.I0(state_0[3]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(ack_flag_i_5_n_0),
        .I4(end_cnt_flag__0),
        .O(ack_flag_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    ack_flag_i_5
       (.I0(cnt_flag_reg__0[5]),
        .I1(drive_flag),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[1]),
        .I4(cmos_sda),
        .O(ack_flag_i_5_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    ack_flag_i_6
       (.I0(cnt_flag_reg__0[5]),
        .I1(drive_flag),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[1]),
        .I4(cmos_sda),
        .O(ack_flag0__0));
  FDRE ack_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_flag_i_1_n_0),
        .Q(ack_flag_reg_n_0),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    cmos_sda_INST_0
       (.I0(wr_sda_reg_n_0),
        .I1(wr_en_reg_n_0),
        .O(cmos_sda));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .I4(cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[4]),
        .I5(cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[9]_i_3_n_0 ),
        .I1(cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_1 
       (.I0(\cnt[9]_i_3_n_0 ),
        .I1(cnt_reg__0[6]),
        .I2(cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[8]_i_1 
       (.I0(cnt_reg__0[6]),
        .I1(\cnt[9]_i_3_n_0 ),
        .I2(cnt_reg__0[7]),
        .I3(cnt_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT3 #(
    .INIT(8'hFB)) 
    \cnt[9]_i_1 
       (.I0(rst),
        .I1(work_flag_reg_n_0),
        .I2(drive_flag_i_2_n_0),
        .O(\cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[9]_i_2 
       (.I0(cnt_reg__0[7]),
        .I1(\cnt[9]_i_3_n_0 ),
        .I2(cnt_reg__0[6]),
        .I3(cnt_reg__0[8]),
        .I4(cnt_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[9]_i_3 
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[2]),
        .I5(cnt_reg__0[4]),
        .O(\cnt[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00020000)) 
    cnt_byte_i_1
       (.I0(state_0[0]),
        .I1(state_0[3]),
        .I2(state_0[1]),
        .I3(state_0[2]),
        .I4(end_cnt_flag__0),
        .I5(cnt_byte),
        .O(cnt_byte_i_1_n_0));
  FDRE cnt_byte_reg
       (.C(clk),
        .CE(1'b1),
        .D(cnt_byte_i_1_n_0),
        .Q(cnt_byte),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_flag[0]_i_1 
       (.I0(cnt_flag_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_flag[1]_i_1 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_flag[2]_i_1 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[1]),
        .I2(cnt_flag_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_flag[3]_i_1 
       (.I0(cnt_flag_reg__0[1]),
        .I1(cnt_flag_reg__0[0]),
        .I2(cnt_flag_reg__0[2]),
        .I3(cnt_flag_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_flag[4]_i_1 
       (.I0(cnt_flag_reg__0[2]),
        .I1(cnt_flag_reg__0[0]),
        .I2(cnt_flag_reg__0[1]),
        .I3(cnt_flag_reg__0[3]),
        .I4(cnt_flag_reg__0[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFBBB)) 
    \cnt_flag[5]_i_1 
       (.I0(rst),
        .I1(work_flag_reg_n_0),
        .I2(drive_flag),
        .I3(end_cnt_flag__0),
        .O(\cnt_flag[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_flag[5]_i_2 
       (.I0(cnt_flag_reg__0[3]),
        .I1(cnt_flag_reg__0[1]),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[2]),
        .I4(cnt_flag_reg__0[4]),
        .I5(cnt_flag_reg__0[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \cnt_flag[5]_i_3 
       (.I0(\cnt_flag[5]_i_4_n_0 ),
        .I1(cnt_flag_reg__0[3]),
        .I2(\cnt_flag[5]_i_5_n_0 ),
        .I3(\cnt_flag[5]_i_6_n_0 ),
        .I4(drive_flag),
        .O(end_cnt_flag__0));
  LUT6 #(
    .INIT(64'h000000005555A59A)) 
    \cnt_flag[5]_i_4 
       (.I0(cnt_flag_reg__0[5]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(state_0[2]),
        .I4(state_0[3]),
        .I5(cnt_flag_reg__0[4]),
        .O(\cnt_flag[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h514DAEB2)) 
    \cnt_flag[5]_i_5 
       (.I0(state_0[3]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(state_0[2]),
        .I4(cnt_flag_reg__0[0]),
        .O(\cnt_flag[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1218122212121112)) 
    \cnt_flag[5]_i_6 
       (.I0(cnt_flag_reg__0[1]),
        .I1(cnt_flag_reg__0[2]),
        .I2(state_0[3]),
        .I3(state_0[1]),
        .I4(state_0[2]),
        .I5(state_0[0]),
        .O(\cnt_flag[5]_i_6_n_0 ));
  FDRE \cnt_flag_reg[0] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in[0]),
        .Q(cnt_flag_reg__0[0]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[1] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in[1]),
        .Q(cnt_flag_reg__0[1]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[2] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in[2]),
        .Q(cnt_flag_reg__0[2]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[3] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in[3]),
        .Q(cnt_flag_reg__0[3]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[4] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in[4]),
        .Q(cnt_flag_reg__0[4]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[5] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in[5]),
        .Q(cnt_flag_reg__0[5]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \cnt_freq[0]_i_1 
       (.I0(cnt_freq[0]),
        .I1(drive_flag),
        .I2(work_flag_reg_n_0),
        .I3(rst),
        .O(\cnt_freq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00006C00)) 
    \cnt_freq[1]_i_1 
       (.I0(cnt_freq[0]),
        .I1(cnt_freq[1]),
        .I2(drive_flag),
        .I3(work_flag_reg_n_0),
        .I4(rst),
        .O(\cnt_freq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004CCC0000)) 
    \cnt_freq[2]_i_1 
       (.I0(cnt_freq[0]),
        .I1(cnt_freq[2]),
        .I2(cnt_freq[1]),
        .I3(drive_flag),
        .I4(work_flag_reg_n_0),
        .I5(rst),
        .O(\cnt_freq[2]_i_1_n_0 ));
  FDRE \cnt_freq_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_freq[0]_i_1_n_0 ),
        .Q(cnt_freq[0]),
        .R(1'b0));
  FDRE \cnt_freq_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_freq[1]_i_1_n_0 ),
        .Q(cnt_freq[1]),
        .R(1'b0));
  FDRE \cnt_freq_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_freq[2]_i_1_n_0 ),
        .Q(cnt_freq[2]),
        .R(1'b0));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(cnt_reg__0[1]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(cnt_reg__0[4]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(cnt_reg__0[5]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(cnt_reg__0[6]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(cnt_reg__0[7]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(cnt_reg__0[8]),
        .R(\cnt[9]_i_1_n_0 ));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(cnt_reg__0[9]),
        .R(\cnt[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \data_shift[0]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[3]),
        .I2(\data_shift[0]_i_2_n_0 ),
        .I3(state_0[2]),
        .O(\data_shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8880000B888)) 
    \data_shift[0]_i_2 
       (.I0(in19[0]),
        .I1(state_0[0]),
        .I2(data_shift127_out__0),
        .I3(Q[15]),
        .I4(state_0[1]),
        .I5(cmos_sda),
        .O(\data_shift[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC0800080)) 
    \data_shift[0]_i_3 
       (.I0(Q[8]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[0]),
        .O(in19[0]));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \data_shift[1]_i_1 
       (.I0(state_0[0]),
        .I1(Q[23]),
        .I2(state_0[3]),
        .I3(\data_shift[1]_i_2_n_0 ),
        .I4(state_0[2]),
        .I5(\data_shift[1]_i_3_n_0 ),
        .O(\data_shift[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8CFF8C00)) 
    \data_shift[1]_i_2 
       (.I0(state_0[0]),
        .I1(in20[1]),
        .I2(data_shift127_out__0),
        .I3(state_0[1]),
        .I4(Q[23]),
        .O(\data_shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[1]_i_3 
       (.I0(state_0[1]),
        .I1(in19[1]),
        .I2(state_0[0]),
        .I3(Q[16]),
        .I4(data_shift127_out__0),
        .I5(in20[1]),
        .O(\data_shift[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[1]_i_4 
       (.I0(Q[9]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[1]),
        .I5(in20[1]),
        .O(in19[1]));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \data_shift[2]_i_1 
       (.I0(state_0[0]),
        .I1(Q[23]),
        .I2(state_0[3]),
        .I3(\data_shift[2]_i_2_n_0 ),
        .I4(state_0[2]),
        .I5(\data_shift[2]_i_3_n_0 ),
        .O(\data_shift[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8CFF8C00)) 
    \data_shift[2]_i_2 
       (.I0(state_0[0]),
        .I1(in20[2]),
        .I2(data_shift127_out__0),
        .I3(state_0[1]),
        .I4(Q[23]),
        .O(\data_shift[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[2]_i_3 
       (.I0(state_0[1]),
        .I1(in19[2]),
        .I2(state_0[0]),
        .I3(Q[17]),
        .I4(data_shift127_out__0),
        .I5(in20[2]),
        .O(\data_shift[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[2]_i_4 
       (.I0(Q[10]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[2]),
        .I5(in20[2]),
        .O(in19[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_shift[3]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[3]),
        .I2(\data_shift[3]_i_2_n_0 ),
        .I3(state_0[2]),
        .I4(\data_shift[3]_i_3_n_0 ),
        .O(\data_shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hC4FF)) 
    \data_shift[3]_i_2 
       (.I0(data_shift127_out__0),
        .I1(in20[3]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\data_shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[3]_i_3 
       (.I0(state_0[1]),
        .I1(in19[3]),
        .I2(state_0[0]),
        .I3(Q[18]),
        .I4(data_shift127_out__0),
        .I5(in20[3]),
        .O(\data_shift[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[3]_i_4 
       (.I0(Q[11]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[3]),
        .I5(in20[3]),
        .O(in19[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_shift[4]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[3]),
        .I2(\data_shift[4]_i_2_n_0 ),
        .I3(state_0[2]),
        .I4(\data_shift[4]_i_3_n_0 ),
        .O(\data_shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hC4FF)) 
    \data_shift[4]_i_2 
       (.I0(data_shift127_out__0),
        .I1(in20[4]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\data_shift[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[4]_i_3 
       (.I0(state_0[1]),
        .I1(in19[4]),
        .I2(state_0[0]),
        .I3(Q[19]),
        .I4(data_shift127_out__0),
        .I5(in20[4]),
        .O(\data_shift[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[4]_i_4 
       (.I0(Q[12]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[4]),
        .I5(in20[4]),
        .O(in19[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_shift[5]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[3]),
        .I2(\data_shift[5]_i_2_n_0 ),
        .I3(state_0[2]),
        .I4(\data_shift[5]_i_3_n_0 ),
        .O(\data_shift[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hC4FF)) 
    \data_shift[5]_i_2 
       (.I0(data_shift127_out__0),
        .I1(in20[5]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\data_shift[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[5]_i_3 
       (.I0(state_0[1]),
        .I1(in19[5]),
        .I2(state_0[0]),
        .I3(Q[20]),
        .I4(data_shift127_out__0),
        .I5(in20[5]),
        .O(\data_shift[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[5]_i_4 
       (.I0(Q[13]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[5]),
        .I5(in20[5]),
        .O(in19[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_shift[6]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[3]),
        .I2(\data_shift[6]_i_2_n_0 ),
        .I3(state_0[2]),
        .I4(\data_shift[6]_i_3_n_0 ),
        .O(\data_shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hC4FF)) 
    \data_shift[6]_i_2 
       (.I0(data_shift127_out__0),
        .I1(in20[6]),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .O(\data_shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[6]_i_3 
       (.I0(state_0[1]),
        .I1(in19[6]),
        .I2(state_0[0]),
        .I3(Q[21]),
        .I4(data_shift127_out__0),
        .I5(in20[6]),
        .O(\data_shift[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[6]_i_4 
       (.I0(Q[23]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[6]),
        .I5(in20[6]),
        .O(in19[6]));
  LUT6 #(
    .INIT(64'h1100119011FF1190)) 
    \data_shift[7]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[1]),
        .I2(\data_shift[7]_i_3_n_0 ),
        .I3(state_0[3]),
        .I4(state_0[0]),
        .I5(\data_shift[7]_i_4_n_0 ),
        .O(data_shift));
  LUT3 #(
    .INIT(8'h80)) 
    \data_shift[7]_i_10 
       (.I0(cnt_byte),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .O(data_shift1__0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data_shift[7]_i_11 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .I3(cnt_flag_reg__0[5]),
        .I4(state_0[2]),
        .O(\data_shift[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[7]_i_12 
       (.I0(Q[14]),
        .I1(data_shift127_out__0),
        .I2(wr_req),
        .I3(cnt_byte),
        .I4(Q[7]),
        .I5(in20[7]),
        .O(in19[7]));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \data_shift[7]_i_2 
       (.I0(state_0[0]),
        .I1(Q[23]),
        .I2(state_0[3]),
        .I3(\data_shift[7]_i_5_n_0 ),
        .I4(state_0[2]),
        .I5(\data_shift[7]_i_6_n_0 ),
        .O(\data_shift[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \data_shift[7]_i_3 
       (.I0(data_shift127_out__0),
        .I1(cnt_flag_reg__0[0]),
        .I2(cnt_flag_reg__0[1]),
        .I3(drive_flag),
        .I4(cnt_flag_reg__0[5]),
        .O(\data_shift[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000133FF0001)) 
    \data_shift[7]_i_4 
       (.I0(data_shift125_out__0),
        .I1(data_shift044_out__1),
        .I2(data_shift1__0),
        .I3(state_0[2]),
        .I4(state_0[1]),
        .I5(\data_shift[7]_i_11_n_0 ),
        .O(\data_shift[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8CFF8C00)) 
    \data_shift[7]_i_5 
       (.I0(state_0[0]),
        .I1(in20[7]),
        .I2(data_shift127_out__0),
        .I3(state_0[1]),
        .I4(Q[23]),
        .O(\data_shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEF45404040)) 
    \data_shift[7]_i_6 
       (.I0(state_0[1]),
        .I1(in19[7]),
        .I2(state_0[0]),
        .I3(Q[22]),
        .I4(data_shift127_out__0),
        .I5(in20[7]),
        .O(\data_shift[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \data_shift[7]_i_7 
       (.I0(ack_flag_reg_n_0),
        .I1(drive_flag),
        .I2(\cnt_flag[5]_i_6_n_0 ),
        .I3(\cnt_flag[5]_i_5_n_0 ),
        .I4(cnt_flag_reg__0[3]),
        .I5(\cnt_flag[5]_i_4_n_0 ),
        .O(data_shift127_out__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_shift[7]_i_8 
       (.I0(data_shift127_out__0),
        .I1(wr_req),
        .I2(cnt_byte),
        .O(data_shift125_out__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \data_shift[7]_i_9 
       (.I0(cnt_flag_reg__0[5]),
        .I1(drive_flag),
        .I2(cnt_flag_reg__0[1]),
        .I3(cnt_flag_reg__0[0]),
        .O(data_shift044_out__1));
  FDRE \data_shift_reg[0] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[0]_i_1_n_0 ),
        .Q(in20[1]),
        .R(rst));
  FDRE \data_shift_reg[1] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[1]_i_1_n_0 ),
        .Q(in20[2]),
        .R(rst));
  FDRE \data_shift_reg[2] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[2]_i_1_n_0 ),
        .Q(in20[3]),
        .R(rst));
  FDRE \data_shift_reg[3] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[3]_i_1_n_0 ),
        .Q(in20[4]),
        .R(rst));
  FDRE \data_shift_reg[4] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[4]_i_1_n_0 ),
        .Q(in20[5]),
        .R(rst));
  FDRE \data_shift_reg[5] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[5]_i_1_n_0 ),
        .Q(in20[6]),
        .R(rst));
  FDRE \data_shift_reg[6] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[6]_i_1_n_0 ),
        .Q(in20[7]),
        .R(rst));
  FDRE \data_shift_reg[7] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[7]_i_2_n_0 ),
        .Q(\data_shift_reg_n_0_[7] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFABEAAAAA)) 
    drive_flag_i_1
       (.I0(drive_flag_i_2_n_0),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[6]),
        .I3(cnt_reg__0[4]),
        .I4(drive_flag_i_3_n_0),
        .I5(p_2_in6_in),
        .O(drive_flag0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    drive_flag_i_2
       (.I0(cnt_reg__0[4]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[6]),
        .I3(cnt_reg__0[3]),
        .I4(cnt_reg__0[1]),
        .I5(drive_flag_i_5_n_0),
        .O(drive_flag_i_2_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    drive_flag_i_3
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[7]),
        .I2(drive_flag_i_5_n_0),
        .O(drive_flag_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    drive_flag_i_4
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[4]),
        .I3(cnt_reg__0[6]),
        .I4(drive_flag_i_6_n_0),
        .O(p_2_in6_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    drive_flag_i_5
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[5]),
        .I2(cnt_reg__0[9]),
        .I3(cnt_reg__0[8]),
        .I4(cnt_reg__0[0]),
        .O(drive_flag_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    drive_flag_i_6
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[5]),
        .I3(cnt_reg__0[9]),
        .I4(cnt_reg__0[8]),
        .I5(cnt_reg__0[1]),
        .O(drive_flag_i_6_n_0));
  FDRE drive_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(drive_flag0),
        .Q(drive_flag),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3F3B)) 
    scl_i_1
       (.I0(cmos_scl),
        .I1(work_flag_reg_n_0),
        .I2(scl1__0),
        .I3(end_cnt_freq__0),
        .I4(scl3_out__1),
        .I5(rst),
        .O(scl_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    scl_i_2
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(state_0[3]),
        .I3(state_0[2]),
        .I4(p_32_in),
        .O(scl1__0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    scl_i_3
       (.I0(cnt_freq[0]),
        .I1(cnt_freq[2]),
        .I2(cnt_freq[1]),
        .I3(drive_flag),
        .O(end_cnt_freq__0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    scl_i_4
       (.I0(scl_i_6_n_0),
        .I1(cnt_freq[1]),
        .I2(cnt_freq[0]),
        .I3(cnt_freq[2]),
        .I4(drive_flag),
        .I5(work_flag_reg_n_0),
        .O(scl3_out__1));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    scl_i_5
       (.I0(cnt_freq[1]),
        .I1(cnt_freq[0]),
        .I2(cnt_freq[2]),
        .I3(drive_flag),
        .O(p_32_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    scl_i_6
       (.I0(state_0[1]),
        .I1(state_0[3]),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .O(scl_i_6_n_0));
  FDRE scl_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .Q(cmos_scl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000033223333CC0C)) 
    \state[1]_i_1 
       (.I0(wr_done),
        .I1(state[1]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[2] ),
        .I4(state[0]),
        .I5(state[2]),
        .O(wr_done_reg_1));
  LUT6 #(
    .INIT(64'h00000011000000C0)) 
    \state[2]_i_1 
       (.I0(wr_done),
        .I1(state[1]),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[2] ),
        .I4(state[0]),
        .I5(state[2]),
        .O(wr_done_reg_0));
  LUT6 #(
    .INIT(64'h555555D5000000C0)) 
    work_flag_i_1
       (.I0(wr_done),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[3]),
        .I4(state_0[1]),
        .I5(work_flag_reg_n_0),
        .O(work_flag_i_1_n_0));
  FDRE work_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(work_flag_i_1_n_0),
        .Q(work_flag_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    wr_done_i_1
       (.I0(wr_req),
        .I1(wr_done1__0),
        .I2(wr_done),
        .O(wr_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    wr_done_i_2
       (.I0(state_0[0]),
        .I1(state_0[2]),
        .I2(state_0[3]),
        .I3(state_0[1]),
        .I4(end_cnt_flag__0),
        .O(wr_done1__0));
  FDRE wr_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_done_i_1_n_0),
        .Q(wr_done),
        .R(rst));
  LUT5 #(
    .INIT(32'h036D004D)) 
    wr_en_i_1
       (.I0(cnt_flag_reg__0[5]),
        .I1(state_0[2]),
        .I2(state_0[1]),
        .I3(state_0[3]),
        .I4(state_0[0]),
        .O(wr_en_i_1_n_0));
  FDRE wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
        .Q(wr_en_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wr_index[8]_i_1 
       (.I0(\state_reg[2] ),
        .I1(wr_done),
        .I2(Q[23]),
        .O(E));
  LUT5 #(
    .INIT(32'h0000000E)) 
    wr_req_i_1
       (.I0(wr_req),
        .I1(wr_req0),
        .I2(\state_reg[2] ),
        .I3(wr_done),
        .I4(rst),
        .O(wr_req_reg));
  LUT6 #(
    .INIT(64'hF8F8F8FFF8F8F8F0)) 
    wr_sda_i_1
       (.I0(wr_sda_i_2_n_0),
        .I1(wr_sda_i_3_n_0),
        .I2(rst),
        .I3(wr_sda_i_4_n_0),
        .I4(wr_sda_i_5_n_0),
        .I5(wr_sda_reg_n_0),
        .O(wr_sda_i_1_n_0));
  LUT6 #(
    .INIT(64'h8F0F8F0F8F0F800F)) 
    wr_sda_i_10
       (.I0(drive_flag),
        .I1(wr_sda_i_12_n_0),
        .I2(state_0[0]),
        .I3(state_0[2]),
        .I4(state_0[1]),
        .I5(wr_sda_i_13_n_0),
        .O(wr_sda_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    wr_sda_i_11
       (.I0(cnt_flag_reg__0[3]),
        .I1(cnt_flag_reg__0[4]),
        .I2(cnt_flag_reg__0[2]),
        .I3(cnt_flag_reg__0[5]),
        .O(wr_sda_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    wr_sda_i_12
       (.I0(cnt_flag_reg__0[4]),
        .I1(cnt_flag_reg__0[3]),
        .I2(cnt_flag_reg__0[2]),
        .I3(cnt_flag_reg__0[0]),
        .I4(cnt_flag_reg__0[5]),
        .I5(cnt_flag_reg__0[1]),
        .O(wr_sda_i_12_n_0));
  LUT6 #(
    .INIT(64'hCCFCCCEECCCCCCCC)) 
    wr_sda_i_13
       (.I0(wr_en_reg_n_0),
        .I1(rst),
        .I2(drive_flag),
        .I3(cnt_flag_reg__0[1]),
        .I4(cnt_flag_reg__0[0]),
        .I5(wr_sda_i_11_n_0),
        .O(wr_sda_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF5D5D5DFDF)) 
    wr_sda_i_2
       (.I0(state_0[0]),
        .I1(wr_sda_i_6_n_0),
        .I2(state_0[3]),
        .I3(cnt_flag_reg__0[5]),
        .I4(state_0[2]),
        .I5(state_0[1]),
        .O(wr_sda_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFAEFFAAFFAEAA)) 
    wr_sda_i_3
       (.I0(state_0[3]),
        .I1(wr_sda6_in),
        .I2(wr_sda1__0),
        .I3(state_0[2]),
        .I4(state_0[1]),
        .I5(\data_shift_reg_n_0_[7] ),
        .O(wr_sda_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F4A4)) 
    wr_sda_i_4
       (.I0(state_0[2]),
        .I1(cnt_flag_reg__0[5]),
        .I2(state_0[3]),
        .I3(wr_sda6_in),
        .I4(wr_sda_i_9_n_0),
        .I5(wr_sda_i_10_n_0),
        .O(wr_sda_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    wr_sda_i_5
       (.I0(state_0[1]),
        .I1(state_0[3]),
        .I2(state_0[2]),
        .O(wr_sda_i_5_n_0));
  LUT6 #(
    .INIT(64'hFEFEEEFEFEFEFEFE)) 
    wr_sda_i_6
       (.I0(state_0[2]),
        .I1(wr_sda_i_9_n_0),
        .I2(rst),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(cnt_flag_reg__0[1]),
        .I5(drive_flag),
        .O(wr_sda_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    wr_sda_i_7
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .I3(rst),
        .O(wr_sda6_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    wr_sda_i_8
       (.I0(wr_en_reg_n_0),
        .I1(wr_sda_i_11_n_0),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[1]),
        .O(wr_sda1__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    wr_sda_i_9
       (.I0(cnt_flag_reg__0[5]),
        .I1(cnt_flag_reg__0[4]),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[1]),
        .I4(cnt_flag_reg__0[3]),
        .I5(cnt_flag_reg__0[2]),
        .O(wr_sda_i_9_n_0));
  FDRE wr_sda_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_sda_i_1_n_0),
        .Q(wr_sda_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
