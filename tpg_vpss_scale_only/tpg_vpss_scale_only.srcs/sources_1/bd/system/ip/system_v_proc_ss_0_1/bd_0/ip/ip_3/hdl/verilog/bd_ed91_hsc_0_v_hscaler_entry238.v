// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_ed91_hsc_0_v_hscaler_entry238 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        HwReg_Height,
        HwReg_WidthIn,
        HwReg_WidthOut,
        HwReg_ColorMode,
        HwReg_ColorModeOut,
        HwReg_Height_c_din,
        HwReg_Height_c_full_n,
        HwReg_Height_c_write,
        HwReg_WidthIn_c_din,
        HwReg_WidthIn_c_full_n,
        HwReg_WidthIn_c_write,
        HwReg_WidthOut_c_din,
        HwReg_WidthOut_c_full_n,
        HwReg_WidthOut_c_write,
        HwReg_ColorMode_c_din,
        HwReg_ColorMode_c_full_n,
        HwReg_ColorMode_c_write,
        HwReg_ColorMode_c22_din,
        HwReg_ColorMode_c22_full_n,
        HwReg_ColorMode_c22_write,
        HwReg_ColorModeOut_c_din,
        HwReg_ColorModeOut_c_full_n,
        HwReg_ColorModeOut_c_write,
        HwReg_ColorModeOut_c_1_din,
        HwReg_ColorModeOut_c_1_full_n,
        HwReg_ColorModeOut_c_1_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] HwReg_Height;
input  [15:0] HwReg_WidthIn;
input  [15:0] HwReg_WidthOut;
input  [7:0] HwReg_ColorMode;
input  [7:0] HwReg_ColorModeOut;
output  [11:0] HwReg_Height_c_din;
input   HwReg_Height_c_full_n;
output   HwReg_Height_c_write;
output  [11:0] HwReg_WidthIn_c_din;
input   HwReg_WidthIn_c_full_n;
output   HwReg_WidthIn_c_write;
output  [11:0] HwReg_WidthOut_c_din;
input   HwReg_WidthOut_c_full_n;
output   HwReg_WidthOut_c_write;
output  [7:0] HwReg_ColorMode_c_din;
input   HwReg_ColorMode_c_full_n;
output   HwReg_ColorMode_c_write;
output  [7:0] HwReg_ColorMode_c22_din;
input   HwReg_ColorMode_c22_full_n;
output   HwReg_ColorMode_c22_write;
output  [7:0] HwReg_ColorModeOut_c_din;
input   HwReg_ColorModeOut_c_full_n;
output   HwReg_ColorModeOut_c_write;
output  [7:0] HwReg_ColorModeOut_c_1_din;
input   HwReg_ColorModeOut_c_1_full_n;
output   HwReg_ColorModeOut_c_1_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg HwReg_Height_c_write;
reg HwReg_WidthIn_c_write;
reg HwReg_WidthOut_c_write;
reg HwReg_ColorMode_c_write;
reg HwReg_ColorMode_c22_write;
reg HwReg_ColorModeOut_c_write;
reg HwReg_ColorModeOut_c_1_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    HwReg_Height_c_blk_n;
reg    HwReg_WidthIn_c_blk_n;
reg    HwReg_WidthOut_c_blk_n;
reg    HwReg_ColorMode_c_blk_n;
reg    HwReg_ColorMode_c22_blk_n;
reg    HwReg_ColorModeOut_c_blk_n;
reg    HwReg_ColorModeOut_c_1_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorModeOut_c_1_blk_n = HwReg_ColorModeOut_c_1_full_n;
    end else begin
        HwReg_ColorModeOut_c_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorModeOut_c_1_write = 1'b1;
    end else begin
        HwReg_ColorModeOut_c_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorModeOut_c_blk_n = HwReg_ColorModeOut_c_full_n;
    end else begin
        HwReg_ColorModeOut_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorModeOut_c_write = 1'b1;
    end else begin
        HwReg_ColorModeOut_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorMode_c22_blk_n = HwReg_ColorMode_c22_full_n;
    end else begin
        HwReg_ColorMode_c22_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorMode_c22_write = 1'b1;
    end else begin
        HwReg_ColorMode_c22_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorMode_c_blk_n = HwReg_ColorMode_c_full_n;
    end else begin
        HwReg_ColorMode_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_ColorMode_c_write = 1'b1;
    end else begin
        HwReg_ColorMode_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_Height_c_blk_n = HwReg_Height_c_full_n;
    end else begin
        HwReg_Height_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_Height_c_write = 1'b1;
    end else begin
        HwReg_Height_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_WidthIn_c_blk_n = HwReg_WidthIn_c_full_n;
    end else begin
        HwReg_WidthIn_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_WidthIn_c_write = 1'b1;
    end else begin
        HwReg_WidthIn_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_WidthOut_c_blk_n = HwReg_WidthOut_c_full_n;
    end else begin
        HwReg_WidthOut_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        HwReg_WidthOut_c_write = 1'b1;
    end else begin
        HwReg_WidthOut_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign HwReg_ColorModeOut_c_1_din = HwReg_ColorModeOut;

assign HwReg_ColorModeOut_c_din = HwReg_ColorModeOut;

assign HwReg_ColorMode_c22_din = HwReg_ColorMode;

assign HwReg_ColorMode_c_din = HwReg_ColorMode;

assign HwReg_Height_c_din = HwReg_Height[11:0];

assign HwReg_WidthIn_c_din = HwReg_WidthIn[11:0];

assign HwReg_WidthOut_c_din = HwReg_WidthOut[11:0];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (1'b0 == HwReg_ColorModeOut_c_1_full_n) | (1'b0 == HwReg_ColorModeOut_c_full_n) | (1'b0 == HwReg_ColorMode_c22_full_n) | (1'b0 == HwReg_ColorMode_c_full_n) | (1'b0 == HwReg_WidthOut_c_full_n) | (1'b0 == HwReg_WidthIn_c_full_n) | (1'b0 == HwReg_Height_c_full_n) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign start_out = real_start;

endmodule //bd_ed91_hsc_0_v_hscaler_entry238
