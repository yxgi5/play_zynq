// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:raw_colorbar_gen:1.0
// IP Revision: 3

(* X_CORE_INFO = "raw_colorbar_gen,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_raw_colorbar_gen_0_0,raw_colorbar_gen,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_raw_colorbar_gen_0_0 (
  reset_n,
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
  ready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 65000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [9 : 0] data_i;
output wire fv;
output wire lv;
output wire [9 : 0] data;
output wire de;
output wire vsync;
output wire hsync;
output wire [11 : 0] x_cnt;
output wire [11 : 0] y_cnt;
output wire [11 : 0] h_cnt;
output wire [11 : 0] v_cnt;
output wire ready;

  raw_colorbar_gen #(
    .word_width(32'H0000000A),
    .h_active(32'H00000400),
    .h_total(32'H00000540),
    .v_active(32'H00000300),
    .v_total(32'H00000326),
    .H_FRONT_PORCH(32'H00000018),
    .H_SYNCH(32'H00000088),
    .H_BACK_PORCH(32'H000000A0),
    .V_FRONT_PORCH(32'H00000003),
    .V_SYNCH(32'H00000006),
    .V_BACK_PORCH(32'H0000001D),
    .bayer_pattern(32'H00000003),
    .input_mode(32'H00000000),
    .clk2_mode(32'H00000000),
    .pattern_mode(32'H00000000)
  ) inst (
    .reset_n(reset_n),
    .clk(clk),
    .data_i(data_i),
    .fv(fv),
    .lv(lv),
    .data(data),
    .de(de),
    .vsync(vsync),
    .hsync(hsync),
    .x_cnt(x_cnt),
    .y_cnt(y_cnt),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .ready(ready)
  );
endmodule
