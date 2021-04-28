// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 19 21:56:46 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top design_1_raw_colorbar_gen_0_0 -prefix
//               design_1_raw_colorbar_gen_0_0_ design_1_raw_colorbar_gen_0_0_sim_netlist.v
// Design      : design_1_raw_colorbar_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_raw_colorbar_gen_0_0,raw_colorbar_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "raw_colorbar_gen,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_raw_colorbar_gen_0_0
   (reset_n,
    clk,
    data_i,
    fv,
    lv,
    data,
    de,
    vsync,
    hsync,
    x_cnt,
    y_cnt,
    h_cnt,
    v_cnt,
    ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 65000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire clk;
  wire [8:8]\^data ;
  wire de;
  wire fv;
  wire [10:0]\^h_cnt ;
  wire hsync;
  wire lv;
  wire ready;
  wire reset_n;
  wire [11:0]v_cnt;
  wire vsync;
  wire [11:0]x_cnt;
  wire [11:0]y_cnt;

  assign data[9] = \^data [8];
  assign data[8] = \^data [8];
  assign data[7] = \^data [8];
  assign data[6] = \^data [8];
  assign data[5] = \^data [8];
  assign data[4] = \^data [8];
  assign data[3] = \^data [8];
  assign data[2] = \^data [8];
  assign data[1] = \^data [8];
  assign data[0] = \^data [8];
  assign h_cnt[11] = \<const0> ;
  assign h_cnt[10:0] = \^h_cnt [10:0];
  GND GND
       (.G(\<const0> ));
  design_1_raw_colorbar_gen_0_0_raw_colorbar_gen inst
       (.clk(clk),
        .data(\^data ),
        .de(de),
        .fv(fv),
        .h_cnt(\^h_cnt ),
        .hsync(hsync),
        .lv(lv),
        .ready(ready),
        .reset_n(reset_n),
        .v_cnt(v_cnt),
        .vsync(vsync),
        .x_cnt(x_cnt),
        .y_cnt(y_cnt));
endmodule

module design_1_raw_colorbar_gen_0_0_raw_colorbar_gen
   (x_cnt,
    fv,
    lv,
    de,
    vsync,
    hsync,
    h_cnt,
    v_cnt,
    ready,
    y_cnt,
    data,
    reset_n,
    clk);
  output [11:0]x_cnt;
  output fv;
  output lv;
  output de;
  output vsync;
  output hsync;
  output [10:0]h_cnt;
  output [11:0]v_cnt;
  output ready;
  output [11:0]y_cnt;
  output [0:0]data;
  input reset_n;
  input clk;

  wire ative_line_cnt0;
  wire \ative_line_cnt[11]_i_1_n_0 ;
  wire \ative_line_cnt[11]_i_4_n_0 ;
  wire \ative_line_cnt[3]_i_2_n_0 ;
  wire \ative_line_cnt_reg[11]_i_3_n_1 ;
  wire \ative_line_cnt_reg[11]_i_3_n_2 ;
  wire \ative_line_cnt_reg[11]_i_3_n_3 ;
  wire \ative_line_cnt_reg[11]_i_3_n_4 ;
  wire \ative_line_cnt_reg[11]_i_3_n_5 ;
  wire \ative_line_cnt_reg[11]_i_3_n_6 ;
  wire \ative_line_cnt_reg[11]_i_3_n_7 ;
  wire \ative_line_cnt_reg[3]_i_1_n_0 ;
  wire \ative_line_cnt_reg[3]_i_1_n_1 ;
  wire \ative_line_cnt_reg[3]_i_1_n_2 ;
  wire \ative_line_cnt_reg[3]_i_1_n_3 ;
  wire \ative_line_cnt_reg[3]_i_1_n_4 ;
  wire \ative_line_cnt_reg[3]_i_1_n_5 ;
  wire \ative_line_cnt_reg[3]_i_1_n_6 ;
  wire \ative_line_cnt_reg[3]_i_1_n_7 ;
  wire \ative_line_cnt_reg[7]_i_1_n_0 ;
  wire \ative_line_cnt_reg[7]_i_1_n_1 ;
  wire \ative_line_cnt_reg[7]_i_1_n_2 ;
  wire \ative_line_cnt_reg[7]_i_1_n_3 ;
  wire \ative_line_cnt_reg[7]_i_1_n_4 ;
  wire \ative_line_cnt_reg[7]_i_1_n_5 ;
  wire \ative_line_cnt_reg[7]_i_1_n_6 ;
  wire \ative_line_cnt_reg[7]_i_1_n_7 ;
  wire clk;
  wire \color_cntr[11]_i_1_n_0 ;
  wire \color_cntr[3]_i_2_n_0 ;
  wire \color_cntr_reg[11]_i_2_n_1 ;
  wire \color_cntr_reg[11]_i_2_n_2 ;
  wire \color_cntr_reg[11]_i_2_n_3 ;
  wire \color_cntr_reg[11]_i_2_n_4 ;
  wire \color_cntr_reg[11]_i_2_n_5 ;
  wire \color_cntr_reg[11]_i_2_n_6 ;
  wire \color_cntr_reg[11]_i_2_n_7 ;
  wire \color_cntr_reg[3]_i_1_n_0 ;
  wire \color_cntr_reg[3]_i_1_n_1 ;
  wire \color_cntr_reg[3]_i_1_n_2 ;
  wire \color_cntr_reg[3]_i_1_n_3 ;
  wire \color_cntr_reg[3]_i_1_n_4 ;
  wire \color_cntr_reg[3]_i_1_n_5 ;
  wire \color_cntr_reg[3]_i_1_n_6 ;
  wire \color_cntr_reg[3]_i_1_n_7 ;
  wire \color_cntr_reg[7]_i_1_n_0 ;
  wire \color_cntr_reg[7]_i_1_n_1 ;
  wire \color_cntr_reg[7]_i_1_n_2 ;
  wire \color_cntr_reg[7]_i_1_n_3 ;
  wire \color_cntr_reg[7]_i_1_n_4 ;
  wire \color_cntr_reg[7]_i_1_n_5 ;
  wire \color_cntr_reg[7]_i_1_n_6 ;
  wire \color_cntr_reg[7]_i_1_n_7 ;
  wire [0:0]data;
  wire de;
  wire de_r;
  wire de_r_i_1_n_0;
  wire fv;
  wire fv_r;
  wire [10:0]h_cnt;
  wire hsync;
  wire hsync_r;
  wire hsync_r0;
  wire hsync_r_i_2_n_0;
  wire linecnt08_out;
  wire \linecnt[0]_i_10_n_0 ;
  wire \linecnt[0]_i_1_n_0 ;
  wire \linecnt[0]_i_4_n_0 ;
  wire \linecnt[0]_i_5_n_0 ;
  wire \linecnt[0]_i_6_n_0 ;
  wire \linecnt[0]_i_7_n_0 ;
  wire \linecnt[0]_i_8_n_0 ;
  wire \linecnt[0]_i_9_n_0 ;
  wire [11:0]linecnt_dly_1;
  wire [11:0]linecnt_reg;
  wire \linecnt_reg[0]_i_3_n_0 ;
  wire \linecnt_reg[0]_i_3_n_1 ;
  wire \linecnt_reg[0]_i_3_n_2 ;
  wire \linecnt_reg[0]_i_3_n_3 ;
  wire \linecnt_reg[0]_i_3_n_4 ;
  wire \linecnt_reg[0]_i_3_n_5 ;
  wire \linecnt_reg[0]_i_3_n_6 ;
  wire \linecnt_reg[0]_i_3_n_7 ;
  wire \linecnt_reg[4]_i_1_n_0 ;
  wire \linecnt_reg[4]_i_1_n_1 ;
  wire \linecnt_reg[4]_i_1_n_2 ;
  wire \linecnt_reg[4]_i_1_n_3 ;
  wire \linecnt_reg[4]_i_1_n_4 ;
  wire \linecnt_reg[4]_i_1_n_5 ;
  wire \linecnt_reg[4]_i_1_n_6 ;
  wire \linecnt_reg[4]_i_1_n_7 ;
  wire \linecnt_reg[8]_i_1_n_1 ;
  wire \linecnt_reg[8]_i_1_n_2 ;
  wire \linecnt_reg[8]_i_1_n_3 ;
  wire \linecnt_reg[8]_i_1_n_4 ;
  wire \linecnt_reg[8]_i_1_n_5 ;
  wire \linecnt_reg[8]_i_1_n_6 ;
  wire \linecnt_reg[8]_i_1_n_7 ;
  wire lv;
  wire lv_r;
  wire lv_r0;
  wire p_0_in;
  wire [10:0]p_0_in__0;
  wire [9:9]p_1_in;
  wire p_4_in;
  wire \pixcnt[10]_i_1_n_0 ;
  wire \pixcnt[10]_i_3_n_0 ;
  wire \pixcnt[10]_i_4_n_0 ;
  wire [10:0]pixcnt_dly_1;
  wire [10:0]pixcnt_reg__0;
  wire raw_data1__0_carry__0_i_1_n_0;
  wire raw_data1__0_carry__0_i_2_n_0;
  wire raw_data1__0_carry__0_i_3_n_0;
  wire raw_data1__0_carry__0_i_4_n_0;
  wire raw_data1__0_carry__0_i_5_n_0;
  wire raw_data1__0_carry__0_i_6_n_0;
  wire raw_data1__0_carry__0_i_7_n_0;
  wire raw_data1__0_carry__0_i_8_n_0;
  wire raw_data1__0_carry__0_n_0;
  wire raw_data1__0_carry__0_n_1;
  wire raw_data1__0_carry__0_n_2;
  wire raw_data1__0_carry__0_n_3;
  wire raw_data1__0_carry__1_i_1_n_0;
  wire raw_data1__0_carry__1_i_2_n_0;
  wire raw_data1__0_carry__1_i_3_n_0;
  wire raw_data1__0_carry__1_i_4_n_0;
  wire raw_data1__0_carry__1_i_5_n_0;
  wire raw_data1__0_carry__1_i_6_n_0;
  wire raw_data1__0_carry__1_i_7_n_0;
  wire raw_data1__0_carry__1_i_8_n_0;
  wire raw_data1__0_carry__1_n_0;
  wire raw_data1__0_carry__1_n_1;
  wire raw_data1__0_carry__1_n_2;
  wire raw_data1__0_carry__1_n_3;
  wire raw_data1__0_carry__1_n_4;
  wire raw_data1__0_carry__1_n_5;
  wire raw_data1__0_carry__2_i_1_n_0;
  wire raw_data1__0_carry__2_i_2_n_0;
  wire raw_data1__0_carry__2_i_3_n_0;
  wire raw_data1__0_carry__2_n_3;
  wire raw_data1__0_carry__2_n_6;
  wire raw_data1__0_carry__2_n_7;
  wire raw_data1__0_carry_i_1_n_0;
  wire raw_data1__0_carry_i_2_n_0;
  wire raw_data1__0_carry_i_3_n_0;
  wire raw_data1__0_carry_i_4_n_0;
  wire raw_data1__0_carry_i_5_n_0;
  wire raw_data1__0_carry_i_6_n_0;
  wire raw_data1__0_carry_i_7_n_0;
  wire raw_data1__0_carry_n_0;
  wire raw_data1__0_carry_n_1;
  wire raw_data1__0_carry_n_2;
  wire raw_data1__0_carry_n_3;
  wire raw_data1__30_carry__0_i_1_n_0;
  wire raw_data1__30_carry__0_i_2_n_0;
  wire raw_data1__30_carry__0_i_3_n_0;
  wire raw_data1__30_carry__0_i_4_n_0;
  wire raw_data1__30_carry__0_i_5_n_0;
  wire raw_data1__30_carry__0_i_6_n_0;
  wire raw_data1__30_carry__0_i_7_n_0;
  wire raw_data1__30_carry__0_n_1;
  wire raw_data1__30_carry__0_n_2;
  wire raw_data1__30_carry__0_n_3;
  wire raw_data1__30_carry__0_n_4;
  wire raw_data1__30_carry__0_n_5;
  wire raw_data1__30_carry__0_n_6;
  wire raw_data1__30_carry__0_n_7;
  wire raw_data1__30_carry_i_1_n_0;
  wire raw_data1__30_carry_i_2_n_0;
  wire raw_data1__30_carry_i_3_n_0;
  wire raw_data1__30_carry_i_4_n_0;
  wire raw_data1__30_carry_n_0;
  wire raw_data1__30_carry_n_1;
  wire raw_data1__30_carry_n_2;
  wire raw_data1__30_carry_n_3;
  wire raw_data1__30_carry_n_4;
  wire raw_data1__30_carry_n_5;
  wire raw_data1__30_carry_n_6;
  wire raw_data1__30_carry_n_7;
  wire raw_data1__50_carry__0_i_1_n_0;
  wire raw_data1__50_carry__0_i_2_n_0;
  wire raw_data1__50_carry__0_i_3_n_0;
  wire raw_data1__50_carry__0_i_4_n_0;
  wire raw_data1__50_carry__0_n_0;
  wire raw_data1__50_carry__0_n_1;
  wire raw_data1__50_carry__0_n_2;
  wire raw_data1__50_carry__0_n_3;
  wire raw_data1__50_carry__0_n_4;
  wire raw_data1__50_carry__0_n_5;
  wire raw_data1__50_carry__0_n_6;
  wire raw_data1__50_carry__0_n_7;
  wire raw_data1__50_carry__1_i_1_n_0;
  wire raw_data1__50_carry__1_i_2_n_0;
  wire raw_data1__50_carry__1_n_3;
  wire raw_data1__50_carry__1_n_6;
  wire raw_data1__50_carry__1_n_7;
  wire raw_data1__50_carry_i_1_n_0;
  wire raw_data1__50_carry_i_2_n_0;
  wire raw_data1__50_carry_i_3_n_0;
  wire raw_data1__50_carry_i_4_n_0;
  wire raw_data1__50_carry_n_0;
  wire raw_data1__50_carry_n_1;
  wire raw_data1__50_carry_n_2;
  wire raw_data1__50_carry_n_3;
  wire raw_data1__50_carry_n_4;
  wire raw_data1__50_carry_n_5;
  wire \raw_data[9]_i_10_n_0 ;
  wire \raw_data[9]_i_11_n_0 ;
  wire \raw_data[9]_i_12_n_0 ;
  wire \raw_data[9]_i_13_n_0 ;
  wire \raw_data[9]_i_14_n_0 ;
  wire \raw_data[9]_i_15_n_0 ;
  wire \raw_data[9]_i_16_n_0 ;
  wire \raw_data[9]_i_2_n_0 ;
  wire \raw_data[9]_i_3_n_0 ;
  wire \raw_data[9]_i_4_n_0 ;
  wire \raw_data[9]_i_5_n_0 ;
  wire \raw_data[9]_i_6_n_0 ;
  wire \raw_data[9]_i_7_n_0 ;
  wire \raw_data[9]_i_8_n_0 ;
  wire \raw_data[9]_i_9_n_0 ;
  wire ready;
  wire reset_n;
  wire [11:0]v_cnt;
  wire vsync;
  wire vsync_r;
  wire vsync_r0;
  wire vsync_r_i_2_n_0;
  wire vsync_r_i_3_n_0;
  wire [11:0]x_cnt;
  wire [11:0]y_cnt;
  wire [3:3]\NLW_ative_line_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_color_cntr_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_linecnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_raw_data1__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_raw_data1__0_carry__0_O_UNCONNECTED;
  wire [1:0]NLW_raw_data1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_raw_data1__0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_raw_data1__0_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_raw_data1__30_carry__0_CO_UNCONNECTED;
  wire [1:0]NLW_raw_data1__50_carry_O_UNCONNECTED;
  wire [3:1]NLW_raw_data1__50_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_raw_data1__50_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h7)) 
    \ative_line_cnt[11]_i_1 
       (.I0(reset_n),
        .I1(fv_r),
        .O(\ative_line_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ative_line_cnt[11]_i_2 
       (.I0(h_cnt[3]),
        .I1(h_cnt[4]),
        .I2(h_cnt[2]),
        .I3(h_cnt[1]),
        .I4(h_cnt[0]),
        .I5(\ative_line_cnt[11]_i_4_n_0 ),
        .O(ative_line_cnt0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ative_line_cnt[11]_i_4 
       (.I0(h_cnt[8]),
        .I1(h_cnt[7]),
        .I2(h_cnt[5]),
        .I3(h_cnt[6]),
        .I4(h_cnt[9]),
        .I5(h_cnt[10]),
        .O(\ative_line_cnt[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ative_line_cnt[3]_i_2 
       (.I0(y_cnt[0]),
        .O(\ative_line_cnt[3]_i_2_n_0 ));
  FDRE \ative_line_cnt_reg[0] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[3]_i_1_n_7 ),
        .Q(y_cnt[0]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[10] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[11]_i_3_n_5 ),
        .Q(y_cnt[10]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[11] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[11]_i_3_n_4 ),
        .Q(y_cnt[11]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  CARRY4 \ative_line_cnt_reg[11]_i_3 
       (.CI(\ative_line_cnt_reg[7]_i_1_n_0 ),
        .CO({\NLW_ative_line_cnt_reg[11]_i_3_CO_UNCONNECTED [3],\ative_line_cnt_reg[11]_i_3_n_1 ,\ative_line_cnt_reg[11]_i_3_n_2 ,\ative_line_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ative_line_cnt_reg[11]_i_3_n_4 ,\ative_line_cnt_reg[11]_i_3_n_5 ,\ative_line_cnt_reg[11]_i_3_n_6 ,\ative_line_cnt_reg[11]_i_3_n_7 }),
        .S(y_cnt[11:8]));
  FDRE \ative_line_cnt_reg[1] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[3]_i_1_n_6 ),
        .Q(y_cnt[1]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[2] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[3]_i_1_n_5 ),
        .Q(y_cnt[2]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[3] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[3]_i_1_n_4 ),
        .Q(y_cnt[3]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  CARRY4 \ative_line_cnt_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\ative_line_cnt_reg[3]_i_1_n_0 ,\ative_line_cnt_reg[3]_i_1_n_1 ,\ative_line_cnt_reg[3]_i_1_n_2 ,\ative_line_cnt_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ative_line_cnt_reg[3]_i_1_n_4 ,\ative_line_cnt_reg[3]_i_1_n_5 ,\ative_line_cnt_reg[3]_i_1_n_6 ,\ative_line_cnt_reg[3]_i_1_n_7 }),
        .S({y_cnt[3:1],\ative_line_cnt[3]_i_2_n_0 }));
  FDRE \ative_line_cnt_reg[4] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[7]_i_1_n_7 ),
        .Q(y_cnt[4]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[5] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[7]_i_1_n_6 ),
        .Q(y_cnt[5]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[6] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[7]_i_1_n_5 ),
        .Q(y_cnt[6]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[7] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[7]_i_1_n_4 ),
        .Q(y_cnt[7]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  CARRY4 \ative_line_cnt_reg[7]_i_1 
       (.CI(\ative_line_cnt_reg[3]_i_1_n_0 ),
        .CO({\ative_line_cnt_reg[7]_i_1_n_0 ,\ative_line_cnt_reg[7]_i_1_n_1 ,\ative_line_cnt_reg[7]_i_1_n_2 ,\ative_line_cnt_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ative_line_cnt_reg[7]_i_1_n_4 ,\ative_line_cnt_reg[7]_i_1_n_5 ,\ative_line_cnt_reg[7]_i_1_n_6 ,\ative_line_cnt_reg[7]_i_1_n_7 }),
        .S(y_cnt[7:4]));
  FDRE \ative_line_cnt_reg[8] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[11]_i_3_n_7 ),
        .Q(y_cnt[8]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  FDRE \ative_line_cnt_reg[9] 
       (.C(clk),
        .CE(ative_line_cnt0),
        .D(\ative_line_cnt_reg[11]_i_3_n_6 ),
        .Q(y_cnt[9]),
        .R(\ative_line_cnt[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \color_cntr[11]_i_1 
       (.I0(reset_n),
        .I1(lv_r),
        .O(\color_cntr[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \color_cntr[3]_i_2 
       (.I0(x_cnt[0]),
        .O(\color_cntr[3]_i_2_n_0 ));
  FDRE \color_cntr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[3]_i_1_n_7 ),
        .Q(x_cnt[0]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[11]_i_2_n_5 ),
        .Q(x_cnt[10]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[11]_i_2_n_4 ),
        .Q(x_cnt[11]),
        .R(\color_cntr[11]_i_1_n_0 ));
  CARRY4 \color_cntr_reg[11]_i_2 
       (.CI(\color_cntr_reg[7]_i_1_n_0 ),
        .CO({\NLW_color_cntr_reg[11]_i_2_CO_UNCONNECTED [3],\color_cntr_reg[11]_i_2_n_1 ,\color_cntr_reg[11]_i_2_n_2 ,\color_cntr_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\color_cntr_reg[11]_i_2_n_4 ,\color_cntr_reg[11]_i_2_n_5 ,\color_cntr_reg[11]_i_2_n_6 ,\color_cntr_reg[11]_i_2_n_7 }),
        .S(x_cnt[11:8]));
  FDRE \color_cntr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[3]_i_1_n_6 ),
        .Q(x_cnt[1]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[3]_i_1_n_5 ),
        .Q(x_cnt[2]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[3]_i_1_n_4 ),
        .Q(x_cnt[3]),
        .R(\color_cntr[11]_i_1_n_0 ));
  CARRY4 \color_cntr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\color_cntr_reg[3]_i_1_n_0 ,\color_cntr_reg[3]_i_1_n_1 ,\color_cntr_reg[3]_i_1_n_2 ,\color_cntr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\color_cntr_reg[3]_i_1_n_4 ,\color_cntr_reg[3]_i_1_n_5 ,\color_cntr_reg[3]_i_1_n_6 ,\color_cntr_reg[3]_i_1_n_7 }),
        .S({x_cnt[3:1],\color_cntr[3]_i_2_n_0 }));
  FDRE \color_cntr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[7]_i_1_n_7 ),
        .Q(x_cnt[4]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[7]_i_1_n_6 ),
        .Q(x_cnt[5]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[7]_i_1_n_5 ),
        .Q(x_cnt[6]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[7]_i_1_n_4 ),
        .Q(x_cnt[7]),
        .R(\color_cntr[11]_i_1_n_0 ));
  CARRY4 \color_cntr_reg[7]_i_1 
       (.CI(\color_cntr_reg[3]_i_1_n_0 ),
        .CO({\color_cntr_reg[7]_i_1_n_0 ,\color_cntr_reg[7]_i_1_n_1 ,\color_cntr_reg[7]_i_1_n_2 ,\color_cntr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\color_cntr_reg[7]_i_1_n_4 ,\color_cntr_reg[7]_i_1_n_5 ,\color_cntr_reg[7]_i_1_n_6 ,\color_cntr_reg[7]_i_1_n_7 }),
        .S(x_cnt[7:4]));
  FDRE \color_cntr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[11]_i_2_n_7 ),
        .Q(x_cnt[8]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE \color_cntr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\color_cntr_reg[11]_i_2_n_6 ),
        .Q(x_cnt[9]),
        .R(\color_cntr[11]_i_1_n_0 ));
  FDRE de_dly_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(de_r),
        .Q(de),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h1500FFFF15000000)) 
    de_r_i_1
       (.I0(pixcnt_reg__0[10]),
        .I1(linecnt_reg[8]),
        .I2(linecnt_reg[9]),
        .I3(vsync_r_i_3_n_0),
        .I4(reset_n),
        .I5(de_r),
        .O(de_r_i_1_n_0));
  FDRE de_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(de_r_i_1_n_0),
        .Q(de_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    fv_dly_1_i_1
       (.I0(reset_n),
        .O(p_0_in));
  FDRE fv_dly_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(fv_r),
        .Q(fv),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    fv_r_i_1
       (.I0(linecnt_reg[11]),
        .I1(linecnt_reg[10]),
        .I2(linecnt_reg[9]),
        .I3(linecnt_reg[8]),
        .O(p_4_in));
  FDRE fv_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_4_in),
        .Q(fv_r),
        .R(p_0_in));
  FDRE hsync_dly_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_r),
        .Q(hsync),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    hsync_r_i_1
       (.I0(pixcnt_reg__0[8]),
        .I1(pixcnt_reg__0[10]),
        .I2(pixcnt_reg__0[9]),
        .I3(hsync_r_i_2_n_0),
        .O(hsync_r0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1111FEEE)) 
    hsync_r_i_2
       (.I0(pixcnt_reg__0[5]),
        .I1(pixcnt_reg__0[6]),
        .I2(pixcnt_reg__0[4]),
        .I3(pixcnt_reg__0[3]),
        .I4(pixcnt_reg__0[7]),
        .O(hsync_r_i_2_n_0));
  FDRE hsync_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_r0),
        .Q(hsync_r),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    \linecnt[0]_i_1 
       (.I0(\linecnt[0]_i_4_n_0 ),
        .I1(pixcnt_reg__0[6]),
        .I2(pixcnt_reg__0[7]),
        .I3(vsync_r_i_3_n_0),
        .I4(\linecnt[0]_i_5_n_0 ),
        .I5(reset_n),
        .O(\linecnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \linecnt[0]_i_10 
       (.I0(pixcnt_reg__0[10]),
        .I1(pixcnt_reg__0[9]),
        .O(\linecnt[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4040404440404040)) 
    \linecnt[0]_i_2 
       (.I0(\pixcnt[10]_i_4_n_0 ),
        .I1(\linecnt[0]_i_6_n_0 ),
        .I2(\linecnt[0]_i_7_n_0 ),
        .I3(linecnt_reg[7]),
        .I4(linecnt_reg[6]),
        .I5(\linecnt[0]_i_8_n_0 ),
        .O(linecnt08_out));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \linecnt[0]_i_4 
       (.I0(linecnt_reg[1]),
        .I1(linecnt_reg[2]),
        .I2(linecnt_reg[0]),
        .I3(\linecnt[0]_i_10_n_0 ),
        .I4(\linecnt[0]_i_7_n_0 ),
        .I5(\pixcnt[10]_i_4_n_0 ),
        .O(\linecnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \linecnt[0]_i_5 
       (.I0(linecnt_reg[5]),
        .I1(linecnt_reg[6]),
        .I2(linecnt_reg[3]),
        .I3(linecnt_reg[4]),
        .I4(linecnt_reg[7]),
        .I5(pixcnt_reg__0[8]),
        .O(\linecnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \linecnt[0]_i_6 
       (.I0(pixcnt_reg__0[6]),
        .I1(pixcnt_reg__0[7]),
        .I2(pixcnt_reg__0[10]),
        .I3(pixcnt_reg__0[9]),
        .I4(pixcnt_reg__0[8]),
        .I5(vsync_r_i_3_n_0),
        .O(\linecnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \linecnt[0]_i_7 
       (.I0(linecnt_reg[8]),
        .I1(linecnt_reg[9]),
        .O(\linecnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000001FFFFFFFFF)) 
    \linecnt[0]_i_8 
       (.I0(linecnt_reg[1]),
        .I1(linecnt_reg[0]),
        .I2(linecnt_reg[2]),
        .I3(linecnt_reg[3]),
        .I4(linecnt_reg[4]),
        .I5(linecnt_reg[5]),
        .O(\linecnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \linecnt[0]_i_9 
       (.I0(linecnt_reg[0]),
        .O(\linecnt[0]_i_9_n_0 ));
  FDRE \linecnt_dly_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[0]),
        .Q(linecnt_dly_1[0]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[10]),
        .Q(linecnt_dly_1[10]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[11]),
        .Q(linecnt_dly_1[11]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[1]),
        .Q(linecnt_dly_1[1]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[2]),
        .Q(linecnt_dly_1[2]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[3]),
        .Q(linecnt_dly_1[3]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[4]),
        .Q(linecnt_dly_1[4]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[5]),
        .Q(linecnt_dly_1[5]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[6]),
        .Q(linecnt_dly_1[6]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[7]),
        .Q(linecnt_dly_1[7]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[8]),
        .Q(linecnt_dly_1[8]),
        .R(p_0_in));
  FDRE \linecnt_dly_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_reg[9]),
        .Q(linecnt_dly_1[9]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[0]),
        .Q(v_cnt[0]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[10]),
        .Q(v_cnt[10]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[11]),
        .Q(v_cnt[11]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[1]),
        .Q(v_cnt[1]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[2]),
        .Q(v_cnt[2]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[3]),
        .Q(v_cnt[3]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[4]),
        .Q(v_cnt[4]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[5]),
        .Q(v_cnt[5]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[6]),
        .Q(v_cnt[6]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[7]),
        .Q(v_cnt[7]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[8]),
        .Q(v_cnt[8]),
        .R(p_0_in));
  FDRE \linecnt_dly_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(linecnt_dly_1[9]),
        .Q(v_cnt[9]),
        .R(p_0_in));
  FDRE \linecnt_reg[0] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[0]_i_3_n_7 ),
        .Q(linecnt_reg[0]),
        .R(\linecnt[0]_i_1_n_0 ));
  CARRY4 \linecnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\linecnt_reg[0]_i_3_n_0 ,\linecnt_reg[0]_i_3_n_1 ,\linecnt_reg[0]_i_3_n_2 ,\linecnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\linecnt_reg[0]_i_3_n_4 ,\linecnt_reg[0]_i_3_n_5 ,\linecnt_reg[0]_i_3_n_6 ,\linecnt_reg[0]_i_3_n_7 }),
        .S({linecnt_reg[3:1],\linecnt[0]_i_9_n_0 }));
  FDRE \linecnt_reg[10] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[8]_i_1_n_5 ),
        .Q(linecnt_reg[10]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[11] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[8]_i_1_n_4 ),
        .Q(linecnt_reg[11]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[1] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[0]_i_3_n_6 ),
        .Q(linecnt_reg[1]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[2] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[0]_i_3_n_5 ),
        .Q(linecnt_reg[2]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[3] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[0]_i_3_n_4 ),
        .Q(linecnt_reg[3]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[4] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[4]_i_1_n_7 ),
        .Q(linecnt_reg[4]),
        .R(\linecnt[0]_i_1_n_0 ));
  CARRY4 \linecnt_reg[4]_i_1 
       (.CI(\linecnt_reg[0]_i_3_n_0 ),
        .CO({\linecnt_reg[4]_i_1_n_0 ,\linecnt_reg[4]_i_1_n_1 ,\linecnt_reg[4]_i_1_n_2 ,\linecnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\linecnt_reg[4]_i_1_n_4 ,\linecnt_reg[4]_i_1_n_5 ,\linecnt_reg[4]_i_1_n_6 ,\linecnt_reg[4]_i_1_n_7 }),
        .S(linecnt_reg[7:4]));
  FDRE \linecnt_reg[5] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[4]_i_1_n_6 ),
        .Q(linecnt_reg[5]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[6] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[4]_i_1_n_5 ),
        .Q(linecnt_reg[6]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[7] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[4]_i_1_n_4 ),
        .Q(linecnt_reg[7]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE \linecnt_reg[8] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[8]_i_1_n_7 ),
        .Q(linecnt_reg[8]),
        .R(\linecnt[0]_i_1_n_0 ));
  CARRY4 \linecnt_reg[8]_i_1 
       (.CI(\linecnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_linecnt_reg[8]_i_1_CO_UNCONNECTED [3],\linecnt_reg[8]_i_1_n_1 ,\linecnt_reg[8]_i_1_n_2 ,\linecnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\linecnt_reg[8]_i_1_n_4 ,\linecnt_reg[8]_i_1_n_5 ,\linecnt_reg[8]_i_1_n_6 ,\linecnt_reg[8]_i_1_n_7 }),
        .S(linecnt_reg[11:8]));
  FDRE \linecnt_reg[9] 
       (.C(clk),
        .CE(linecnt08_out),
        .D(\linecnt_reg[8]_i_1_n_6 ),
        .Q(linecnt_reg[9]),
        .R(\linecnt[0]_i_1_n_0 ));
  FDRE lv_dly_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(lv_r),
        .Q(lv),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    lv_r_i_1
       (.I0(pixcnt_reg__0[10]),
        .I1(linecnt_reg[8]),
        .I2(linecnt_reg[9]),
        .I3(linecnt_reg[11]),
        .I4(linecnt_reg[10]),
        .O(lv_r0));
  FDRE lv_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(lv_r0),
        .Q(lv_r),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \pixcnt[0]_i_1 
       (.I0(pixcnt_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hFDFF5555DDDD5555)) 
    \pixcnt[10]_i_1 
       (.I0(reset_n),
        .I1(pixcnt_reg__0[9]),
        .I2(\pixcnt[10]_i_3_n_0 ),
        .I3(\pixcnt[10]_i_4_n_0 ),
        .I4(pixcnt_reg__0[10]),
        .I5(pixcnt_reg__0[8]),
        .O(\pixcnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC6CCCCCCCCCCCCC)) 
    \pixcnt[10]_i_2 
       (.I0(pixcnt_reg__0[9]),
        .I1(pixcnt_reg__0[10]),
        .I2(pixcnt_reg__0[7]),
        .I3(\pixcnt[10]_i_4_n_0 ),
        .I4(pixcnt_reg__0[6]),
        .I5(pixcnt_reg__0[8]),
        .O(p_0_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pixcnt[10]_i_3 
       (.I0(pixcnt_reg__0[6]),
        .I1(pixcnt_reg__0[7]),
        .O(\pixcnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pixcnt[10]_i_4 
       (.I0(pixcnt_reg__0[4]),
        .I1(pixcnt_reg__0[2]),
        .I2(pixcnt_reg__0[0]),
        .I3(pixcnt_reg__0[1]),
        .I4(pixcnt_reg__0[3]),
        .I5(pixcnt_reg__0[5]),
        .O(\pixcnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixcnt[1]_i_1 
       (.I0(pixcnt_reg__0[0]),
        .I1(pixcnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pixcnt[2]_i_1 
       (.I0(pixcnt_reg__0[1]),
        .I1(pixcnt_reg__0[0]),
        .I2(pixcnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pixcnt[3]_i_1 
       (.I0(pixcnt_reg__0[2]),
        .I1(pixcnt_reg__0[0]),
        .I2(pixcnt_reg__0[1]),
        .I3(pixcnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pixcnt[4]_i_1 
       (.I0(pixcnt_reg__0[3]),
        .I1(pixcnt_reg__0[1]),
        .I2(pixcnt_reg__0[0]),
        .I3(pixcnt_reg__0[2]),
        .I4(pixcnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pixcnt[5]_i_1 
       (.I0(pixcnt_reg__0[4]),
        .I1(pixcnt_reg__0[2]),
        .I2(pixcnt_reg__0[0]),
        .I3(pixcnt_reg__0[1]),
        .I4(pixcnt_reg__0[3]),
        .I5(pixcnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pixcnt[6]_i_1 
       (.I0(\pixcnt[10]_i_4_n_0 ),
        .I1(pixcnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \pixcnt[7]_i_1 
       (.I0(pixcnt_reg__0[6]),
        .I1(\pixcnt[10]_i_4_n_0 ),
        .I2(pixcnt_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \pixcnt[8]_i_1 
       (.I0(pixcnt_reg__0[7]),
        .I1(\pixcnt[10]_i_4_n_0 ),
        .I2(pixcnt_reg__0[6]),
        .I3(pixcnt_reg__0[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \pixcnt[9]_i_1 
       (.I0(pixcnt_reg__0[8]),
        .I1(pixcnt_reg__0[6]),
        .I2(\pixcnt[10]_i_4_n_0 ),
        .I3(pixcnt_reg__0[7]),
        .I4(pixcnt_reg__0[9]),
        .O(p_0_in__0[9]));
  FDRE \pixcnt_dly_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[0]),
        .Q(pixcnt_dly_1[0]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[10]),
        .Q(pixcnt_dly_1[10]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[1]),
        .Q(pixcnt_dly_1[1]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[2]),
        .Q(pixcnt_dly_1[2]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[3]),
        .Q(pixcnt_dly_1[3]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[4]),
        .Q(pixcnt_dly_1[4]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[5]),
        .Q(pixcnt_dly_1[5]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[6]),
        .Q(pixcnt_dly_1[6]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[7]),
        .Q(pixcnt_dly_1[7]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[8]),
        .Q(pixcnt_dly_1[8]),
        .R(p_0_in));
  FDRE \pixcnt_dly_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_reg__0[9]),
        .Q(pixcnt_dly_1[9]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[0]),
        .Q(h_cnt[0]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[10]),
        .Q(h_cnt[10]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[1]),
        .Q(h_cnt[1]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[2]),
        .Q(h_cnt[2]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[3]),
        .Q(h_cnt[3]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[4]),
        .Q(h_cnt[4]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[5]),
        .Q(h_cnt[5]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[6]),
        .Q(h_cnt[6]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[7]),
        .Q(h_cnt[7]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[8]),
        .Q(h_cnt[8]),
        .R(p_0_in));
  FDRE \pixcnt_dly_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(pixcnt_dly_1[9]),
        .Q(h_cnt[9]),
        .R(p_0_in));
  FDRE \pixcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(pixcnt_reg__0[0]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(pixcnt_reg__0[10]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(pixcnt_reg__0[1]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(pixcnt_reg__0[2]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(pixcnt_reg__0[3]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(pixcnt_reg__0[4]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(pixcnt_reg__0[5]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(pixcnt_reg__0[6]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(pixcnt_reg__0[7]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(pixcnt_reg__0[8]),
        .R(\pixcnt[10]_i_1_n_0 ));
  FDRE \pixcnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(pixcnt_reg__0[9]),
        .R(\pixcnt[10]_i_1_n_0 ));
  CARRY4 raw_data1__0_carry
       (.CI(1'b0),
        .CO({raw_data1__0_carry_n_0,raw_data1__0_carry_n_1,raw_data1__0_carry_n_2,raw_data1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({raw_data1__0_carry_i_1_n_0,raw_data1__0_carry_i_2_n_0,raw_data1__0_carry_i_3_n_0,1'b0}),
        .O(NLW_raw_data1__0_carry_O_UNCONNECTED[3:0]),
        .S({raw_data1__0_carry_i_4_n_0,raw_data1__0_carry_i_5_n_0,raw_data1__0_carry_i_6_n_0,raw_data1__0_carry_i_7_n_0}));
  CARRY4 raw_data1__0_carry__0
       (.CI(raw_data1__0_carry_n_0),
        .CO({raw_data1__0_carry__0_n_0,raw_data1__0_carry__0_n_1,raw_data1__0_carry__0_n_2,raw_data1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({raw_data1__0_carry__0_i_1_n_0,raw_data1__0_carry__0_i_2_n_0,raw_data1__0_carry__0_i_3_n_0,raw_data1__0_carry__0_i_4_n_0}),
        .O(NLW_raw_data1__0_carry__0_O_UNCONNECTED[3:0]),
        .S({raw_data1__0_carry__0_i_5_n_0,raw_data1__0_carry__0_i_6_n_0,raw_data1__0_carry__0_i_7_n_0,raw_data1__0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    raw_data1__0_carry__0_i_1
       (.I0(x_cnt[8]),
        .I1(x_cnt[4]),
        .I2(x_cnt[6]),
        .O(raw_data1__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    raw_data1__0_carry__0_i_2
       (.I0(x_cnt[3]),
        .I1(x_cnt[7]),
        .I2(x_cnt[5]),
        .O(raw_data1__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    raw_data1__0_carry__0_i_3
       (.I0(x_cnt[2]),
        .I1(x_cnt[6]),
        .I2(x_cnt[4]),
        .O(raw_data1__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    raw_data1__0_carry__0_i_4
       (.I0(x_cnt[5]),
        .I1(x_cnt[1]),
        .I2(x_cnt[3]),
        .O(raw_data1__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    raw_data1__0_carry__0_i_5
       (.I0(x_cnt[6]),
        .I1(x_cnt[4]),
        .I2(x_cnt[8]),
        .I3(x_cnt[7]),
        .I4(x_cnt[9]),
        .I5(x_cnt[5]),
        .O(raw_data1__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    raw_data1__0_carry__0_i_6
       (.I0(x_cnt[5]),
        .I1(x_cnt[7]),
        .I2(x_cnt[3]),
        .I3(x_cnt[6]),
        .I4(x_cnt[8]),
        .I5(x_cnt[4]),
        .O(raw_data1__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    raw_data1__0_carry__0_i_7
       (.I0(x_cnt[4]),
        .I1(x_cnt[6]),
        .I2(x_cnt[2]),
        .I3(x_cnt[3]),
        .I4(x_cnt[5]),
        .I5(x_cnt[7]),
        .O(raw_data1__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    raw_data1__0_carry__0_i_8
       (.I0(x_cnt[3]),
        .I1(x_cnt[1]),
        .I2(x_cnt[5]),
        .I3(x_cnt[2]),
        .I4(x_cnt[4]),
        .I5(x_cnt[6]),
        .O(raw_data1__0_carry__0_i_8_n_0));
  CARRY4 raw_data1__0_carry__1
       (.CI(raw_data1__0_carry__0_n_0),
        .CO({raw_data1__0_carry__1_n_0,raw_data1__0_carry__1_n_1,raw_data1__0_carry__1_n_2,raw_data1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({raw_data1__0_carry__1_i_1_n_0,raw_data1__0_carry__1_i_2_n_0,raw_data1__0_carry__1_i_3_n_0,raw_data1__0_carry__1_i_4_n_0}),
        .O({raw_data1__0_carry__1_n_4,raw_data1__0_carry__1_n_5,NLW_raw_data1__0_carry__1_O_UNCONNECTED[1:0]}),
        .S({raw_data1__0_carry__1_i_5_n_0,raw_data1__0_carry__1_i_6_n_0,raw_data1__0_carry__1_i_7_n_0,raw_data1__0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    raw_data1__0_carry__1_i_1
       (.I0(x_cnt[8]),
        .I1(x_cnt[10]),
        .O(raw_data1__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    raw_data1__0_carry__1_i_2
       (.I0(x_cnt[7]),
        .I1(x_cnt[9]),
        .I2(x_cnt[11]),
        .O(raw_data1__0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    raw_data1__0_carry__1_i_3
       (.I0(x_cnt[6]),
        .I1(x_cnt[8]),
        .I2(x_cnt[10]),
        .O(raw_data1__0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    raw_data1__0_carry__1_i_4
       (.I0(x_cnt[9]),
        .I1(x_cnt[5]),
        .I2(x_cnt[7]),
        .O(raw_data1__0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    raw_data1__0_carry__1_i_5
       (.I0(x_cnt[8]),
        .I1(x_cnt[10]),
        .I2(x_cnt[11]),
        .I3(x_cnt[9]),
        .O(raw_data1__0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    raw_data1__0_carry__1_i_6
       (.I0(x_cnt[11]),
        .I1(x_cnt[9]),
        .I2(x_cnt[7]),
        .I3(x_cnt[10]),
        .I4(x_cnt[8]),
        .O(raw_data1__0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    raw_data1__0_carry__1_i_7
       (.I0(x_cnt[10]),
        .I1(x_cnt[8]),
        .I2(x_cnt[6]),
        .I3(x_cnt[7]),
        .I4(x_cnt[9]),
        .I5(x_cnt[11]),
        .O(raw_data1__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    raw_data1__0_carry__1_i_8
       (.I0(x_cnt[7]),
        .I1(x_cnt[5]),
        .I2(x_cnt[9]),
        .I3(x_cnt[6]),
        .I4(x_cnt[8]),
        .I5(x_cnt[10]),
        .O(raw_data1__0_carry__1_i_8_n_0));
  CARRY4 raw_data1__0_carry__2
       (.CI(raw_data1__0_carry__1_n_0),
        .CO({NLW_raw_data1__0_carry__2_CO_UNCONNECTED[3:1],raw_data1__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,raw_data1__0_carry__2_i_1_n_0}),
        .O({NLW_raw_data1__0_carry__2_O_UNCONNECTED[3:2],raw_data1__0_carry__2_n_6,raw_data1__0_carry__2_n_7}),
        .S({1'b0,1'b0,raw_data1__0_carry__2_i_2_n_0,raw_data1__0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    raw_data1__0_carry__2_i_1
       (.I0(x_cnt[9]),
        .I1(x_cnt[11]),
        .O(raw_data1__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__0_carry__2_i_2
       (.I0(x_cnt[10]),
        .I1(x_cnt[11]),
        .O(raw_data1__0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    raw_data1__0_carry__2_i_3
       (.I0(x_cnt[9]),
        .I1(x_cnt[11]),
        .I2(x_cnt[10]),
        .O(raw_data1__0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    raw_data1__0_carry_i_1
       (.I0(x_cnt[4]),
        .I1(x_cnt[2]),
        .I2(x_cnt[0]),
        .O(raw_data1__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    raw_data1__0_carry_i_2
       (.I0(x_cnt[0]),
        .I1(x_cnt[4]),
        .I2(x_cnt[2]),
        .O(raw_data1__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    raw_data1__0_carry_i_3
       (.I0(x_cnt[2]),
        .I1(x_cnt[0]),
        .O(raw_data1__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    raw_data1__0_carry_i_4
       (.I0(x_cnt[0]),
        .I1(x_cnt[2]),
        .I2(x_cnt[4]),
        .I3(x_cnt[3]),
        .I4(x_cnt[5]),
        .I5(x_cnt[1]),
        .O(raw_data1__0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69699669)) 
    raw_data1__0_carry_i_5
       (.I0(x_cnt[2]),
        .I1(x_cnt[4]),
        .I2(x_cnt[0]),
        .I3(x_cnt[3]),
        .I4(x_cnt[1]),
        .O(raw_data1__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    raw_data1__0_carry_i_6
       (.I0(x_cnt[2]),
        .I1(x_cnt[0]),
        .I2(x_cnt[3]),
        .I3(x_cnt[1]),
        .O(raw_data1__0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    raw_data1__0_carry_i_7
       (.I0(x_cnt[2]),
        .I1(x_cnt[0]),
        .O(raw_data1__0_carry_i_7_n_0));
  CARRY4 raw_data1__30_carry
       (.CI(1'b0),
        .CO({raw_data1__30_carry_n_0,raw_data1__30_carry_n_1,raw_data1__30_carry_n_2,raw_data1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({raw_data1__30_carry_i_1_n_0,raw_data1__0_carry__1_n_5,1'b0,1'b1}),
        .O({raw_data1__30_carry_n_4,raw_data1__30_carry_n_5,raw_data1__30_carry_n_6,raw_data1__30_carry_n_7}),
        .S({raw_data1__30_carry_i_2_n_0,raw_data1__30_carry_i_3_n_0,raw_data1__30_carry_i_4_n_0,raw_data1__0_carry__1_n_5}));
  CARRY4 raw_data1__30_carry__0
       (.CI(raw_data1__30_carry_n_0),
        .CO({NLW_raw_data1__30_carry__0_CO_UNCONNECTED[3],raw_data1__30_carry__0_n_1,raw_data1__30_carry__0_n_2,raw_data1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,raw_data1__30_carry__0_i_1_n_0,raw_data1__30_carry__0_i_2_n_0,raw_data1__30_carry__0_i_3_n_0}),
        .O({raw_data1__30_carry__0_n_4,raw_data1__30_carry__0_n_5,raw_data1__30_carry__0_n_6,raw_data1__30_carry__0_n_7}),
        .S({raw_data1__30_carry__0_i_4_n_0,raw_data1__30_carry__0_i_5_n_0,raw_data1__30_carry__0_i_6_n_0,raw_data1__30_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    raw_data1__30_carry__0_i_1
       (.I0(raw_data1__0_carry__1_n_4),
        .I1(raw_data1__0_carry__2_n_6),
        .O(raw_data1__30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    raw_data1__30_carry__0_i_2
       (.I0(raw_data1__0_carry__1_n_4),
        .I1(raw_data1__0_carry__2_n_6),
        .O(raw_data1__30_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    raw_data1__30_carry__0_i_3
       (.I0(raw_data1__0_carry__1_n_5),
        .I1(raw_data1__0_carry__2_n_7),
        .O(raw_data1__30_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    raw_data1__30_carry__0_i_4
       (.I0(raw_data1__0_carry__1_n_5),
        .I1(raw_data1__0_carry__2_n_7),
        .I2(raw_data1__0_carry__1_n_4),
        .I3(raw_data1__0_carry__2_n_6),
        .O(raw_data1__30_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    raw_data1__30_carry__0_i_5
       (.I0(raw_data1__0_carry__2_n_6),
        .I1(raw_data1__0_carry__1_n_4),
        .I2(raw_data1__0_carry__1_n_5),
        .I3(raw_data1__0_carry__2_n_7),
        .O(raw_data1__30_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    raw_data1__30_carry__0_i_6
       (.I0(raw_data1__0_carry__2_n_7),
        .I1(raw_data1__0_carry__1_n_5),
        .I2(raw_data1__0_carry__2_n_6),
        .I3(raw_data1__0_carry__1_n_4),
        .O(raw_data1__30_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    raw_data1__30_carry__0_i_7
       (.I0(raw_data1__0_carry__2_n_7),
        .I1(raw_data1__0_carry__1_n_5),
        .I2(raw_data1__0_carry__2_n_6),
        .I3(raw_data1__0_carry__1_n_4),
        .O(raw_data1__30_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    raw_data1__30_carry_i_1
       (.I0(raw_data1__0_carry__1_n_5),
        .O(raw_data1__30_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    raw_data1__30_carry_i_2
       (.I0(raw_data1__0_carry__1_n_5),
        .I1(raw_data1__0_carry__2_n_6),
        .I2(raw_data1__0_carry__1_n_4),
        .O(raw_data1__30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__30_carry_i_3
       (.I0(raw_data1__0_carry__2_n_7),
        .I1(raw_data1__0_carry__1_n_5),
        .O(raw_data1__30_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    raw_data1__30_carry_i_4
       (.I0(raw_data1__0_carry__1_n_4),
        .O(raw_data1__30_carry_i_4_n_0));
  CARRY4 raw_data1__50_carry
       (.CI(1'b0),
        .CO({raw_data1__50_carry_n_0,raw_data1__50_carry_n_1,raw_data1__50_carry_n_2,raw_data1__50_carry_n_3}),
        .CYINIT(1'b1),
        .DI(x_cnt[3:0]),
        .O({raw_data1__50_carry_n_4,raw_data1__50_carry_n_5,NLW_raw_data1__50_carry_O_UNCONNECTED[1:0]}),
        .S({raw_data1__50_carry_i_1_n_0,raw_data1__50_carry_i_2_n_0,raw_data1__50_carry_i_3_n_0,raw_data1__50_carry_i_4_n_0}));
  CARRY4 raw_data1__50_carry__0
       (.CI(raw_data1__50_carry_n_0),
        .CO({raw_data1__50_carry__0_n_0,raw_data1__50_carry__0_n_1,raw_data1__50_carry__0_n_2,raw_data1__50_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(x_cnt[7:4]),
        .O({raw_data1__50_carry__0_n_4,raw_data1__50_carry__0_n_5,raw_data1__50_carry__0_n_6,raw_data1__50_carry__0_n_7}),
        .S({raw_data1__50_carry__0_i_1_n_0,raw_data1__50_carry__0_i_2_n_0,raw_data1__50_carry__0_i_3_n_0,raw_data1__50_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry__0_i_1
       (.I0(x_cnt[7]),
        .I1(raw_data1__30_carry__0_n_6),
        .O(raw_data1__50_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry__0_i_2
       (.I0(x_cnt[6]),
        .I1(raw_data1__30_carry__0_n_7),
        .O(raw_data1__50_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry__0_i_3
       (.I0(x_cnt[5]),
        .I1(raw_data1__30_carry_n_4),
        .O(raw_data1__50_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry__0_i_4
       (.I0(x_cnt[4]),
        .I1(raw_data1__30_carry_n_5),
        .O(raw_data1__50_carry__0_i_4_n_0));
  CARRY4 raw_data1__50_carry__1
       (.CI(raw_data1__50_carry__0_n_0),
        .CO({NLW_raw_data1__50_carry__1_CO_UNCONNECTED[3:1],raw_data1__50_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,x_cnt[8]}),
        .O({NLW_raw_data1__50_carry__1_O_UNCONNECTED[3:2],raw_data1__50_carry__1_n_6,raw_data1__50_carry__1_n_7}),
        .S({1'b0,1'b0,raw_data1__50_carry__1_i_1_n_0,raw_data1__50_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry__1_i_1
       (.I0(x_cnt[9]),
        .I1(raw_data1__30_carry__0_n_4),
        .O(raw_data1__50_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry__1_i_2
       (.I0(x_cnt[8]),
        .I1(raw_data1__30_carry__0_n_5),
        .O(raw_data1__50_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry_i_1
       (.I0(x_cnt[3]),
        .I1(raw_data1__30_carry_n_6),
        .O(raw_data1__50_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    raw_data1__50_carry_i_2
       (.I0(x_cnt[2]),
        .I1(raw_data1__30_carry_n_7),
        .O(raw_data1__50_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    raw_data1__50_carry_i_3
       (.I0(x_cnt[1]),
        .O(raw_data1__50_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    raw_data1__50_carry_i_4
       (.I0(x_cnt[0]),
        .O(raw_data1__50_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \raw_data[9]_i_1 
       (.I0(\raw_data[9]_i_2_n_0 ),
        .I1(\raw_data[9]_i_3_n_0 ),
        .I2(\raw_data[9]_i_4_n_0 ),
        .I3(\raw_data[9]_i_5_n_0 ),
        .I4(\raw_data[9]_i_6_n_0 ),
        .I5(\raw_data[9]_i_7_n_0 ),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \raw_data[9]_i_10 
       (.I0(raw_data1__50_carry_n_4),
        .I1(raw_data1__50_carry__0_n_6),
        .I2(raw_data1__50_carry__0_n_7),
        .I3(raw_data1__50_carry__0_n_5),
        .O(\raw_data[9]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000EE1)) 
    \raw_data[9]_i_11 
       (.I0(raw_data1__50_carry__0_n_7),
        .I1(raw_data1__50_carry__0_n_6),
        .I2(pixcnt_reg__0[0]),
        .I3(linecnt_reg[0]),
        .I4(raw_data1__50_carry__0_n_5),
        .O(\raw_data[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0808088888888888)) 
    \raw_data[9]_i_12 
       (.I0(raw_data1__50_carry__0_n_5),
        .I1(\raw_data[9]_i_16_n_0 ),
        .I2(raw_data1__50_carry__0_n_6),
        .I3(raw_data1__50_carry_n_4),
        .I4(raw_data1__50_carry_n_5),
        .I5(raw_data1__50_carry__0_n_7),
        .O(\raw_data[9]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \raw_data[9]_i_13 
       (.I0(pixcnt_reg__0[0]),
        .I1(linecnt_reg[0]),
        .I2(raw_data1__50_carry__0_n_4),
        .O(\raw_data[9]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    \raw_data[9]_i_14 
       (.I0(raw_data1__50_carry__0_n_6),
        .I1(raw_data1__50_carry__0_n_5),
        .I2(raw_data1__50_carry__0_n_7),
        .I3(raw_data1__50_carry_n_5),
        .I4(raw_data1__50_carry_n_4),
        .O(\raw_data[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5554AAAA0022AAAA)) 
    \raw_data[9]_i_15 
       (.I0(raw_data1__50_carry__0_n_4),
        .I1(raw_data1__50_carry_n_4),
        .I2(raw_data1__50_carry_n_5),
        .I3(raw_data1__50_carry__0_n_7),
        .I4(raw_data1__50_carry__0_n_5),
        .I5(raw_data1__50_carry__0_n_6),
        .O(\raw_data[9]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \raw_data[9]_i_16 
       (.I0(linecnt_reg[0]),
        .I1(pixcnt_reg__0[0]),
        .O(\raw_data[9]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \raw_data[9]_i_2 
       (.I0(raw_data1__50_carry__0_n_5),
        .I1(raw_data1__50_carry__0_n_6),
        .I2(raw_data1__50_carry__0_n_4),
        .I3(reset_n),
        .I4(\raw_data[9]_i_8_n_0 ),
        .O(\raw_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C4C4C000C4040)) 
    \raw_data[9]_i_3 
       (.I0(\raw_data[9]_i_9_n_0 ),
        .I1(reset_n),
        .I2(raw_data1__50_carry__1_n_7),
        .I3(\raw_data[9]_i_10_n_0 ),
        .I4(raw_data1__50_carry__0_n_4),
        .I5(raw_data1__50_carry__1_n_6),
        .O(\raw_data[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \raw_data[9]_i_4 
       (.I0(linecnt_reg[0]),
        .I1(pixcnt_reg__0[0]),
        .O(\raw_data[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \raw_data[9]_i_5 
       (.I0(raw_data1__50_carry__0_n_4),
        .I1(raw_data1__50_carry__1_n_7),
        .I2(reset_n),
        .I3(\raw_data[9]_i_11_n_0 ),
        .I4(\raw_data[9]_i_12_n_0 ),
        .O(\raw_data[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h800080A080008000)) 
    \raw_data[9]_i_6 
       (.I0(\raw_data[9]_i_13_n_0 ),
        .I1(\raw_data[9]_i_9_n_0 ),
        .I2(reset_n),
        .I3(raw_data1__50_carry__1_n_7),
        .I4(raw_data1__50_carry__1_n_6),
        .I5(\raw_data[9]_i_14_n_0 ),
        .O(\raw_data[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000060000000000)) 
    \raw_data[9]_i_7 
       (.I0(linecnt_reg[0]),
        .I1(pixcnt_reg__0[0]),
        .I2(raw_data1__50_carry__1_n_7),
        .I3(reset_n),
        .I4(raw_data1__50_carry__1_n_6),
        .I5(\raw_data[9]_i_15_n_0 ),
        .O(\raw_data[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \raw_data[9]_i_8 
       (.I0(raw_data1__50_carry_n_4),
        .I1(raw_data1__50_carry_n_5),
        .I2(raw_data1__50_carry__0_n_7),
        .O(\raw_data[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEEAEAEA)) 
    \raw_data[9]_i_9 
       (.I0(raw_data1__50_carry__0_n_5),
        .I1(raw_data1__50_carry__0_n_6),
        .I2(raw_data1__50_carry__0_n_7),
        .I3(raw_data1__50_carry_n_4),
        .I4(raw_data1__50_carry_n_5),
        .O(\raw_data[9]_i_9_n_0 ));
  FDRE \raw_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(data),
        .R(1'b0));
  FDRE ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset_n),
        .Q(ready),
        .R(1'b0));
  FDRE vsync_dly_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_r),
        .Q(vsync),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h5542000000000000)) 
    vsync_r_i_1
       (.I0(linecnt_reg[3]),
        .I1(linecnt_reg[1]),
        .I2(linecnt_reg[0]),
        .I3(linecnt_reg[2]),
        .I4(vsync_r_i_2_n_0),
        .I5(vsync_r_i_3_n_0),
        .O(vsync_r0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    vsync_r_i_2
       (.I0(linecnt_reg[6]),
        .I1(linecnt_reg[7]),
        .I2(linecnt_reg[4]),
        .I3(linecnt_reg[5]),
        .I4(linecnt_reg[9]),
        .I5(linecnt_reg[8]),
        .O(vsync_r_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    vsync_r_i_3
       (.I0(linecnt_reg[10]),
        .I1(linecnt_reg[11]),
        .O(vsync_r_i_3_n_0));
  FDRE vsync_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_r0),
        .Q(vsync_r),
        .R(p_0_in));
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
