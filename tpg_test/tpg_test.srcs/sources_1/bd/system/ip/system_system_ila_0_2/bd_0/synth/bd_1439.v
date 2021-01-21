//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1439.bd
//Design : bd_1439
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_1439,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1439,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "system_system_ila_0_2.hwdef" *) 
module bd_1439
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING ACTIVE_VIDEO" *) input SLOT_0_VIDEO_TIMING_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING HBLANK" *) input SLOT_0_VIDEO_TIMING_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING HSYNC" *) input SLOT_0_VIDEO_TIMING_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING VBLANK" *) input SLOT_0_VIDEO_TIMING_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING VSYNC" *) input SLOT_0_VIDEO_TIMING_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN /video_clk_wiz_clk_out1, FREQ_HZ 148500000, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;
  input [23:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;

  wire SLOT_0_VIDEO_TIMING_active_video_1;
  wire SLOT_0_VIDEO_TIMING_hblank_1;
  wire SLOT_0_VIDEO_TIMING_hsync_1;
  wire SLOT_0_VIDEO_TIMING_vblank_1;
  wire SLOT_0_VIDEO_TIMING_vsync_1;
  wire clk_1;
  wire [0:0]probe0_1;
  wire [23:0]probe1_1;
  wire [0:0]probe2_1;
  wire [0:0]probe3_1;
  wire [0:0]probe4_1;

  assign SLOT_0_VIDEO_TIMING_active_video_1 = SLOT_0_VIDEO_TIMING_active_video;
  assign SLOT_0_VIDEO_TIMING_hblank_1 = SLOT_0_VIDEO_TIMING_hblank;
  assign SLOT_0_VIDEO_TIMING_hsync_1 = SLOT_0_VIDEO_TIMING_hsync;
  assign SLOT_0_VIDEO_TIMING_vblank_1 = SLOT_0_VIDEO_TIMING_vblank;
  assign SLOT_0_VIDEO_TIMING_vsync_1 = SLOT_0_VIDEO_TIMING_vsync;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe1_1 = probe1[23:0];
  assign probe2_1 = probe2[0];
  assign probe3_1 = probe3[0];
  assign probe4_1 = probe4[0];
  bd_1439_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1),
        .probe5(SLOT_0_VIDEO_TIMING_active_video_1),
        .probe6(SLOT_0_VIDEO_TIMING_hblank_1),
        .probe7(SLOT_0_VIDEO_TIMING_hsync_1),
        .probe8(SLOT_0_VIDEO_TIMING_vblank_1),
        .probe9(SLOT_0_VIDEO_TIMING_vsync_1));
endmodule
