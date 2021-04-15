//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d528_wrapper.bd
//Design : bd_d528_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_d528_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tdest,
    SLOT_0_AXIS_tid,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tstrb,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    clk,
    resetn);
  input [23:0]SLOT_0_AXIS_tdata;
  input [0:0]SLOT_0_AXIS_tdest;
  input [0:0]SLOT_0_AXIS_tid;
  input [2:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input [2:0]SLOT_0_AXIS_tstrb;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input clk;
  input resetn;

  wire [23:0]SLOT_0_AXIS_tdata;
  wire [0:0]SLOT_0_AXIS_tdest;
  wire [0:0]SLOT_0_AXIS_tid;
  wire [2:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire [2:0]SLOT_0_AXIS_tstrb;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire clk;
  wire resetn;

  bd_d528 bd_d528_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tdest(SLOT_0_AXIS_tdest),
        .SLOT_0_AXIS_tid(SLOT_0_AXIS_tid),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tstrb(SLOT_0_AXIS_tstrb),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
