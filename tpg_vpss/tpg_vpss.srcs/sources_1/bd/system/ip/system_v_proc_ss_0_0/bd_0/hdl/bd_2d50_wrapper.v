//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_2d50_wrapper.bd
//Design : bd_2d50_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_2d50_wrapper
   (aclk_axi_mm,
    aclk_axis,
    aclk_ctrl,
    aresetn_ctrl,
    aresetn_io_axis,
    deint_field_id,
    m_axi_mm_araddr,
    m_axi_mm_arburst,
    m_axi_mm_arcache,
    m_axi_mm_arid,
    m_axi_mm_arlen,
    m_axi_mm_arlock,
    m_axi_mm_arprot,
    m_axi_mm_arqos,
    m_axi_mm_arready,
    m_axi_mm_arregion,
    m_axi_mm_arsize,
    m_axi_mm_arvalid,
    m_axi_mm_awaddr,
    m_axi_mm_awburst,
    m_axi_mm_awcache,
    m_axi_mm_awid,
    m_axi_mm_awlen,
    m_axi_mm_awlock,
    m_axi_mm_awprot,
    m_axi_mm_awqos,
    m_axi_mm_awready,
    m_axi_mm_awregion,
    m_axi_mm_awsize,
    m_axi_mm_awvalid,
    m_axi_mm_bid,
    m_axi_mm_bready,
    m_axi_mm_bresp,
    m_axi_mm_bvalid,
    m_axi_mm_rdata,
    m_axi_mm_rid,
    m_axi_mm_rlast,
    m_axi_mm_rready,
    m_axi_mm_rresp,
    m_axi_mm_rvalid,
    m_axi_mm_wdata,
    m_axi_mm_wlast,
    m_axi_mm_wready,
    m_axi_mm_wstrb,
    m_axi_mm_wvalid,
    m_axis_tdata,
    m_axis_tdest,
    m_axis_tid,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    m_axis_tuser,
    m_axis_tvalid,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wready,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    s_axis_tdata,
    s_axis_tdest,
    s_axis_tid,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid);
  input aclk_axi_mm;
  input aclk_axis;
  input aclk_ctrl;
  input aresetn_ctrl;
  output [0:0]aresetn_io_axis;
  input deint_field_id;
  output [31:0]m_axi_mm_araddr;
  output [1:0]m_axi_mm_arburst;
  output [3:0]m_axi_mm_arcache;
  output [1:0]m_axi_mm_arid;
  output [7:0]m_axi_mm_arlen;
  output [0:0]m_axi_mm_arlock;
  output [2:0]m_axi_mm_arprot;
  output [3:0]m_axi_mm_arqos;
  input [0:0]m_axi_mm_arready;
  output [3:0]m_axi_mm_arregion;
  output [2:0]m_axi_mm_arsize;
  output [0:0]m_axi_mm_arvalid;
  output [31:0]m_axi_mm_awaddr;
  output [1:0]m_axi_mm_awburst;
  output [3:0]m_axi_mm_awcache;
  output [1:0]m_axi_mm_awid;
  output [7:0]m_axi_mm_awlen;
  output [0:0]m_axi_mm_awlock;
  output [2:0]m_axi_mm_awprot;
  output [3:0]m_axi_mm_awqos;
  input [0:0]m_axi_mm_awready;
  output [3:0]m_axi_mm_awregion;
  output [2:0]m_axi_mm_awsize;
  output [0:0]m_axi_mm_awvalid;
  input [1:0]m_axi_mm_bid;
  output [0:0]m_axi_mm_bready;
  input [1:0]m_axi_mm_bresp;
  input [0:0]m_axi_mm_bvalid;
  input [255:0]m_axi_mm_rdata;
  input [1:0]m_axi_mm_rid;
  input [0:0]m_axi_mm_rlast;
  output [0:0]m_axi_mm_rready;
  input [1:0]m_axi_mm_rresp;
  input [0:0]m_axi_mm_rvalid;
  output [255:0]m_axi_mm_wdata;
  output [0:0]m_axi_mm_wlast;
  input [0:0]m_axi_mm_wready;
  output [31:0]m_axi_mm_wstrb;
  output [0:0]m_axi_mm_wvalid;
  output [23:0]m_axis_tdata;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tid;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  input m_axis_tready;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tuser;
  output m_axis_tvalid;
  input [19:0]s_axi_ctrl_araddr;
  input [2:0]s_axi_ctrl_arprot;
  output [0:0]s_axi_ctrl_arready;
  input [0:0]s_axi_ctrl_arvalid;
  input [19:0]s_axi_ctrl_awaddr;
  input [2:0]s_axi_ctrl_awprot;
  output [0:0]s_axi_ctrl_awready;
  input [0:0]s_axi_ctrl_awvalid;
  input [0:0]s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  output [0:0]s_axi_ctrl_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  input [0:0]s_axi_ctrl_rready;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_axi_ctrl_rvalid;
  input [31:0]s_axi_ctrl_wdata;
  output [0:0]s_axi_ctrl_wready;
  input [3:0]s_axi_ctrl_wstrb;
  input [0:0]s_axi_ctrl_wvalid;
  input [23:0]s_axis_tdata;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tid;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  output s_axis_tready;
  input [2:0]s_axis_tstrb;
  input [0:0]s_axis_tuser;
  input s_axis_tvalid;

  wire aclk_axi_mm;
  wire aclk_axis;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [0:0]aresetn_io_axis;
  wire deint_field_id;
  wire [31:0]m_axi_mm_araddr;
  wire [1:0]m_axi_mm_arburst;
  wire [3:0]m_axi_mm_arcache;
  wire [1:0]m_axi_mm_arid;
  wire [7:0]m_axi_mm_arlen;
  wire [0:0]m_axi_mm_arlock;
  wire [2:0]m_axi_mm_arprot;
  wire [3:0]m_axi_mm_arqos;
  wire [0:0]m_axi_mm_arready;
  wire [3:0]m_axi_mm_arregion;
  wire [2:0]m_axi_mm_arsize;
  wire [0:0]m_axi_mm_arvalid;
  wire [31:0]m_axi_mm_awaddr;
  wire [1:0]m_axi_mm_awburst;
  wire [3:0]m_axi_mm_awcache;
  wire [1:0]m_axi_mm_awid;
  wire [7:0]m_axi_mm_awlen;
  wire [0:0]m_axi_mm_awlock;
  wire [2:0]m_axi_mm_awprot;
  wire [3:0]m_axi_mm_awqos;
  wire [0:0]m_axi_mm_awready;
  wire [3:0]m_axi_mm_awregion;
  wire [2:0]m_axi_mm_awsize;
  wire [0:0]m_axi_mm_awvalid;
  wire [1:0]m_axi_mm_bid;
  wire [0:0]m_axi_mm_bready;
  wire [1:0]m_axi_mm_bresp;
  wire [0:0]m_axi_mm_bvalid;
  wire [255:0]m_axi_mm_rdata;
  wire [1:0]m_axi_mm_rid;
  wire [0:0]m_axi_mm_rlast;
  wire [0:0]m_axi_mm_rready;
  wire [1:0]m_axi_mm_rresp;
  wire [0:0]m_axi_mm_rvalid;
  wire [255:0]m_axi_mm_wdata;
  wire [0:0]m_axi_mm_wlast;
  wire [0:0]m_axi_mm_wready;
  wire [31:0]m_axi_mm_wstrb;
  wire [0:0]m_axi_mm_wvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [19:0]s_axi_ctrl_araddr;
  wire [2:0]s_axi_ctrl_arprot;
  wire [0:0]s_axi_ctrl_arready;
  wire [0:0]s_axi_ctrl_arvalid;
  wire [19:0]s_axi_ctrl_awaddr;
  wire [2:0]s_axi_ctrl_awprot;
  wire [0:0]s_axi_ctrl_awready;
  wire [0:0]s_axi_ctrl_awvalid;
  wire [0:0]s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire [0:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire [0:0]s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire [0:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire [0:0]s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire [0:0]s_axi_ctrl_wvalid;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  bd_2d50 bd_2d50_i
       (.aclk_axi_mm(aclk_axi_mm),
        .aclk_axis(aclk_axis),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_io_axis(aresetn_io_axis),
        .deint_field_id(deint_field_id),
        .m_axi_mm_araddr(m_axi_mm_araddr),
        .m_axi_mm_arburst(m_axi_mm_arburst),
        .m_axi_mm_arcache(m_axi_mm_arcache),
        .m_axi_mm_arid(m_axi_mm_arid),
        .m_axi_mm_arlen(m_axi_mm_arlen),
        .m_axi_mm_arlock(m_axi_mm_arlock),
        .m_axi_mm_arprot(m_axi_mm_arprot),
        .m_axi_mm_arqos(m_axi_mm_arqos),
        .m_axi_mm_arready(m_axi_mm_arready),
        .m_axi_mm_arregion(m_axi_mm_arregion),
        .m_axi_mm_arsize(m_axi_mm_arsize),
        .m_axi_mm_arvalid(m_axi_mm_arvalid),
        .m_axi_mm_awaddr(m_axi_mm_awaddr),
        .m_axi_mm_awburst(m_axi_mm_awburst),
        .m_axi_mm_awcache(m_axi_mm_awcache),
        .m_axi_mm_awid(m_axi_mm_awid),
        .m_axi_mm_awlen(m_axi_mm_awlen),
        .m_axi_mm_awlock(m_axi_mm_awlock),
        .m_axi_mm_awprot(m_axi_mm_awprot),
        .m_axi_mm_awqos(m_axi_mm_awqos),
        .m_axi_mm_awready(m_axi_mm_awready),
        .m_axi_mm_awregion(m_axi_mm_awregion),
        .m_axi_mm_awsize(m_axi_mm_awsize),
        .m_axi_mm_awvalid(m_axi_mm_awvalid),
        .m_axi_mm_bid(m_axi_mm_bid),
        .m_axi_mm_bready(m_axi_mm_bready),
        .m_axi_mm_bresp(m_axi_mm_bresp),
        .m_axi_mm_bvalid(m_axi_mm_bvalid),
        .m_axi_mm_rdata(m_axi_mm_rdata),
        .m_axi_mm_rid(m_axi_mm_rid),
        .m_axi_mm_rlast(m_axi_mm_rlast),
        .m_axi_mm_rready(m_axi_mm_rready),
        .m_axi_mm_rresp(m_axi_mm_rresp),
        .m_axi_mm_rvalid(m_axi_mm_rvalid),
        .m_axi_mm_wdata(m_axi_mm_wdata),
        .m_axi_mm_wlast(m_axi_mm_wlast),
        .m_axi_mm_wready(m_axi_mm_wready),
        .m_axi_mm_wstrb(m_axi_mm_wstrb),
        .m_axi_mm_wvalid(m_axi_mm_wvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arprot(s_axi_ctrl_arprot),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awprot(s_axi_ctrl_awprot),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wstrb(s_axi_ctrl_wstrb),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
