//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Tue Apr 20 09:55:02 2021
//Host        : archlinux running 64-bit Arch Linux
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cmos_data,
    cmos_href,
    cmos_i2c_scl_io,
    cmos_i2c_sda_io,
    cmos_pclk,
    cmos_rst_n,
    cmos_vsync,
    hdmi_clk,
    hdmi_d,
    hdmi_de,
    hdmi_hs,
    hdmi_i2c_scl_io,
    hdmi_i2c_sda_io,
    hdmi_nreset,
    hdmi_vs);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [9:0]cmos_data;
  input cmos_href;
  inout cmos_i2c_scl_io;
  inout cmos_i2c_sda_io;
  input cmos_pclk;
  output [0:0]cmos_rst_n;
  input cmos_vsync;
  output hdmi_clk;
  output [23:0]hdmi_d;
  output hdmi_de;
  output hdmi_hs;
  inout hdmi_i2c_scl_io;
  inout hdmi_i2c_sda_io;
  output [0:0]hdmi_nreset;
  output hdmi_vs;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [9:0]cmos_data;
  wire cmos_href;
  wire cmos_i2c_scl_i;
  wire cmos_i2c_scl_io;
  wire cmos_i2c_scl_o;
  wire cmos_i2c_scl_t;
  wire cmos_i2c_sda_i;
  wire cmos_i2c_sda_io;
  wire cmos_i2c_sda_o;
  wire cmos_i2c_sda_t;
  wire cmos_pclk;
  wire [0:0]cmos_rst_n;
  wire cmos_vsync;
  wire hdmi_clk;
  wire [23:0]hdmi_d;
  wire hdmi_de;
  wire hdmi_hs;
  wire hdmi_i2c_scl_i;
  wire hdmi_i2c_scl_io;
  wire hdmi_i2c_scl_o;
  wire hdmi_i2c_scl_t;
  wire hdmi_i2c_sda_i;
  wire hdmi_i2c_sda_io;
  wire hdmi_i2c_sda_o;
  wire hdmi_i2c_sda_t;
  wire [0:0]hdmi_nreset;
  wire hdmi_vs;

  IOBUF cmos_i2c_scl_iobuf
       (.I(cmos_i2c_scl_o),
        .IO(cmos_i2c_scl_io),
        .O(cmos_i2c_scl_i),
        .T(cmos_i2c_scl_t));
  IOBUF cmos_i2c_sda_iobuf
       (.I(cmos_i2c_sda_o),
        .IO(cmos_i2c_sda_io),
        .O(cmos_i2c_sda_i),
        .T(cmos_i2c_sda_t));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .cmos_data(cmos_data),
        .cmos_href(cmos_href),
        .cmos_i2c_scl_i(cmos_i2c_scl_i),
        .cmos_i2c_scl_o(cmos_i2c_scl_o),
        .cmos_i2c_scl_t(cmos_i2c_scl_t),
        .cmos_i2c_sda_i(cmos_i2c_sda_i),
        .cmos_i2c_sda_o(cmos_i2c_sda_o),
        .cmos_i2c_sda_t(cmos_i2c_sda_t),
        .cmos_pclk(cmos_pclk),
        .cmos_rst_n(cmos_rst_n),
        .cmos_vsync(cmos_vsync),
        .hdmi_clk(hdmi_clk),
        .hdmi_d(hdmi_d),
        .hdmi_de(hdmi_de),
        .hdmi_hs(hdmi_hs),
        .hdmi_i2c_scl_i(hdmi_i2c_scl_i),
        .hdmi_i2c_scl_o(hdmi_i2c_scl_o),
        .hdmi_i2c_scl_t(hdmi_i2c_scl_t),
        .hdmi_i2c_sda_i(hdmi_i2c_sda_i),
        .hdmi_i2c_sda_o(hdmi_i2c_sda_o),
        .hdmi_i2c_sda_t(hdmi_i2c_sda_t),
        .hdmi_nreset(hdmi_nreset),
        .hdmi_vs(hdmi_vs));
  IOBUF hdmi_i2c_scl_iobuf
       (.I(hdmi_i2c_scl_o),
        .IO(hdmi_i2c_scl_io),
        .O(hdmi_i2c_scl_i),
        .T(hdmi_i2c_scl_t));
  IOBUF hdmi_i2c_sda_iobuf
       (.I(hdmi_i2c_sda_o),
        .IO(hdmi_i2c_sda_io),
        .O(hdmi_i2c_sda_i),
        .T(hdmi_i2c_sda_t));
endmodule
