// ==============================================================
// File generated on Sun Apr 25 15:23:05 CST 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module bd_2d50_csc_0_v_csc_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire [7:0]                    HwReg_InVideoFormat,
    output wire [7:0]                    HwReg_OutVideoFormat,
    output wire [15:0]                   HwReg_width,
    output wire [15:0]                   HwReg_height,
    output wire [15:0]                   HwReg_ColStart,
    output wire [15:0]                   HwReg_ColEnd,
    output wire [15:0]                   HwReg_RowStart,
    output wire [15:0]                   HwReg_RowEnd,
    output wire [15:0]                   HwReg_K11,
    output wire [15:0]                   HwReg_K12,
    output wire [15:0]                   HwReg_K13,
    output wire [15:0]                   HwReg_K21,
    output wire [15:0]                   HwReg_K22,
    output wire [15:0]                   HwReg_K23,
    output wire [15:0]                   HwReg_K31,
    output wire [15:0]                   HwReg_K32,
    output wire [15:0]                   HwReg_K33,
    output wire [9:0]                    HwReg_ROffset_V,
    output wire [9:0]                    HwReg_GOffset_V,
    output wire [9:0]                    HwReg_BOffset_V,
    output wire [7:0]                    HwReg_ClampMin_V,
    output wire [7:0]                    HwReg_ClipMax_V,
    output wire [15:0]                   HwReg_K11_2,
    output wire [15:0]                   HwReg_K12_2,
    output wire [15:0]                   HwReg_K13_2,
    output wire [15:0]                   HwReg_K21_2,
    output wire [15:0]                   HwReg_K22_2,
    output wire [15:0]                   HwReg_K23_2,
    output wire [15:0]                   HwReg_K31_2,
    output wire [15:0]                   HwReg_K32_2,
    output wire [15:0]                   HwReg_K33_2,
    output wire [9:0]                    HwReg_ROffset_2_V,
    output wire [9:0]                    HwReg_GOffset_2_V,
    output wire [9:0]                    HwReg_BOffset_2_V,
    output wire [7:0]                    HwReg_ClampMin_2_V,
    output wire [7:0]                    HwReg_ClipMax_2_V,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x010 : Data signal of HwReg_InVideoFormat
//         bit 7~0 - HwReg_InVideoFormat[7:0] (Read/Write)
//         others  - reserved
// 0x014 : reserved
// 0x018 : Data signal of HwReg_OutVideoFormat
//         bit 7~0 - HwReg_OutVideoFormat[7:0] (Read/Write)
//         others  - reserved
// 0x01c : reserved
// 0x020 : Data signal of HwReg_width
//         bit 15~0 - HwReg_width[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x028 : Data signal of HwReg_height
//         bit 15~0 - HwReg_height[15:0] (Read/Write)
//         others   - reserved
// 0x02c : reserved
// 0x030 : Data signal of HwReg_ColStart
//         bit 15~0 - HwReg_ColStart[15:0] (Read/Write)
//         others   - reserved
// 0x034 : reserved
// 0x038 : Data signal of HwReg_ColEnd
//         bit 15~0 - HwReg_ColEnd[15:0] (Read/Write)
//         others   - reserved
// 0x03c : reserved
// 0x040 : Data signal of HwReg_RowStart
//         bit 15~0 - HwReg_RowStart[15:0] (Read/Write)
//         others   - reserved
// 0x044 : reserved
// 0x048 : Data signal of HwReg_RowEnd
//         bit 15~0 - HwReg_RowEnd[15:0] (Read/Write)
//         others   - reserved
// 0x04c : reserved
// 0x050 : Data signal of HwReg_K11
//         bit 15~0 - HwReg_K11[15:0] (Read/Write)
//         others   - reserved
// 0x054 : reserved
// 0x058 : Data signal of HwReg_K12
//         bit 15~0 - HwReg_K12[15:0] (Read/Write)
//         others   - reserved
// 0x05c : reserved
// 0x060 : Data signal of HwReg_K13
//         bit 15~0 - HwReg_K13[15:0] (Read/Write)
//         others   - reserved
// 0x064 : reserved
// 0x068 : Data signal of HwReg_K21
//         bit 15~0 - HwReg_K21[15:0] (Read/Write)
//         others   - reserved
// 0x06c : reserved
// 0x070 : Data signal of HwReg_K22
//         bit 15~0 - HwReg_K22[15:0] (Read/Write)
//         others   - reserved
// 0x074 : reserved
// 0x078 : Data signal of HwReg_K23
//         bit 15~0 - HwReg_K23[15:0] (Read/Write)
//         others   - reserved
// 0x07c : reserved
// 0x080 : Data signal of HwReg_K31
//         bit 15~0 - HwReg_K31[15:0] (Read/Write)
//         others   - reserved
// 0x084 : reserved
// 0x088 : Data signal of HwReg_K32
//         bit 15~0 - HwReg_K32[15:0] (Read/Write)
//         others   - reserved
// 0x08c : reserved
// 0x090 : Data signal of HwReg_K33
//         bit 15~0 - HwReg_K33[15:0] (Read/Write)
//         others   - reserved
// 0x094 : reserved
// 0x098 : Data signal of HwReg_ROffset_V
//         bit 9~0 - HwReg_ROffset_V[9:0] (Read/Write)
//         others  - reserved
// 0x09c : reserved
// 0x0a0 : Data signal of HwReg_GOffset_V
//         bit 9~0 - HwReg_GOffset_V[9:0] (Read/Write)
//         others  - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of HwReg_BOffset_V
//         bit 9~0 - HwReg_BOffset_V[9:0] (Read/Write)
//         others  - reserved
// 0x0ac : reserved
// 0x0b0 : Data signal of HwReg_ClampMin_V
//         bit 7~0 - HwReg_ClampMin_V[7:0] (Read/Write)
//         others  - reserved
// 0x0b4 : reserved
// 0x0b8 : Data signal of HwReg_ClipMax_V
//         bit 7~0 - HwReg_ClipMax_V[7:0] (Read/Write)
//         others  - reserved
// 0x0bc : reserved
// 0x0c0 : Data signal of HwReg_K11_2
//         bit 15~0 - HwReg_K11_2[15:0] (Read/Write)
//         others   - reserved
// 0x0c4 : reserved
// 0x0c8 : Data signal of HwReg_K12_2
//         bit 15~0 - HwReg_K12_2[15:0] (Read/Write)
//         others   - reserved
// 0x0cc : reserved
// 0x0d0 : Data signal of HwReg_K13_2
//         bit 15~0 - HwReg_K13_2[15:0] (Read/Write)
//         others   - reserved
// 0x0d4 : reserved
// 0x0d8 : Data signal of HwReg_K21_2
//         bit 15~0 - HwReg_K21_2[15:0] (Read/Write)
//         others   - reserved
// 0x0dc : reserved
// 0x0e0 : Data signal of HwReg_K22_2
//         bit 15~0 - HwReg_K22_2[15:0] (Read/Write)
//         others   - reserved
// 0x0e4 : reserved
// 0x0e8 : Data signal of HwReg_K23_2
//         bit 15~0 - HwReg_K23_2[15:0] (Read/Write)
//         others   - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of HwReg_K31_2
//         bit 15~0 - HwReg_K31_2[15:0] (Read/Write)
//         others   - reserved
// 0x0f4 : reserved
// 0x0f8 : Data signal of HwReg_K32_2
//         bit 15~0 - HwReg_K32_2[15:0] (Read/Write)
//         others   - reserved
// 0x0fc : reserved
// 0x100 : Data signal of HwReg_K33_2
//         bit 15~0 - HwReg_K33_2[15:0] (Read/Write)
//         others   - reserved
// 0x104 : reserved
// 0x108 : Data signal of HwReg_ROffset_2_V
//         bit 9~0 - HwReg_ROffset_2_V[9:0] (Read/Write)
//         others  - reserved
// 0x10c : reserved
// 0x110 : Data signal of HwReg_GOffset_2_V
//         bit 9~0 - HwReg_GOffset_2_V[9:0] (Read/Write)
//         others  - reserved
// 0x114 : reserved
// 0x118 : Data signal of HwReg_BOffset_2_V
//         bit 9~0 - HwReg_BOffset_2_V[9:0] (Read/Write)
//         others  - reserved
// 0x11c : reserved
// 0x120 : Data signal of HwReg_ClampMin_2_V
//         bit 7~0 - HwReg_ClampMin_2_V[7:0] (Read/Write)
//         others  - reserved
// 0x124 : reserved
// 0x128 : Data signal of HwReg_ClipMax_2_V
//         bit 7~0 - HwReg_ClipMax_2_V[7:0] (Read/Write)
//         others  - reserved
// 0x12c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                     = 9'h000,
    ADDR_GIE                         = 9'h004,
    ADDR_IER                         = 9'h008,
    ADDR_ISR                         = 9'h00c,
    ADDR_HWREG_INVIDEOFORMAT_DATA_0  = 9'h010,
    ADDR_HWREG_INVIDEOFORMAT_CTRL    = 9'h014,
    ADDR_HWREG_OUTVIDEOFORMAT_DATA_0 = 9'h018,
    ADDR_HWREG_OUTVIDEOFORMAT_CTRL   = 9'h01c,
    ADDR_HWREG_WIDTH_DATA_0          = 9'h020,
    ADDR_HWREG_WIDTH_CTRL            = 9'h024,
    ADDR_HWREG_HEIGHT_DATA_0         = 9'h028,
    ADDR_HWREG_HEIGHT_CTRL           = 9'h02c,
    ADDR_HWREG_COLSTART_DATA_0       = 9'h030,
    ADDR_HWREG_COLSTART_CTRL         = 9'h034,
    ADDR_HWREG_COLEND_DATA_0         = 9'h038,
    ADDR_HWREG_COLEND_CTRL           = 9'h03c,
    ADDR_HWREG_ROWSTART_DATA_0       = 9'h040,
    ADDR_HWREG_ROWSTART_CTRL         = 9'h044,
    ADDR_HWREG_ROWEND_DATA_0         = 9'h048,
    ADDR_HWREG_ROWEND_CTRL           = 9'h04c,
    ADDR_HWREG_K11_DATA_0            = 9'h050,
    ADDR_HWREG_K11_CTRL              = 9'h054,
    ADDR_HWREG_K12_DATA_0            = 9'h058,
    ADDR_HWREG_K12_CTRL              = 9'h05c,
    ADDR_HWREG_K13_DATA_0            = 9'h060,
    ADDR_HWREG_K13_CTRL              = 9'h064,
    ADDR_HWREG_K21_DATA_0            = 9'h068,
    ADDR_HWREG_K21_CTRL              = 9'h06c,
    ADDR_HWREG_K22_DATA_0            = 9'h070,
    ADDR_HWREG_K22_CTRL              = 9'h074,
    ADDR_HWREG_K23_DATA_0            = 9'h078,
    ADDR_HWREG_K23_CTRL              = 9'h07c,
    ADDR_HWREG_K31_DATA_0            = 9'h080,
    ADDR_HWREG_K31_CTRL              = 9'h084,
    ADDR_HWREG_K32_DATA_0            = 9'h088,
    ADDR_HWREG_K32_CTRL              = 9'h08c,
    ADDR_HWREG_K33_DATA_0            = 9'h090,
    ADDR_HWREG_K33_CTRL              = 9'h094,
    ADDR_HWREG_ROFFSET_V_DATA_0      = 9'h098,
    ADDR_HWREG_ROFFSET_V_CTRL        = 9'h09c,
    ADDR_HWREG_GOFFSET_V_DATA_0      = 9'h0a0,
    ADDR_HWREG_GOFFSET_V_CTRL        = 9'h0a4,
    ADDR_HWREG_BOFFSET_V_DATA_0      = 9'h0a8,
    ADDR_HWREG_BOFFSET_V_CTRL        = 9'h0ac,
    ADDR_HWREG_CLAMPMIN_V_DATA_0     = 9'h0b0,
    ADDR_HWREG_CLAMPMIN_V_CTRL       = 9'h0b4,
    ADDR_HWREG_CLIPMAX_V_DATA_0      = 9'h0b8,
    ADDR_HWREG_CLIPMAX_V_CTRL        = 9'h0bc,
    ADDR_HWREG_K11_2_DATA_0          = 9'h0c0,
    ADDR_HWREG_K11_2_CTRL            = 9'h0c4,
    ADDR_HWREG_K12_2_DATA_0          = 9'h0c8,
    ADDR_HWREG_K12_2_CTRL            = 9'h0cc,
    ADDR_HWREG_K13_2_DATA_0          = 9'h0d0,
    ADDR_HWREG_K13_2_CTRL            = 9'h0d4,
    ADDR_HWREG_K21_2_DATA_0          = 9'h0d8,
    ADDR_HWREG_K21_2_CTRL            = 9'h0dc,
    ADDR_HWREG_K22_2_DATA_0          = 9'h0e0,
    ADDR_HWREG_K22_2_CTRL            = 9'h0e4,
    ADDR_HWREG_K23_2_DATA_0          = 9'h0e8,
    ADDR_HWREG_K23_2_CTRL            = 9'h0ec,
    ADDR_HWREG_K31_2_DATA_0          = 9'h0f0,
    ADDR_HWREG_K31_2_CTRL            = 9'h0f4,
    ADDR_HWREG_K32_2_DATA_0          = 9'h0f8,
    ADDR_HWREG_K32_2_CTRL            = 9'h0fc,
    ADDR_HWREG_K33_2_DATA_0          = 9'h100,
    ADDR_HWREG_K33_2_CTRL            = 9'h104,
    ADDR_HWREG_ROFFSET_2_V_DATA_0    = 9'h108,
    ADDR_HWREG_ROFFSET_2_V_CTRL      = 9'h10c,
    ADDR_HWREG_GOFFSET_2_V_DATA_0    = 9'h110,
    ADDR_HWREG_GOFFSET_2_V_CTRL      = 9'h114,
    ADDR_HWREG_BOFFSET_2_V_DATA_0    = 9'h118,
    ADDR_HWREG_BOFFSET_2_V_CTRL      = 9'h11c,
    ADDR_HWREG_CLAMPMIN_2_V_DATA_0   = 9'h120,
    ADDR_HWREG_CLAMPMIN_2_V_CTRL     = 9'h124,
    ADDR_HWREG_CLIPMAX_2_V_DATA_0    = 9'h128,
    ADDR_HWREG_CLIPMAX_2_V_CTRL      = 9'h12c,
    WRIDLE                           = 2'd0,
    WRDATA                           = 2'd1,
    WRRESP                           = 2'd2,
    WRRESET                          = 2'd3,
    RDIDLE                           = 2'd0,
    RDDATA                           = 2'd1,
    RDRESET                          = 2'd2,
    ADDR_BITS         = 9;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [7:0]                    int_HwReg_InVideoFormat = 'b0;
    reg  [7:0]                    int_HwReg_OutVideoFormat = 'b0;
    reg  [15:0]                   int_HwReg_width = 'b0;
    reg  [15:0]                   int_HwReg_height = 'b0;
    reg  [15:0]                   int_HwReg_ColStart = 'b0;
    reg  [15:0]                   int_HwReg_ColEnd = 'b0;
    reg  [15:0]                   int_HwReg_RowStart = 'b0;
    reg  [15:0]                   int_HwReg_RowEnd = 'b0;
    reg  [15:0]                   int_HwReg_K11 = 'b0;
    reg  [15:0]                   int_HwReg_K12 = 'b0;
    reg  [15:0]                   int_HwReg_K13 = 'b0;
    reg  [15:0]                   int_HwReg_K21 = 'b0;
    reg  [15:0]                   int_HwReg_K22 = 'b0;
    reg  [15:0]                   int_HwReg_K23 = 'b0;
    reg  [15:0]                   int_HwReg_K31 = 'b0;
    reg  [15:0]                   int_HwReg_K32 = 'b0;
    reg  [15:0]                   int_HwReg_K33 = 'b0;
    reg  [9:0]                    int_HwReg_ROffset_V = 'b0;
    reg  [9:0]                    int_HwReg_GOffset_V = 'b0;
    reg  [9:0]                    int_HwReg_BOffset_V = 'b0;
    reg  [7:0]                    int_HwReg_ClampMin_V = 'b0;
    reg  [7:0]                    int_HwReg_ClipMax_V = 'b0;
    reg  [15:0]                   int_HwReg_K11_2 = 'b0;
    reg  [15:0]                   int_HwReg_K12_2 = 'b0;
    reg  [15:0]                   int_HwReg_K13_2 = 'b0;
    reg  [15:0]                   int_HwReg_K21_2 = 'b0;
    reg  [15:0]                   int_HwReg_K22_2 = 'b0;
    reg  [15:0]                   int_HwReg_K23_2 = 'b0;
    reg  [15:0]                   int_HwReg_K31_2 = 'b0;
    reg  [15:0]                   int_HwReg_K32_2 = 'b0;
    reg  [15:0]                   int_HwReg_K33_2 = 'b0;
    reg  [9:0]                    int_HwReg_ROffset_2_V = 'b0;
    reg  [9:0]                    int_HwReg_GOffset_2_V = 'b0;
    reg  [9:0]                    int_HwReg_BOffset_2_V = 'b0;
    reg  [7:0]                    int_HwReg_ClampMin_2_V = 'b0;
    reg  [7:0]                    int_HwReg_ClipMax_2_V = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_HWREG_INVIDEOFORMAT_DATA_0: begin
                    rdata <= int_HwReg_InVideoFormat[7:0];
                end
                ADDR_HWREG_OUTVIDEOFORMAT_DATA_0: begin
                    rdata <= int_HwReg_OutVideoFormat[7:0];
                end
                ADDR_HWREG_WIDTH_DATA_0: begin
                    rdata <= int_HwReg_width[15:0];
                end
                ADDR_HWREG_HEIGHT_DATA_0: begin
                    rdata <= int_HwReg_height[15:0];
                end
                ADDR_HWREG_COLSTART_DATA_0: begin
                    rdata <= int_HwReg_ColStart[15:0];
                end
                ADDR_HWREG_COLEND_DATA_0: begin
                    rdata <= int_HwReg_ColEnd[15:0];
                end
                ADDR_HWREG_ROWSTART_DATA_0: begin
                    rdata <= int_HwReg_RowStart[15:0];
                end
                ADDR_HWREG_ROWEND_DATA_0: begin
                    rdata <= int_HwReg_RowEnd[15:0];
                end
                ADDR_HWREG_K11_DATA_0: begin
                    rdata <= int_HwReg_K11[15:0];
                end
                ADDR_HWREG_K12_DATA_0: begin
                    rdata <= int_HwReg_K12[15:0];
                end
                ADDR_HWREG_K13_DATA_0: begin
                    rdata <= int_HwReg_K13[15:0];
                end
                ADDR_HWREG_K21_DATA_0: begin
                    rdata <= int_HwReg_K21[15:0];
                end
                ADDR_HWREG_K22_DATA_0: begin
                    rdata <= int_HwReg_K22[15:0];
                end
                ADDR_HWREG_K23_DATA_0: begin
                    rdata <= int_HwReg_K23[15:0];
                end
                ADDR_HWREG_K31_DATA_0: begin
                    rdata <= int_HwReg_K31[15:0];
                end
                ADDR_HWREG_K32_DATA_0: begin
                    rdata <= int_HwReg_K32[15:0];
                end
                ADDR_HWREG_K33_DATA_0: begin
                    rdata <= int_HwReg_K33[15:0];
                end
                ADDR_HWREG_ROFFSET_V_DATA_0: begin
                    rdata <= int_HwReg_ROffset_V[9:0];
                end
                ADDR_HWREG_GOFFSET_V_DATA_0: begin
                    rdata <= int_HwReg_GOffset_V[9:0];
                end
                ADDR_HWREG_BOFFSET_V_DATA_0: begin
                    rdata <= int_HwReg_BOffset_V[9:0];
                end
                ADDR_HWREG_CLAMPMIN_V_DATA_0: begin
                    rdata <= int_HwReg_ClampMin_V[7:0];
                end
                ADDR_HWREG_CLIPMAX_V_DATA_0: begin
                    rdata <= int_HwReg_ClipMax_V[7:0];
                end
                ADDR_HWREG_K11_2_DATA_0: begin
                    rdata <= int_HwReg_K11_2[15:0];
                end
                ADDR_HWREG_K12_2_DATA_0: begin
                    rdata <= int_HwReg_K12_2[15:0];
                end
                ADDR_HWREG_K13_2_DATA_0: begin
                    rdata <= int_HwReg_K13_2[15:0];
                end
                ADDR_HWREG_K21_2_DATA_0: begin
                    rdata <= int_HwReg_K21_2[15:0];
                end
                ADDR_HWREG_K22_2_DATA_0: begin
                    rdata <= int_HwReg_K22_2[15:0];
                end
                ADDR_HWREG_K23_2_DATA_0: begin
                    rdata <= int_HwReg_K23_2[15:0];
                end
                ADDR_HWREG_K31_2_DATA_0: begin
                    rdata <= int_HwReg_K31_2[15:0];
                end
                ADDR_HWREG_K32_2_DATA_0: begin
                    rdata <= int_HwReg_K32_2[15:0];
                end
                ADDR_HWREG_K33_2_DATA_0: begin
                    rdata <= int_HwReg_K33_2[15:0];
                end
                ADDR_HWREG_ROFFSET_2_V_DATA_0: begin
                    rdata <= int_HwReg_ROffset_2_V[9:0];
                end
                ADDR_HWREG_GOFFSET_2_V_DATA_0: begin
                    rdata <= int_HwReg_GOffset_2_V[9:0];
                end
                ADDR_HWREG_BOFFSET_2_V_DATA_0: begin
                    rdata <= int_HwReg_BOffset_2_V[9:0];
                end
                ADDR_HWREG_CLAMPMIN_2_V_DATA_0: begin
                    rdata <= int_HwReg_ClampMin_2_V[7:0];
                end
                ADDR_HWREG_CLIPMAX_2_V_DATA_0: begin
                    rdata <= int_HwReg_ClipMax_2_V[7:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt            = int_gie & (|int_isr);
assign ap_start             = int_ap_start;
assign HwReg_InVideoFormat  = int_HwReg_InVideoFormat;
assign HwReg_OutVideoFormat = int_HwReg_OutVideoFormat;
assign HwReg_width          = int_HwReg_width;
assign HwReg_height         = int_HwReg_height;
assign HwReg_ColStart       = int_HwReg_ColStart;
assign HwReg_ColEnd         = int_HwReg_ColEnd;
assign HwReg_RowStart       = int_HwReg_RowStart;
assign HwReg_RowEnd         = int_HwReg_RowEnd;
assign HwReg_K11            = int_HwReg_K11;
assign HwReg_K12            = int_HwReg_K12;
assign HwReg_K13            = int_HwReg_K13;
assign HwReg_K21            = int_HwReg_K21;
assign HwReg_K22            = int_HwReg_K22;
assign HwReg_K23            = int_HwReg_K23;
assign HwReg_K31            = int_HwReg_K31;
assign HwReg_K32            = int_HwReg_K32;
assign HwReg_K33            = int_HwReg_K33;
assign HwReg_ROffset_V      = int_HwReg_ROffset_V;
assign HwReg_GOffset_V      = int_HwReg_GOffset_V;
assign HwReg_BOffset_V      = int_HwReg_BOffset_V;
assign HwReg_ClampMin_V     = int_HwReg_ClampMin_V;
assign HwReg_ClipMax_V      = int_HwReg_ClipMax_V;
assign HwReg_K11_2          = int_HwReg_K11_2;
assign HwReg_K12_2          = int_HwReg_K12_2;
assign HwReg_K13_2          = int_HwReg_K13_2;
assign HwReg_K21_2          = int_HwReg_K21_2;
assign HwReg_K22_2          = int_HwReg_K22_2;
assign HwReg_K23_2          = int_HwReg_K23_2;
assign HwReg_K31_2          = int_HwReg_K31_2;
assign HwReg_K32_2          = int_HwReg_K32_2;
assign HwReg_K33_2          = int_HwReg_K33_2;
assign HwReg_ROffset_2_V    = int_HwReg_ROffset_2_V;
assign HwReg_GOffset_2_V    = int_HwReg_GOffset_2_V;
assign HwReg_BOffset_2_V    = int_HwReg_BOffset_2_V;
assign HwReg_ClampMin_2_V   = int_HwReg_ClampMin_2_V;
assign HwReg_ClipMax_2_V    = int_HwReg_ClipMax_2_V;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_HwReg_InVideoFormat[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_InVideoFormat[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_INVIDEOFORMAT_DATA_0)
            int_HwReg_InVideoFormat[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_InVideoFormat[7:0] & ~wmask);
    end
end

// int_HwReg_OutVideoFormat[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_OutVideoFormat[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_OUTVIDEOFORMAT_DATA_0)
            int_HwReg_OutVideoFormat[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_OutVideoFormat[7:0] & ~wmask);
    end
end

// int_HwReg_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_WIDTH_DATA_0)
            int_HwReg_width[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_width[15:0] & ~wmask);
    end
end

// int_HwReg_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_HEIGHT_DATA_0)
            int_HwReg_height[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_height[15:0] & ~wmask);
    end
end

// int_HwReg_ColStart[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ColStart[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COLSTART_DATA_0)
            int_HwReg_ColStart[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ColStart[15:0] & ~wmask);
    end
end

// int_HwReg_ColEnd[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ColEnd[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COLEND_DATA_0)
            int_HwReg_ColEnd[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ColEnd[15:0] & ~wmask);
    end
end

// int_HwReg_RowStart[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_RowStart[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_ROWSTART_DATA_0)
            int_HwReg_RowStart[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_RowStart[15:0] & ~wmask);
    end
end

// int_HwReg_RowEnd[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_RowEnd[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_ROWEND_DATA_0)
            int_HwReg_RowEnd[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_RowEnd[15:0] & ~wmask);
    end
end

// int_HwReg_K11[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K11[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K11_DATA_0)
            int_HwReg_K11[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K11[15:0] & ~wmask);
    end
end

// int_HwReg_K12[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K12[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K12_DATA_0)
            int_HwReg_K12[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K12[15:0] & ~wmask);
    end
end

// int_HwReg_K13[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K13[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K13_DATA_0)
            int_HwReg_K13[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K13[15:0] & ~wmask);
    end
end

// int_HwReg_K21[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K21[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K21_DATA_0)
            int_HwReg_K21[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K21[15:0] & ~wmask);
    end
end

// int_HwReg_K22[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K22[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K22_DATA_0)
            int_HwReg_K22[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K22[15:0] & ~wmask);
    end
end

// int_HwReg_K23[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K23[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K23_DATA_0)
            int_HwReg_K23[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K23[15:0] & ~wmask);
    end
end

// int_HwReg_K31[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K31[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K31_DATA_0)
            int_HwReg_K31[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K31[15:0] & ~wmask);
    end
end

// int_HwReg_K32[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K32[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K32_DATA_0)
            int_HwReg_K32[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K32[15:0] & ~wmask);
    end
end

// int_HwReg_K33[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K33[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K33_DATA_0)
            int_HwReg_K33[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K33[15:0] & ~wmask);
    end
end

// int_HwReg_ROffset_V[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ROffset_V[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_ROFFSET_V_DATA_0)
            int_HwReg_ROffset_V[9:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ROffset_V[9:0] & ~wmask);
    end
end

// int_HwReg_GOffset_V[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_GOffset_V[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_GOFFSET_V_DATA_0)
            int_HwReg_GOffset_V[9:0] <= (WDATA[31:0] & wmask) | (int_HwReg_GOffset_V[9:0] & ~wmask);
    end
end

// int_HwReg_BOffset_V[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_BOffset_V[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_BOFFSET_V_DATA_0)
            int_HwReg_BOffset_V[9:0] <= (WDATA[31:0] & wmask) | (int_HwReg_BOffset_V[9:0] & ~wmask);
    end
end

// int_HwReg_ClampMin_V[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ClampMin_V[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_CLAMPMIN_V_DATA_0)
            int_HwReg_ClampMin_V[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ClampMin_V[7:0] & ~wmask);
    end
end

// int_HwReg_ClipMax_V[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ClipMax_V[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_CLIPMAX_V_DATA_0)
            int_HwReg_ClipMax_V[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ClipMax_V[7:0] & ~wmask);
    end
end

// int_HwReg_K11_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K11_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K11_2_DATA_0)
            int_HwReg_K11_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K11_2[15:0] & ~wmask);
    end
end

// int_HwReg_K12_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K12_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K12_2_DATA_0)
            int_HwReg_K12_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K12_2[15:0] & ~wmask);
    end
end

// int_HwReg_K13_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K13_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K13_2_DATA_0)
            int_HwReg_K13_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K13_2[15:0] & ~wmask);
    end
end

// int_HwReg_K21_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K21_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K21_2_DATA_0)
            int_HwReg_K21_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K21_2[15:0] & ~wmask);
    end
end

// int_HwReg_K22_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K22_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K22_2_DATA_0)
            int_HwReg_K22_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K22_2[15:0] & ~wmask);
    end
end

// int_HwReg_K23_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K23_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K23_2_DATA_0)
            int_HwReg_K23_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K23_2[15:0] & ~wmask);
    end
end

// int_HwReg_K31_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K31_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K31_2_DATA_0)
            int_HwReg_K31_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K31_2[15:0] & ~wmask);
    end
end

// int_HwReg_K32_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K32_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K32_2_DATA_0)
            int_HwReg_K32_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K32_2[15:0] & ~wmask);
    end
end

// int_HwReg_K33_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_K33_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_K33_2_DATA_0)
            int_HwReg_K33_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_K33_2[15:0] & ~wmask);
    end
end

// int_HwReg_ROffset_2_V[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ROffset_2_V[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_ROFFSET_2_V_DATA_0)
            int_HwReg_ROffset_2_V[9:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ROffset_2_V[9:0] & ~wmask);
    end
end

// int_HwReg_GOffset_2_V[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_GOffset_2_V[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_GOFFSET_2_V_DATA_0)
            int_HwReg_GOffset_2_V[9:0] <= (WDATA[31:0] & wmask) | (int_HwReg_GOffset_2_V[9:0] & ~wmask);
    end
end

// int_HwReg_BOffset_2_V[9:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_BOffset_2_V[9:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_BOFFSET_2_V_DATA_0)
            int_HwReg_BOffset_2_V[9:0] <= (WDATA[31:0] & wmask) | (int_HwReg_BOffset_2_V[9:0] & ~wmask);
    end
end

// int_HwReg_ClampMin_2_V[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ClampMin_2_V[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_CLAMPMIN_2_V_DATA_0)
            int_HwReg_ClampMin_2_V[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ClampMin_2_V[7:0] & ~wmask);
    end
end

// int_HwReg_ClipMax_2_V[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_ClipMax_2_V[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_CLIPMAX_2_V_DATA_0)
            int_HwReg_ClipMax_2_V[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_ClipMax_2_V[7:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
