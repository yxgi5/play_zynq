// ==============================================================
// File generated on Mon Jan 04 00:05:40 CST 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module system_v_tpg_0_0_v_tpg_am_addmul_1s_16ns_16ns_32_3_1_DSP48_7(
    input clk,
    input rst,
    input ce,
    input  [1 - 1:0] in0,
    input  [16 - 1:0] in1,
    input  [16 - 1:0] in2,
    output [32 - 1:0]  dout);

wire signed [18 - 1:0]     b;
wire signed [25 - 1:0]     a;
wire signed [25 - 1:0]     d;
wire signed [43 - 1:0]     m;
wire signed [25 - 1:0]    ad;
reg  signed [43 - 1:0]    m_reg;
reg  signed [25 - 1:0]   ad_reg;
reg  signed [18 - 1:0]    b_reg;

assign a = $signed(in0);
assign d = $unsigned(in1);
assign b = $unsigned(in2);

assign ad = a + d;
assign m  = ad_reg * b_reg;

always @(posedge clk) begin
    if (ce) begin
        m_reg <= m;
        ad_reg <= ad;
        b_reg  <= b;
    end
end

assign dout = m_reg;

endmodule
`timescale 1 ns / 1 ps
module system_v_tpg_0_0_v_tpg_am_addmul_1s_16ns_16ns_32_3_1(
    clk,
    reset,
    ce,
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



system_v_tpg_0_0_v_tpg_am_addmul_1s_16ns_16ns_32_3_1_DSP48_7 system_v_tpg_0_0_v_tpg_am_addmul_1s_16ns_16ns_32_3_1_DSP48_7_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .dout( dout ));

endmodule

