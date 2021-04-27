// ==============================================================
// File generated on Sat Apr 24 21:19:53 CST 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module bd_2d50_hcr_0_v_hcresampler_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
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
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire [15:0]                   HwReg_width,
    output wire [15:0]                   HwReg_height,
    output wire [7:0]                    HwReg_input_video_format,
    output wire [7:0]                    HwReg_output_video_format,
    output wire [15:0]                   HwReg_coefs_0_0,
    output wire [15:0]                   HwReg_coefs_0_1,
    output wire [15:0]                   HwReg_coefs_0_2,
    output wire [15:0]                   HwReg_coefs_0_3,
    output wire [15:0]                   HwReg_coefs_1_0,
    output wire [15:0]                   HwReg_coefs_1_1,
    output wire [15:0]                   HwReg_coefs_1_2,
    output wire [15:0]                   HwReg_coefs_1_3
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of HwReg_width
//        bit 15~0 - HwReg_width[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of HwReg_height
//        bit 15~0 - HwReg_height[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of HwReg_input_video_format
//        bit 7~0 - HwReg_input_video_format[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of HwReg_output_video_format
//        bit 7~0 - HwReg_output_video_format[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of HwReg_coefs_0_0
//        bit 15~0 - HwReg_coefs_0_0[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of HwReg_coefs_0_1
//        bit 15~0 - HwReg_coefs_0_1[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of HwReg_coefs_0_2
//        bit 15~0 - HwReg_coefs_0_2[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of HwReg_coefs_0_3
//        bit 15~0 - HwReg_coefs_0_3[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// 0x50 : Data signal of HwReg_coefs_1_0
//        bit 15~0 - HwReg_coefs_1_0[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of HwReg_coefs_1_1
//        bit 15~0 - HwReg_coefs_1_1[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// 0x60 : Data signal of HwReg_coefs_1_2
//        bit 15~0 - HwReg_coefs_1_2[15:0] (Read/Write)
//        others   - reserved
// 0x64 : reserved
// 0x68 : Data signal of HwReg_coefs_1_3
//        bit 15~0 - HwReg_coefs_1_3[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                          = 7'h00,
    ADDR_GIE                              = 7'h04,
    ADDR_IER                              = 7'h08,
    ADDR_ISR                              = 7'h0c,
    ADDR_HWREG_WIDTH_DATA_0               = 7'h10,
    ADDR_HWREG_WIDTH_CTRL                 = 7'h14,
    ADDR_HWREG_HEIGHT_DATA_0              = 7'h18,
    ADDR_HWREG_HEIGHT_CTRL                = 7'h1c,
    ADDR_HWREG_INPUT_VIDEO_FORMAT_DATA_0  = 7'h20,
    ADDR_HWREG_INPUT_VIDEO_FORMAT_CTRL    = 7'h24,
    ADDR_HWREG_OUTPUT_VIDEO_FORMAT_DATA_0 = 7'h28,
    ADDR_HWREG_OUTPUT_VIDEO_FORMAT_CTRL   = 7'h2c,
    ADDR_HWREG_COEFS_0_0_DATA_0           = 7'h30,
    ADDR_HWREG_COEFS_0_0_CTRL             = 7'h34,
    ADDR_HWREG_COEFS_0_1_DATA_0           = 7'h38,
    ADDR_HWREG_COEFS_0_1_CTRL             = 7'h3c,
    ADDR_HWREG_COEFS_0_2_DATA_0           = 7'h40,
    ADDR_HWREG_COEFS_0_2_CTRL             = 7'h44,
    ADDR_HWREG_COEFS_0_3_DATA_0           = 7'h48,
    ADDR_HWREG_COEFS_0_3_CTRL             = 7'h4c,
    ADDR_HWREG_COEFS_1_0_DATA_0           = 7'h50,
    ADDR_HWREG_COEFS_1_0_CTRL             = 7'h54,
    ADDR_HWREG_COEFS_1_1_DATA_0           = 7'h58,
    ADDR_HWREG_COEFS_1_1_CTRL             = 7'h5c,
    ADDR_HWREG_COEFS_1_2_DATA_0           = 7'h60,
    ADDR_HWREG_COEFS_1_2_CTRL             = 7'h64,
    ADDR_HWREG_COEFS_1_3_DATA_0           = 7'h68,
    ADDR_HWREG_COEFS_1_3_CTRL             = 7'h6c,
    WRIDLE                                = 2'd0,
    WRDATA                                = 2'd1,
    WRRESP                                = 2'd2,
    WRRESET                               = 2'd3,
    RDIDLE                                = 2'd0,
    RDDATA                                = 2'd1,
    RDRESET                               = 2'd2,
    ADDR_BITS         = 7;

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
    reg  [15:0]                   int_HwReg_width = 'b0;
    reg  [15:0]                   int_HwReg_height = 'b0;
    reg  [7:0]                    int_HwReg_input_video_format = 'b0;
    reg  [7:0]                    int_HwReg_output_video_format = 'b0;
    reg  [15:0]                   int_HwReg_coefs_0_0 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_0_1 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_0_2 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_0_3 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_1_0 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_1_1 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_1_2 = 'b0;
    reg  [15:0]                   int_HwReg_coefs_1_3 = 'b0;

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
                ADDR_HWREG_WIDTH_DATA_0: begin
                    rdata <= int_HwReg_width[15:0];
                end
                ADDR_HWREG_HEIGHT_DATA_0: begin
                    rdata <= int_HwReg_height[15:0];
                end
                ADDR_HWREG_INPUT_VIDEO_FORMAT_DATA_0: begin
                    rdata <= int_HwReg_input_video_format[7:0];
                end
                ADDR_HWREG_OUTPUT_VIDEO_FORMAT_DATA_0: begin
                    rdata <= int_HwReg_output_video_format[7:0];
                end
                ADDR_HWREG_COEFS_0_0_DATA_0: begin
                    rdata <= int_HwReg_coefs_0_0[15:0];
                end
                ADDR_HWREG_COEFS_0_1_DATA_0: begin
                    rdata <= int_HwReg_coefs_0_1[15:0];
                end
                ADDR_HWREG_COEFS_0_2_DATA_0: begin
                    rdata <= int_HwReg_coefs_0_2[15:0];
                end
                ADDR_HWREG_COEFS_0_3_DATA_0: begin
                    rdata <= int_HwReg_coefs_0_3[15:0];
                end
                ADDR_HWREG_COEFS_1_0_DATA_0: begin
                    rdata <= int_HwReg_coefs_1_0[15:0];
                end
                ADDR_HWREG_COEFS_1_1_DATA_0: begin
                    rdata <= int_HwReg_coefs_1_1[15:0];
                end
                ADDR_HWREG_COEFS_1_2_DATA_0: begin
                    rdata <= int_HwReg_coefs_1_2[15:0];
                end
                ADDR_HWREG_COEFS_1_3_DATA_0: begin
                    rdata <= int_HwReg_coefs_1_3[15:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt                 = int_gie & (|int_isr);
assign ap_start                  = int_ap_start;
assign HwReg_width               = int_HwReg_width;
assign HwReg_height              = int_HwReg_height;
assign HwReg_input_video_format  = int_HwReg_input_video_format;
assign HwReg_output_video_format = int_HwReg_output_video_format;
assign HwReg_coefs_0_0           = int_HwReg_coefs_0_0;
assign HwReg_coefs_0_1           = int_HwReg_coefs_0_1;
assign HwReg_coefs_0_2           = int_HwReg_coefs_0_2;
assign HwReg_coefs_0_3           = int_HwReg_coefs_0_3;
assign HwReg_coefs_1_0           = int_HwReg_coefs_1_0;
assign HwReg_coefs_1_1           = int_HwReg_coefs_1_1;
assign HwReg_coefs_1_2           = int_HwReg_coefs_1_2;
assign HwReg_coefs_1_3           = int_HwReg_coefs_1_3;
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

// int_HwReg_input_video_format[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_input_video_format[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_INPUT_VIDEO_FORMAT_DATA_0)
            int_HwReg_input_video_format[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_input_video_format[7:0] & ~wmask);
    end
end

// int_HwReg_output_video_format[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_output_video_format[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_OUTPUT_VIDEO_FORMAT_DATA_0)
            int_HwReg_output_video_format[7:0] <= (WDATA[31:0] & wmask) | (int_HwReg_output_video_format[7:0] & ~wmask);
    end
end

// int_HwReg_coefs_0_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_0_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_0_0_DATA_0)
            int_HwReg_coefs_0_0[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_0_0[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_0_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_0_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_0_1_DATA_0)
            int_HwReg_coefs_0_1[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_0_1[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_0_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_0_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_0_2_DATA_0)
            int_HwReg_coefs_0_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_0_2[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_0_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_0_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_0_3_DATA_0)
            int_HwReg_coefs_0_3[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_0_3[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_1_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_1_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_1_0_DATA_0)
            int_HwReg_coefs_1_0[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_1_0[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_1_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_1_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_1_1_DATA_0)
            int_HwReg_coefs_1_1[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_1_1[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_1_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_1_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_1_2_DATA_0)
            int_HwReg_coefs_1_2[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_1_2[15:0] & ~wmask);
    end
end

// int_HwReg_coefs_1_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_coefs_1_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_COEFS_1_3_DATA_0)
            int_HwReg_coefs_1_3[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_coefs_1_3[15:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule