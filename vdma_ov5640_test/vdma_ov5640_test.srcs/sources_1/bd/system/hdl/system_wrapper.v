//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Tue Jan 19 22:55:11 2021
//Host        : archlinux running 64-bit Arch Linux
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
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
    cmos0_i2c_scl_io,
    cmos0_i2c_sda_io,
    cmos0_nreset,
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
  inout cmos0_i2c_scl_io;
  inout cmos0_i2c_sda_io;
  output [0:0]cmos0_nreset;
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
  wire cmos0_i2c_scl_i;
  wire cmos0_i2c_scl_io;
  wire cmos0_i2c_scl_o;
  wire cmos0_i2c_scl_t;
  wire cmos0_i2c_sda_i;
  wire cmos0_i2c_sda_io;
  wire cmos0_i2c_sda_o;
  wire cmos0_i2c_sda_t;
  wire [0:0]cmos0_nreset;
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

  IOBUF cmos0_i2c_scl_iobuf
       (.I(cmos0_i2c_scl_o),
        .IO(cmos0_i2c_scl_io),
        .O(cmos0_i2c_scl_i),
        .T(cmos0_i2c_scl_t));
  IOBUF cmos0_i2c_sda_iobuf
       (.I(cmos0_i2c_sda_o),
        .IO(cmos0_i2c_sda_io),
        .O(cmos0_i2c_sda_i),
        .T(cmos0_i2c_sda_t));
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
  system system_i
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
        .cmos0_i2c_scl_i(cmos0_i2c_scl_i),
        .cmos0_i2c_scl_o(cmos0_i2c_scl_o),
        .cmos0_i2c_scl_t(cmos0_i2c_scl_t),
        .cmos0_i2c_sda_i(cmos0_i2c_sda_i),
        .cmos0_i2c_sda_o(cmos0_i2c_sda_o),
        .cmos0_i2c_sda_t(cmos0_i2c_sda_t),
        .cmos0_nreset(cmos0_nreset),
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
endmodule
