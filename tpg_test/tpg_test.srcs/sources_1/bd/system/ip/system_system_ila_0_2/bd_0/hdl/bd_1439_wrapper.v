//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1439_wrapper.bd
//Design : bd_1439_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_1439_wrapper
   (SLOT_0_VIDEO_TIMING_active_video,
    SLOT_0_VIDEO_TIMING_hblank,
    SLOT_0_VIDEO_TIMING_hsync,
    SLOT_0_VIDEO_TIMING_vblank,
    SLOT_0_VIDEO_TIMING_vsync,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4);
  input SLOT_0_VIDEO_TIMING_active_video;
  input SLOT_0_VIDEO_TIMING_hblank;
  input SLOT_0_VIDEO_TIMING_hsync;
  input SLOT_0_VIDEO_TIMING_vblank;
  input SLOT_0_VIDEO_TIMING_vsync;
  input clk;
  input [0:0]probe0;
  input [23:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;

  wire SLOT_0_VIDEO_TIMING_active_video;
  wire SLOT_0_VIDEO_TIMING_hblank;
  wire SLOT_0_VIDEO_TIMING_hsync;
  wire SLOT_0_VIDEO_TIMING_vblank;
  wire SLOT_0_VIDEO_TIMING_vsync;
  wire clk;
  wire [0:0]probe0;
  wire [23:0]probe1;
  wire [0:0]probe2;
  wire [0:0]probe3;
  wire [0:0]probe4;

  bd_1439 bd_1439_i
       (.SLOT_0_VIDEO_TIMING_active_video(SLOT_0_VIDEO_TIMING_active_video),
        .SLOT_0_VIDEO_TIMING_hblank(SLOT_0_VIDEO_TIMING_hblank),
        .SLOT_0_VIDEO_TIMING_hsync(SLOT_0_VIDEO_TIMING_hsync),
        .SLOT_0_VIDEO_TIMING_vblank(SLOT_0_VIDEO_TIMING_vblank),
        .SLOT_0_VIDEO_TIMING_vsync(SLOT_0_VIDEO_TIMING_vsync),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4));
endmodule
