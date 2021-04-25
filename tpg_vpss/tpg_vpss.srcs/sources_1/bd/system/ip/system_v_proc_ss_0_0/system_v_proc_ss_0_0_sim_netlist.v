// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 24 21:24:49 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top system_v_proc_ss_0_0 -prefix
//               system_v_proc_ss_0_0_ system_v_proc_ss_0_0_sim_netlist.v
// Design      : system_v_proc_ss_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "system_v_proc_ss_0_0.hwdef" *) 
module system_v_proc_ss_0_0_bd_2d50
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_AXI_MM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_AXI_MM, ASSOCIATED_BUSIF m_axi_mm, ASSOCIATED_CLKEN m_axis_aclken, ASSOCIATED_RESET aresetn_axi_mm, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, INSERT_VIP 0, PHASE 0.000" *) input aclk_axi_mm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_AXIS CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_AXIS, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_CLKEN s_axis_aclken, ASSOCIATED_RESET aresetn_io_axis, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, INSERT_VIP 0, PHASE 0.000" *) input aclk_axis;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, INSERT_VIP 0, PHASE 0.000" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_IO_AXIS RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_IO_AXIS, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_io_axis;
  input deint_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mm, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 256, FREQ_HZ 133333344, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 32, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]m_axi_mm_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARBURST" *) output [1:0]m_axi_mm_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARCACHE" *) output [3:0]m_axi_mm_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARID" *) output [1:0]m_axi_mm_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARLEN" *) output [7:0]m_axi_mm_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARLOCK" *) output [0:0]m_axi_mm_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARPROT" *) output [2:0]m_axi_mm_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARQOS" *) output [3:0]m_axi_mm_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARREADY" *) input [0:0]m_axi_mm_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARREGION" *) output [3:0]m_axi_mm_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARSIZE" *) output [2:0]m_axi_mm_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARVALID" *) output [0:0]m_axi_mm_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWADDR" *) output [31:0]m_axi_mm_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWBURST" *) output [1:0]m_axi_mm_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWCACHE" *) output [3:0]m_axi_mm_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWID" *) output [1:0]m_axi_mm_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWLEN" *) output [7:0]m_axi_mm_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWLOCK" *) output [0:0]m_axi_mm_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWPROT" *) output [2:0]m_axi_mm_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWQOS" *) output [3:0]m_axi_mm_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWREADY" *) input [0:0]m_axi_mm_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWREGION" *) output [3:0]m_axi_mm_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWSIZE" *) output [2:0]m_axi_mm_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWVALID" *) output [0:0]m_axi_mm_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BID" *) input [1:0]m_axi_mm_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BREADY" *) output [0:0]m_axi_mm_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BRESP" *) input [1:0]m_axi_mm_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BVALID" *) input [0:0]m_axi_mm_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RDATA" *) input [255:0]m_axi_mm_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RID" *) input [1:0]m_axi_mm_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RLAST" *) input [0:0]m_axi_mm_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RREADY" *) output [0:0]m_axi_mm_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RRESP" *) input [1:0]m_axi_mm_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RVALID" *) input [0:0]m_axi_mm_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WDATA" *) output [255:0]m_axi_mm_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WLAST" *) output [0:0]m_axi_mm_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WREADY" *) input [0:0]m_axi_mm_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WSTRB" *) output [31:0]m_axi_mm_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WVALID" *) output [0:0]m_axi_mm_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 3" *) output [23:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDEST" *) output [0:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [0:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [2:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [2:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [2:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 20, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 32, FREQ_HZ 133333344, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [19:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output [0:0]s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input [0:0]s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [19:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output [0:0]s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input [0:0]s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input [0:0]s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output [0:0]s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input [0:0]s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output [0:0]s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output [0:0]s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input [0:0]s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [23:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [0:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [0:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [2:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TSTRB" *) input [2:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [0:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;

  wire aclk_axi_mm;
  wire aclk_axis;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [0:0]aresetn_io_axis;
  wire deint_field_id;
  wire [19:0]intf_net_axi_interconnect_0_M00_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M00_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M00_AXI_ARVALID;
  wire [19:0]intf_net_axi_interconnect_0_M00_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M00_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M00_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M00_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M00_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M00_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M00_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M00_AXI_WREADY;
  wire intf_net_axi_interconnect_0_M00_AXI_WVALID;
  wire [8:0]intf_net_axi_interconnect_0_M01_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M01_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M01_AXI_ARVALID;
  wire [8:0]intf_net_axi_interconnect_0_M01_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M01_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M01_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M01_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M01_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M01_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M01_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M01_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M01_AXI_WVALID;
  wire [11:0]intf_net_axi_interconnect_0_M02_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M02_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M02_AXI_ARVALID;
  wire [11:0]intf_net_axi_interconnect_0_M02_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M02_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M02_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M02_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M02_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M02_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M02_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M02_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M02_AXI_WVALID;
  wire [13:0]intf_net_axi_interconnect_0_M03_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M03_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M03_AXI_ARVALID;
  wire [13:0]intf_net_axi_interconnect_0_M03_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M03_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M03_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M03_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M03_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M03_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M03_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M03_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M03_AXI_WVALID;
  wire [6:0]intf_net_axi_interconnect_0_M04_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M04_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M04_AXI_ARVALID;
  wire [6:0]intf_net_axi_interconnect_0_M04_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M04_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M04_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M04_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M04_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M04_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M04_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M04_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M04_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M04_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M04_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M04_AXI_WVALID;
  wire [10:0]intf_net_axi_interconnect_0_M05_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M05_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M05_AXI_ARVALID;
  wire [10:0]intf_net_axi_interconnect_0_M05_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M05_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M05_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M05_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M05_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M05_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M05_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M05_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M05_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M05_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M05_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M05_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M05_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M05_AXI_WVALID;
  wire [10:0]intf_net_axi_interconnect_0_M06_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M06_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M06_AXI_ARVALID;
  wire [10:0]intf_net_axi_interconnect_0_M06_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M06_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M06_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M06_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M06_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M06_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M06_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M06_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M06_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M06_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M06_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M06_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M06_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M06_AXI_WVALID;
  wire [10:0]intf_net_axi_interconnect_0_M07_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M07_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M07_AXI_ARVALID;
  wire [10:0]intf_net_axi_interconnect_0_M07_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M07_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M07_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M07_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M07_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M07_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M07_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M07_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M07_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M07_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M07_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M07_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M07_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M07_AXI_WVALID;
  wire [8:0]intf_net_axi_interconnect_0_M08_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M08_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M08_AXI_ARVALID;
  wire [8:0]intf_net_axi_interconnect_0_M08_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M08_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M08_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M08_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M08_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M08_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M08_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M08_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M08_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M08_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M08_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M08_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M08_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M08_AXI_WVALID;
  wire [8:0]intf_net_axi_interconnect_0_M09_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M09_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M09_AXI_ARVALID;
  wire [8:0]intf_net_axi_interconnect_0_M09_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M09_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M09_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M09_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M09_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M09_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M09_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M09_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M09_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M09_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M09_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M09_AXI_WREADY;
  wire intf_net_axi_interconnect_0_M09_AXI_WVALID;
  wire [6:0]intf_net_axi_interconnect_0_M10_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M10_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M10_AXI_ARVALID;
  wire [6:0]intf_net_axi_interconnect_0_M10_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M10_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M10_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M10_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M10_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M10_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M10_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M10_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M10_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M10_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M10_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M10_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M10_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M10_AXI_WVALID;
  wire [8:0]intf_net_axi_interconnect_0_M11_AXI_ARADDR;
  wire intf_net_axi_interconnect_0_M11_AXI_ARREADY;
  wire intf_net_axi_interconnect_0_M11_AXI_ARVALID;
  wire [8:0]intf_net_axi_interconnect_0_M11_AXI_AWADDR;
  wire intf_net_axi_interconnect_0_M11_AXI_AWREADY;
  wire intf_net_axi_interconnect_0_M11_AXI_AWVALID;
  wire intf_net_axi_interconnect_0_M11_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_0_M11_AXI_BRESP;
  wire intf_net_axi_interconnect_0_M11_AXI_BVALID;
  wire [31:0]intf_net_axi_interconnect_0_M11_AXI_RDATA;
  wire intf_net_axi_interconnect_0_M11_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_0_M11_AXI_RRESP;
  wire intf_net_axi_interconnect_0_M11_AXI_RVALID;
  wire [31:0]intf_net_axi_interconnect_0_M11_AXI_WDATA;
  wire intf_net_axi_interconnect_0_M11_AXI_WREADY;
  wire [3:0]intf_net_axi_interconnect_0_M11_AXI_WSTRB;
  wire intf_net_axi_interconnect_0_M11_AXI_WVALID;
  wire [47:0]intf_net_axi_vdma_M_AXIS_MM2S_TDATA;
  wire [5:0]intf_net_axi_vdma_M_AXIS_MM2S_TKEEP;
  wire intf_net_axi_vdma_M_AXIS_MM2S_TLAST;
  wire intf_net_axi_vdma_M_AXIS_MM2S_TREADY;
  wire intf_net_axi_vdma_M_AXIS_MM2S_TUSER;
  wire intf_net_axi_vdma_M_AXIS_MM2S_TVALID;
  wire [31:0]intf_net_axi_vdma_M_AXI_MM2S_ARADDR;
  wire [1:0]intf_net_axi_vdma_M_AXI_MM2S_ARBURST;
  wire [3:0]intf_net_axi_vdma_M_AXI_MM2S_ARCACHE;
  wire [7:0]intf_net_axi_vdma_M_AXI_MM2S_ARLEN;
  wire [2:0]intf_net_axi_vdma_M_AXI_MM2S_ARPROT;
  wire intf_net_axi_vdma_M_AXI_MM2S_ARREADY;
  wire [2:0]intf_net_axi_vdma_M_AXI_MM2S_ARSIZE;
  wire intf_net_axi_vdma_M_AXI_MM2S_ARVALID;
  wire [127:0]intf_net_axi_vdma_M_AXI_MM2S_RDATA;
  wire intf_net_axi_vdma_M_AXI_MM2S_RLAST;
  wire intf_net_axi_vdma_M_AXI_MM2S_RREADY;
  wire [1:0]intf_net_axi_vdma_M_AXI_MM2S_RRESP;
  wire intf_net_axi_vdma_M_AXI_MM2S_RVALID;
  wire [31:0]intf_net_axi_vdma_M_AXI_S2MM_AWADDR;
  wire [1:0]intf_net_axi_vdma_M_AXI_S2MM_AWBURST;
  wire [3:0]intf_net_axi_vdma_M_AXI_S2MM_AWCACHE;
  wire [7:0]intf_net_axi_vdma_M_AXI_S2MM_AWLEN;
  wire [2:0]intf_net_axi_vdma_M_AXI_S2MM_AWPROT;
  wire intf_net_axi_vdma_M_AXI_S2MM_AWREADY;
  wire [2:0]intf_net_axi_vdma_M_AXI_S2MM_AWSIZE;
  wire intf_net_axi_vdma_M_AXI_S2MM_AWVALID;
  wire intf_net_axi_vdma_M_AXI_S2MM_BREADY;
  wire [1:0]intf_net_axi_vdma_M_AXI_S2MM_BRESP;
  wire intf_net_axi_vdma_M_AXI_S2MM_BVALID;
  wire [63:0]intf_net_axi_vdma_M_AXI_S2MM_WDATA;
  wire intf_net_axi_vdma_M_AXI_S2MM_WLAST;
  wire intf_net_axi_vdma_M_AXI_S2MM_WREADY;
  wire [7:0]intf_net_axi_vdma_M_AXI_S2MM_WSTRB;
  wire intf_net_axi_vdma_M_AXI_S2MM_WVALID;
  wire [23:0]intf_net_csc_m_axis_video_TDATA;
  wire intf_net_csc_m_axis_video_TDEST;
  wire intf_net_csc_m_axis_video_TID;
  wire [2:0]intf_net_csc_m_axis_video_TKEEP;
  wire intf_net_csc_m_axis_video_TLAST;
  wire intf_net_csc_m_axis_video_TREADY;
  wire [2:0]intf_net_csc_m_axis_video_TSTRB;
  wire intf_net_csc_m_axis_video_TUSER;
  wire intf_net_csc_m_axis_video_TVALID;
  wire [23:0]intf_net_deint_cc_M_AXIS_TDATA;
  wire intf_net_deint_cc_M_AXIS_TDEST;
  wire intf_net_deint_cc_M_AXIS_TID;
  wire [2:0]intf_net_deint_cc_M_AXIS_TKEEP;
  wire intf_net_deint_cc_M_AXIS_TLAST;
  wire intf_net_deint_cc_M_AXIS_TREADY;
  wire [2:0]intf_net_deint_cc_M_AXIS_TSTRB;
  wire intf_net_deint_cc_M_AXIS_TVALID;
  wire [23:0]intf_net_deint_ss_M_AXIS_TDATA;
  wire intf_net_deint_ss_M_AXIS_TDEST;
  wire intf_net_deint_ss_M_AXIS_TID;
  wire [2:0]intf_net_deint_ss_M_AXIS_TKEEP;
  wire intf_net_deint_ss_M_AXIS_TLAST;
  wire intf_net_deint_ss_M_AXIS_TREADY;
  wire [2:0]intf_net_deint_ss_M_AXIS_TSTRB;
  wire intf_net_deint_ss_M_AXIS_TVALID;
  wire [31:0]intf_net_dint_m_axi_gmem_ARADDR;
  wire [1:0]intf_net_dint_m_axi_gmem_ARBURST;
  wire [3:0]intf_net_dint_m_axi_gmem_ARCACHE;
  wire [7:0]intf_net_dint_m_axi_gmem_ARLEN;
  wire [1:0]intf_net_dint_m_axi_gmem_ARLOCK;
  wire [2:0]intf_net_dint_m_axi_gmem_ARPROT;
  wire [3:0]intf_net_dint_m_axi_gmem_ARQOS;
  wire intf_net_dint_m_axi_gmem_ARREADY;
  wire [3:0]intf_net_dint_m_axi_gmem_ARREGION;
  wire [2:0]intf_net_dint_m_axi_gmem_ARSIZE;
  wire intf_net_dint_m_axi_gmem_ARVALID;
  wire [31:0]intf_net_dint_m_axi_gmem_AWADDR;
  wire [1:0]intf_net_dint_m_axi_gmem_AWBURST;
  wire [3:0]intf_net_dint_m_axi_gmem_AWCACHE;
  wire [7:0]intf_net_dint_m_axi_gmem_AWLEN;
  wire [1:0]intf_net_dint_m_axi_gmem_AWLOCK;
  wire [2:0]intf_net_dint_m_axi_gmem_AWPROT;
  wire [3:0]intf_net_dint_m_axi_gmem_AWQOS;
  wire intf_net_dint_m_axi_gmem_AWREADY;
  wire [3:0]intf_net_dint_m_axi_gmem_AWREGION;
  wire [2:0]intf_net_dint_m_axi_gmem_AWSIZE;
  wire intf_net_dint_m_axi_gmem_AWVALID;
  wire intf_net_dint_m_axi_gmem_BREADY;
  wire [1:0]intf_net_dint_m_axi_gmem_BRESP;
  wire intf_net_dint_m_axi_gmem_BVALID;
  wire [31:0]intf_net_dint_m_axi_gmem_RDATA;
  wire intf_net_dint_m_axi_gmem_RLAST;
  wire intf_net_dint_m_axi_gmem_RREADY;
  wire [1:0]intf_net_dint_m_axi_gmem_RRESP;
  wire intf_net_dint_m_axi_gmem_RVALID;
  wire [31:0]intf_net_dint_m_axi_gmem_WDATA;
  wire intf_net_dint_m_axi_gmem_WLAST;
  wire intf_net_dint_m_axi_gmem_WREADY;
  wire [3:0]intf_net_dint_m_axi_gmem_WSTRB;
  wire intf_net_dint_m_axi_gmem_WVALID;
  wire [23:0]intf_net_dint_m_axis_video_TDATA;
  wire intf_net_dint_m_axis_video_TDEST;
  wire intf_net_dint_m_axis_video_TID;
  wire [2:0]intf_net_dint_m_axis_video_TKEEP;
  wire intf_net_dint_m_axis_video_TLAST;
  wire intf_net_dint_m_axis_video_TREADY;
  wire [2:0]intf_net_dint_m_axis_video_TSTRB;
  wire intf_net_dint_m_axis_video_TUSER;
  wire intf_net_dint_m_axis_video_TVALID;
  wire [23:0]intf_net_hcr_m_axis_video_TDATA;
  wire intf_net_hcr_m_axis_video_TDEST;
  wire intf_net_hcr_m_axis_video_TID;
  wire [2:0]intf_net_hcr_m_axis_video_TKEEP;
  wire intf_net_hcr_m_axis_video_TLAST;
  wire intf_net_hcr_m_axis_video_TREADY;
  wire [2:0]intf_net_hcr_m_axis_video_TSTRB;
  wire intf_net_hcr_m_axis_video_TUSER;
  wire intf_net_hcr_m_axis_video_TVALID;
  wire [23:0]intf_net_hsc_m_axis_video_TDATA;
  wire intf_net_hsc_m_axis_video_TDEST;
  wire intf_net_hsc_m_axis_video_TID;
  wire [2:0]intf_net_hsc_m_axis_video_TKEEP;
  wire intf_net_hsc_m_axis_video_TLAST;
  wire intf_net_hsc_m_axis_video_TREADY;
  wire [2:0]intf_net_hsc_m_axis_video_TSTRB;
  wire intf_net_hsc_m_axis_video_TUSER;
  wire intf_net_hsc_m_axis_video_TVALID;
  wire [23:0]intf_net_input_size_set_M_AXIS_TDATA;
  wire intf_net_input_size_set_M_AXIS_TDEST;
  wire intf_net_input_size_set_M_AXIS_TID;
  wire [2:0]intf_net_input_size_set_M_AXIS_TKEEP;
  wire intf_net_input_size_set_M_AXIS_TLAST;
  wire intf_net_input_size_set_M_AXIS_TREADY;
  wire [2:0]intf_net_input_size_set_M_AXIS_TSTRB;
  wire intf_net_input_size_set_M_AXIS_TUSER;
  wire intf_net_input_size_set_M_AXIS_TVALID;
  wire [23:0]intf_net_ltr_m_axis_video_TDATA;
  wire intf_net_ltr_m_axis_video_TDEST;
  wire intf_net_ltr_m_axis_video_TID;
  wire [2:0]intf_net_ltr_m_axis_video_TKEEP;
  wire intf_net_ltr_m_axis_video_TLAST;
  wire intf_net_ltr_m_axis_video_TREADY;
  wire [2:0]intf_net_ltr_m_axis_video_TSTRB;
  wire intf_net_ltr_m_axis_video_TUSER;
  wire intf_net_ltr_m_axis_video_TVALID;
  wire [23:0]intf_net_vcr_i_m_axis_video_TDATA;
  wire intf_net_vcr_i_m_axis_video_TDEST;
  wire intf_net_vcr_i_m_axis_video_TID;
  wire [2:0]intf_net_vcr_i_m_axis_video_TKEEP;
  wire intf_net_vcr_i_m_axis_video_TLAST;
  wire intf_net_vcr_i_m_axis_video_TREADY;
  wire [2:0]intf_net_vcr_i_m_axis_video_TSTRB;
  wire intf_net_vcr_i_m_axis_video_TUSER;
  wire intf_net_vcr_i_m_axis_video_TVALID;
  wire [23:0]intf_net_vcr_o_m_axis_video_TDATA;
  wire intf_net_vcr_o_m_axis_video_TDEST;
  wire intf_net_vcr_o_m_axis_video_TID;
  wire [2:0]intf_net_vcr_o_m_axis_video_TKEEP;
  wire intf_net_vcr_o_m_axis_video_TLAST;
  wire intf_net_vcr_o_m_axis_video_TREADY;
  wire [2:0]intf_net_vcr_o_m_axis_video_TSTRB;
  wire intf_net_vcr_o_m_axis_video_TUSER;
  wire intf_net_vcr_o_m_axis_video_TVALID;
  wire [47:0]intf_net_vdma_pad_M_AXIS_TDATA;
  wire [5:0]intf_net_vdma_pad_M_AXIS_TKEEP;
  wire intf_net_vdma_pad_M_AXIS_TLAST;
  wire intf_net_vdma_pad_M_AXIS_TREADY;
  wire [5:0]intf_net_vdma_pad_M_AXIS_TUSER;
  wire intf_net_vdma_pad_M_AXIS_TVALID;
  wire [47:0]intf_net_vdma_trunc_M_AXIS_TDATA;
  wire [5:0]intf_net_vdma_trunc_M_AXIS_TKEEP;
  wire intf_net_vdma_trunc_M_AXIS_TLAST;
  wire intf_net_vdma_trunc_M_AXIS_TREADY;
  wire [0:0]intf_net_vdma_trunc_M_AXIS_TUSER;
  wire intf_net_vdma_trunc_M_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M01_AXIS_TDATA;
  wire intf_net_video_router_M01_AXIS_TDEST;
  wire intf_net_video_router_M01_AXIS_TID;
  wire [2:0]intf_net_video_router_M01_AXIS_TKEEP;
  wire intf_net_video_router_M01_AXIS_TLAST;
  wire intf_net_video_router_M01_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M01_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M01_AXIS_TUSER;
  wire intf_net_video_router_M01_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M02_AXIS_TDATA;
  wire intf_net_video_router_M02_AXIS_TDEST;
  wire intf_net_video_router_M02_AXIS_TID;
  wire [2:0]intf_net_video_router_M02_AXIS_TKEEP;
  wire intf_net_video_router_M02_AXIS_TLAST;
  wire intf_net_video_router_M02_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M02_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M02_AXIS_TUSER;
  wire intf_net_video_router_M02_AXIS_TVALID;
  wire [47:0]intf_net_video_router_M03_AXIS_TDATA;
  wire [5:0]intf_net_video_router_M03_AXIS_TKEEP;
  wire intf_net_video_router_M03_AXIS_TLAST;
  wire intf_net_video_router_M03_AXIS_TREADY;
  wire [5:0]intf_net_video_router_M03_AXIS_TUSER;
  wire intf_net_video_router_M03_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M04_AXIS_TDATA;
  wire intf_net_video_router_M04_AXIS_TDEST;
  wire intf_net_video_router_M04_AXIS_TID;
  wire [2:0]intf_net_video_router_M04_AXIS_TKEEP;
  wire intf_net_video_router_M04_AXIS_TLAST;
  wire intf_net_video_router_M04_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M04_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M04_AXIS_TUSER;
  wire intf_net_video_router_M04_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M05_AXIS_TDATA;
  wire intf_net_video_router_M05_AXIS_TDEST;
  wire intf_net_video_router_M05_AXIS_TID;
  wire [2:0]intf_net_video_router_M05_AXIS_TKEEP;
  wire intf_net_video_router_M05_AXIS_TLAST;
  wire intf_net_video_router_M05_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M05_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M05_AXIS_TUSER;
  wire intf_net_video_router_M05_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M06_AXIS_TDATA;
  wire intf_net_video_router_M06_AXIS_TDEST;
  wire intf_net_video_router_M06_AXIS_TID;
  wire [2:0]intf_net_video_router_M06_AXIS_TKEEP;
  wire intf_net_video_router_M06_AXIS_TLAST;
  wire intf_net_video_router_M06_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M06_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M06_AXIS_TUSER;
  wire intf_net_video_router_M06_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M07_AXIS_TDATA;
  wire intf_net_video_router_M07_AXIS_TDEST;
  wire intf_net_video_router_M07_AXIS_TID;
  wire [2:0]intf_net_video_router_M07_AXIS_TKEEP;
  wire intf_net_video_router_M07_AXIS_TLAST;
  wire intf_net_video_router_M07_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M07_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M07_AXIS_TUSER;
  wire intf_net_video_router_M07_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M08_AXIS_TDATA;
  wire intf_net_video_router_M08_AXIS_TDEST;
  wire intf_net_video_router_M08_AXIS_TID;
  wire [2:0]intf_net_video_router_M08_AXIS_TKEEP;
  wire intf_net_video_router_M08_AXIS_TLAST;
  wire intf_net_video_router_M08_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M08_AXIS_TSTRB;
  wire [0:0]intf_net_video_router_M08_AXIS_TUSER;
  wire intf_net_video_router_M08_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M09_AXIS_TDATA;
  wire intf_net_video_router_M09_AXIS_TDEST;
  wire intf_net_video_router_M09_AXIS_TID;
  wire [2:0]intf_net_video_router_M09_AXIS_TKEEP;
  wire intf_net_video_router_M09_AXIS_TLAST;
  wire intf_net_video_router_M09_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M09_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M09_AXIS_TUSER;
  wire intf_net_video_router_M09_AXIS_TVALID;
  wire [23:0]intf_net_vsc_m_axis_video_TDATA;
  wire intf_net_vsc_m_axis_video_TDEST;
  wire intf_net_vsc_m_axis_video_TID;
  wire [2:0]intf_net_vsc_m_axis_video_TKEEP;
  wire intf_net_vsc_m_axis_video_TLAST;
  wire intf_net_vsc_m_axis_video_TREADY;
  wire [2:0]intf_net_vsc_m_axis_video_TSTRB;
  wire intf_net_vsc_m_axis_video_TUSER;
  wire intf_net_vsc_m_axis_video_TVALID;
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
  wire [1:0]net_deint_cc_m_axis_tuser;
  wire [1:0]net_deint_concat_dout;
  wire net_deint_fid_tap_Dout;
  wire net_deint_ss_m_axis_tuser;
  wire net_deint_tuser_tap_Dout;
  wire net_proc_ss_ip_aresetn_Dout;
  wire net_reset_sel_axi_mm_gpio_io_o;
  wire [1:0]net_reset_sel_axis_gpio_io_o;
  wire net_rst_axi_mm_peripheral_aresetn;
  wire net_rst_axis_peripheral_aresetn;
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
  wire NLW_axi_vdma_mm2s_introut_UNCONNECTED;
  wire NLW_axi_vdma_s2mm_introut_UNCONNECTED;
  wire [5:0]NLW_axi_vdma_mm2s_frame_ptr_out_UNCONNECTED;
  wire [5:0]NLW_axi_vdma_s2mm_frame_ptr_out_UNCONNECTED;
  wire NLW_csc_interrupt_UNCONNECTED;
  wire NLW_dint_interrupt_UNCONNECTED;
  wire NLW_hcr_interrupt_UNCONNECTED;
  wire NLW_hsc_interrupt_UNCONNECTED;
  wire NLW_ltr_interrupt_UNCONNECTED;
  wire [0:0]NLW_reset_sel_axi_mm_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_reset_sel_axis_gpio_io_t_UNCONNECTED;
  wire NLW_rst_axi_mm_mb_reset_UNCONNECTED;
  wire [0:0]NLW_rst_axi_mm_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_rst_axi_mm_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_axi_mm_peripheral_reset_UNCONNECTED;
  wire NLW_rst_axis_mb_reset_UNCONNECTED;
  wire [0:0]NLW_rst_axis_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_rst_axis_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_axis_peripheral_reset_UNCONNECTED;
  wire NLW_vcr_i_interrupt_UNCONNECTED;
  wire NLW_vcr_o_interrupt_UNCONNECTED;
  wire [5:1]NLW_vdma_trunc_m_axis_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M01_AXIS_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M02_AXIS_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M04_AXIS_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M05_AXIS_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M06_AXIS_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M07_AXIS_tuser_UNCONNECTED;
  wire [2:1]NLW_video_router_M08_AXIS_tuser_UNCONNECTED;
  wire NLW_vsc_interrupt_UNCONNECTED;

  system_v_proc_ss_0_0_bd_2d50_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(aclk_ctrl),
        .ARESETN(aresetn_ctrl),
        .M00_ACLK(aclk_ctrl),
        .M00_ARESETN(aresetn_ctrl),
        .M00_AXI_araddr(intf_net_axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(intf_net_axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(intf_net_axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(intf_net_axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(intf_net_axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(intf_net_axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(intf_net_axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(intf_net_axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(intf_net_axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(intf_net_axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(intf_net_axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(intf_net_axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(intf_net_axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(intf_net_axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(intf_net_axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(intf_net_axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(aclk_axis),
        .M01_ARESETN(net_rst_axis_peripheral_aresetn),
        .M01_AXI_araddr(intf_net_axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(intf_net_axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(intf_net_axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(intf_net_axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(intf_net_axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(intf_net_axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(intf_net_axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(intf_net_axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(intf_net_axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(intf_net_axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(intf_net_axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(intf_net_axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(intf_net_axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(intf_net_axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(intf_net_axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(intf_net_axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(intf_net_axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(aclk_axis),
        .M02_ARESETN(net_rst_axis_peripheral_aresetn),
        .M02_AXI_araddr(intf_net_axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(intf_net_axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(intf_net_axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(intf_net_axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(intf_net_axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(intf_net_axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(intf_net_axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(intf_net_axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(intf_net_axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(intf_net_axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(intf_net_axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(intf_net_axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(intf_net_axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(intf_net_axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(intf_net_axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(intf_net_axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(intf_net_axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(aclk_axis),
        .M03_ARESETN(net_rst_axis_peripheral_aresetn),
        .M03_AXI_araddr(intf_net_axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(intf_net_axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(intf_net_axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(intf_net_axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(intf_net_axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(intf_net_axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(intf_net_axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(intf_net_axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(intf_net_axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(intf_net_axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(intf_net_axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(intf_net_axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(intf_net_axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(intf_net_axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(intf_net_axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(intf_net_axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(intf_net_axi_interconnect_0_M03_AXI_WVALID),
        .M04_ACLK(aclk_axis),
        .M04_ARESETN(net_rst_axis_peripheral_aresetn),
        .M04_AXI_araddr(intf_net_axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(intf_net_axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(intf_net_axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(intf_net_axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(intf_net_axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(intf_net_axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(intf_net_axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(intf_net_axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(intf_net_axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(intf_net_axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(intf_net_axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(intf_net_axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(intf_net_axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(intf_net_axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(intf_net_axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(intf_net_axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(intf_net_axi_interconnect_0_M04_AXI_WVALID),
        .M05_ACLK(aclk_axis),
        .M05_ARESETN(net_rst_axis_peripheral_aresetn),
        .M05_AXI_araddr(intf_net_axi_interconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(intf_net_axi_interconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(intf_net_axi_interconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(intf_net_axi_interconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(intf_net_axi_interconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(intf_net_axi_interconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(intf_net_axi_interconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(intf_net_axi_interconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(intf_net_axi_interconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(intf_net_axi_interconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(intf_net_axi_interconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(intf_net_axi_interconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(intf_net_axi_interconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(intf_net_axi_interconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(intf_net_axi_interconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(intf_net_axi_interconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(intf_net_axi_interconnect_0_M05_AXI_WVALID),
        .M06_ACLK(aclk_axis),
        .M06_ARESETN(net_rst_axis_peripheral_aresetn),
        .M06_AXI_araddr(intf_net_axi_interconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(intf_net_axi_interconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(intf_net_axi_interconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(intf_net_axi_interconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(intf_net_axi_interconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(intf_net_axi_interconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(intf_net_axi_interconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(intf_net_axi_interconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(intf_net_axi_interconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(intf_net_axi_interconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(intf_net_axi_interconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(intf_net_axi_interconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(intf_net_axi_interconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(intf_net_axi_interconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(intf_net_axi_interconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(intf_net_axi_interconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(intf_net_axi_interconnect_0_M06_AXI_WVALID),
        .M07_ACLK(aclk_axis),
        .M07_ARESETN(net_rst_axis_peripheral_aresetn),
        .M07_AXI_araddr(intf_net_axi_interconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arready(intf_net_axi_interconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arvalid(intf_net_axi_interconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(intf_net_axi_interconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awready(intf_net_axi_interconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awvalid(intf_net_axi_interconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(intf_net_axi_interconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(intf_net_axi_interconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(intf_net_axi_interconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(intf_net_axi_interconnect_0_M07_AXI_RDATA),
        .M07_AXI_rready(intf_net_axi_interconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(intf_net_axi_interconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(intf_net_axi_interconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(intf_net_axi_interconnect_0_M07_AXI_WDATA),
        .M07_AXI_wready(intf_net_axi_interconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(intf_net_axi_interconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(intf_net_axi_interconnect_0_M07_AXI_WVALID),
        .M08_ACLK(aclk_axis),
        .M08_ARESETN(net_rst_axis_peripheral_aresetn),
        .M08_AXI_araddr(intf_net_axi_interconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arready(intf_net_axi_interconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arvalid(intf_net_axi_interconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(intf_net_axi_interconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awready(intf_net_axi_interconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awvalid(intf_net_axi_interconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(intf_net_axi_interconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(intf_net_axi_interconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(intf_net_axi_interconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(intf_net_axi_interconnect_0_M08_AXI_RDATA),
        .M08_AXI_rready(intf_net_axi_interconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(intf_net_axi_interconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(intf_net_axi_interconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(intf_net_axi_interconnect_0_M08_AXI_WDATA),
        .M08_AXI_wready(intf_net_axi_interconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(intf_net_axi_interconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(intf_net_axi_interconnect_0_M08_AXI_WVALID),
        .M09_ACLK(aclk_axi_mm),
        .M09_ARESETN(net_rst_axi_mm_peripheral_aresetn),
        .M09_AXI_araddr(intf_net_axi_interconnect_0_M09_AXI_ARADDR),
        .M09_AXI_arready(intf_net_axi_interconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arvalid(intf_net_axi_interconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(intf_net_axi_interconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awready(intf_net_axi_interconnect_0_M09_AXI_AWREADY),
        .M09_AXI_awvalid(intf_net_axi_interconnect_0_M09_AXI_AWVALID),
        .M09_AXI_bready(intf_net_axi_interconnect_0_M09_AXI_BREADY),
        .M09_AXI_bresp(intf_net_axi_interconnect_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(intf_net_axi_interconnect_0_M09_AXI_BVALID),
        .M09_AXI_rdata(intf_net_axi_interconnect_0_M09_AXI_RDATA),
        .M09_AXI_rready(intf_net_axi_interconnect_0_M09_AXI_RREADY),
        .M09_AXI_rresp(intf_net_axi_interconnect_0_M09_AXI_RRESP),
        .M09_AXI_rvalid(intf_net_axi_interconnect_0_M09_AXI_RVALID),
        .M09_AXI_wdata(intf_net_axi_interconnect_0_M09_AXI_WDATA),
        .M09_AXI_wready(intf_net_axi_interconnect_0_M09_AXI_WREADY),
        .M09_AXI_wvalid(intf_net_axi_interconnect_0_M09_AXI_WVALID),
        .M10_ACLK(aclk_axi_mm),
        .M10_ARESETN(net_rst_axi_mm_peripheral_aresetn),
        .M10_AXI_araddr(intf_net_axi_interconnect_0_M10_AXI_ARADDR),
        .M10_AXI_arready(intf_net_axi_interconnect_0_M10_AXI_ARREADY),
        .M10_AXI_arvalid(intf_net_axi_interconnect_0_M10_AXI_ARVALID),
        .M10_AXI_awaddr(intf_net_axi_interconnect_0_M10_AXI_AWADDR),
        .M10_AXI_awready(intf_net_axi_interconnect_0_M10_AXI_AWREADY),
        .M10_AXI_awvalid(intf_net_axi_interconnect_0_M10_AXI_AWVALID),
        .M10_AXI_bready(intf_net_axi_interconnect_0_M10_AXI_BREADY),
        .M10_AXI_bresp(intf_net_axi_interconnect_0_M10_AXI_BRESP),
        .M10_AXI_bvalid(intf_net_axi_interconnect_0_M10_AXI_BVALID),
        .M10_AXI_rdata(intf_net_axi_interconnect_0_M10_AXI_RDATA),
        .M10_AXI_rready(intf_net_axi_interconnect_0_M10_AXI_RREADY),
        .M10_AXI_rresp(intf_net_axi_interconnect_0_M10_AXI_RRESP),
        .M10_AXI_rvalid(intf_net_axi_interconnect_0_M10_AXI_RVALID),
        .M10_AXI_wdata(intf_net_axi_interconnect_0_M10_AXI_WDATA),
        .M10_AXI_wready(intf_net_axi_interconnect_0_M10_AXI_WREADY),
        .M10_AXI_wstrb(intf_net_axi_interconnect_0_M10_AXI_WSTRB),
        .M10_AXI_wvalid(intf_net_axi_interconnect_0_M10_AXI_WVALID),
        .M11_ACLK(aclk_axi_mm),
        .M11_ARESETN(net_rst_axi_mm_peripheral_aresetn),
        .M11_AXI_araddr(intf_net_axi_interconnect_0_M11_AXI_ARADDR),
        .M11_AXI_arready(intf_net_axi_interconnect_0_M11_AXI_ARREADY),
        .M11_AXI_arvalid(intf_net_axi_interconnect_0_M11_AXI_ARVALID),
        .M11_AXI_awaddr(intf_net_axi_interconnect_0_M11_AXI_AWADDR),
        .M11_AXI_awready(intf_net_axi_interconnect_0_M11_AXI_AWREADY),
        .M11_AXI_awvalid(intf_net_axi_interconnect_0_M11_AXI_AWVALID),
        .M11_AXI_bready(intf_net_axi_interconnect_0_M11_AXI_BREADY),
        .M11_AXI_bresp(intf_net_axi_interconnect_0_M11_AXI_BRESP),
        .M11_AXI_bvalid(intf_net_axi_interconnect_0_M11_AXI_BVALID),
        .M11_AXI_rdata(intf_net_axi_interconnect_0_M11_AXI_RDATA),
        .M11_AXI_rready(intf_net_axi_interconnect_0_M11_AXI_RREADY),
        .M11_AXI_rresp(intf_net_axi_interconnect_0_M11_AXI_RRESP),
        .M11_AXI_rvalid(intf_net_axi_interconnect_0_M11_AXI_RVALID),
        .M11_AXI_wdata(intf_net_axi_interconnect_0_M11_AXI_WDATA),
        .M11_AXI_wready(intf_net_axi_interconnect_0_M11_AXI_WREADY),
        .M11_AXI_wstrb(intf_net_axi_interconnect_0_M11_AXI_WSTRB),
        .M11_AXI_wvalid(intf_net_axi_interconnect_0_M11_AXI_WVALID),
        .S00_ACLK(aclk_ctrl),
        .S00_ARESETN(aresetn_ctrl),
        .S00_AXI_araddr(s_axi_ctrl_araddr),
        .S00_AXI_arprot(s_axi_ctrl_arprot),
        .S00_AXI_arready(s_axi_ctrl_arready),
        .S00_AXI_arvalid(s_axi_ctrl_arvalid),
        .S00_AXI_awaddr(s_axi_ctrl_awaddr),
        .S00_AXI_awprot(s_axi_ctrl_awprot),
        .S00_AXI_awready(s_axi_ctrl_awready),
        .S00_AXI_awvalid(s_axi_ctrl_awvalid),
        .S00_AXI_bready(s_axi_ctrl_bready),
        .S00_AXI_bresp(s_axi_ctrl_bresp),
        .S00_AXI_bvalid(s_axi_ctrl_bvalid),
        .S00_AXI_rdata(s_axi_ctrl_rdata),
        .S00_AXI_rready(s_axi_ctrl_rready),
        .S00_AXI_rresp(s_axi_ctrl_rresp),
        .S00_AXI_rvalid(s_axi_ctrl_rvalid),
        .S00_AXI_wdata(s_axi_ctrl_wdata),
        .S00_AXI_wready(s_axi_ctrl_wready),
        .S00_AXI_wstrb(s_axi_ctrl_wstrb),
        .S00_AXI_wvalid(s_axi_ctrl_wvalid));
  system_v_proc_ss_0_0_bd_2d50_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(aclk_axi_mm),
        .ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .M00_ACLK(aclk_axi_mm),
        .M00_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .M00_AXI_araddr(m_axi_mm_araddr),
        .M00_AXI_arburst(m_axi_mm_arburst),
        .M00_AXI_arcache(m_axi_mm_arcache),
        .M00_AXI_arid(m_axi_mm_arid),
        .M00_AXI_arlen(m_axi_mm_arlen),
        .M00_AXI_arlock(m_axi_mm_arlock),
        .M00_AXI_arprot(m_axi_mm_arprot),
        .M00_AXI_arqos(m_axi_mm_arqos),
        .M00_AXI_arready(m_axi_mm_arready),
        .M00_AXI_arregion(m_axi_mm_arregion),
        .M00_AXI_arsize(m_axi_mm_arsize),
        .M00_AXI_arvalid(m_axi_mm_arvalid),
        .M00_AXI_awaddr(m_axi_mm_awaddr),
        .M00_AXI_awburst(m_axi_mm_awburst),
        .M00_AXI_awcache(m_axi_mm_awcache),
        .M00_AXI_awid(m_axi_mm_awid),
        .M00_AXI_awlen(m_axi_mm_awlen),
        .M00_AXI_awlock(m_axi_mm_awlock),
        .M00_AXI_awprot(m_axi_mm_awprot),
        .M00_AXI_awqos(m_axi_mm_awqos),
        .M00_AXI_awready(m_axi_mm_awready),
        .M00_AXI_awregion(m_axi_mm_awregion),
        .M00_AXI_awsize(m_axi_mm_awsize),
        .M00_AXI_awvalid(m_axi_mm_awvalid),
        .M00_AXI_bid(m_axi_mm_bid),
        .M00_AXI_bready(m_axi_mm_bready),
        .M00_AXI_bresp(m_axi_mm_bresp),
        .M00_AXI_bvalid(m_axi_mm_bvalid),
        .M00_AXI_rdata(m_axi_mm_rdata),
        .M00_AXI_rid(m_axi_mm_rid),
        .M00_AXI_rlast(m_axi_mm_rlast),
        .M00_AXI_rready(m_axi_mm_rready),
        .M00_AXI_rresp(m_axi_mm_rresp),
        .M00_AXI_rvalid(m_axi_mm_rvalid),
        .M00_AXI_wdata(m_axi_mm_wdata),
        .M00_AXI_wlast(m_axi_mm_wlast),
        .M00_AXI_wready(m_axi_mm_wready),
        .M00_AXI_wstrb(m_axi_mm_wstrb),
        .M00_AXI_wvalid(m_axi_mm_wvalid),
        .S00_ACLK(aclk_axi_mm),
        .S00_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .S00_AXI_araddr(intf_net_axi_vdma_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(intf_net_axi_vdma_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(intf_net_axi_vdma_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(intf_net_axi_vdma_M_AXI_MM2S_ARLEN),
        .S00_AXI_arprot(intf_net_axi_vdma_M_AXI_MM2S_ARPROT),
        .S00_AXI_arready(intf_net_axi_vdma_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(intf_net_axi_vdma_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(intf_net_axi_vdma_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(intf_net_axi_vdma_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(intf_net_axi_vdma_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(intf_net_axi_vdma_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(intf_net_axi_vdma_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(intf_net_axi_vdma_M_AXI_MM2S_RVALID),
        .S01_ACLK(aclk_axi_mm),
        .S01_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .S01_AXI_awaddr(intf_net_axi_vdma_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(intf_net_axi_vdma_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(intf_net_axi_vdma_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(intf_net_axi_vdma_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(intf_net_axi_vdma_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(intf_net_axi_vdma_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(intf_net_axi_vdma_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(intf_net_axi_vdma_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(intf_net_axi_vdma_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(intf_net_axi_vdma_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(intf_net_axi_vdma_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(intf_net_axi_vdma_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(intf_net_axi_vdma_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(intf_net_axi_vdma_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(intf_net_axi_vdma_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(intf_net_axi_vdma_M_AXI_S2MM_WVALID),
        .S02_ACLK(aclk_axi_mm),
        .S02_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .S02_AXI_araddr(intf_net_dint_m_axi_gmem_ARADDR),
        .S02_AXI_arburst(intf_net_dint_m_axi_gmem_ARBURST),
        .S02_AXI_arcache(intf_net_dint_m_axi_gmem_ARCACHE),
        .S02_AXI_arlen(intf_net_dint_m_axi_gmem_ARLEN),
        .S02_AXI_arlock(intf_net_dint_m_axi_gmem_ARLOCK),
        .S02_AXI_arprot(intf_net_dint_m_axi_gmem_ARPROT),
        .S02_AXI_arqos(intf_net_dint_m_axi_gmem_ARQOS),
        .S02_AXI_arready(intf_net_dint_m_axi_gmem_ARREADY),
        .S02_AXI_arregion(intf_net_dint_m_axi_gmem_ARREGION),
        .S02_AXI_arsize(intf_net_dint_m_axi_gmem_ARSIZE),
        .S02_AXI_arvalid(intf_net_dint_m_axi_gmem_ARVALID),
        .S02_AXI_awaddr(intf_net_dint_m_axi_gmem_AWADDR),
        .S02_AXI_awburst(intf_net_dint_m_axi_gmem_AWBURST),
        .S02_AXI_awcache(intf_net_dint_m_axi_gmem_AWCACHE),
        .S02_AXI_awlen(intf_net_dint_m_axi_gmem_AWLEN),
        .S02_AXI_awlock(intf_net_dint_m_axi_gmem_AWLOCK),
        .S02_AXI_awprot(intf_net_dint_m_axi_gmem_AWPROT),
        .S02_AXI_awqos(intf_net_dint_m_axi_gmem_AWQOS),
        .S02_AXI_awready(intf_net_dint_m_axi_gmem_AWREADY),
        .S02_AXI_awregion(intf_net_dint_m_axi_gmem_AWREGION),
        .S02_AXI_awsize(intf_net_dint_m_axi_gmem_AWSIZE),
        .S02_AXI_awvalid(intf_net_dint_m_axi_gmem_AWVALID),
        .S02_AXI_bready(intf_net_dint_m_axi_gmem_BREADY),
        .S02_AXI_bresp(intf_net_dint_m_axi_gmem_BRESP),
        .S02_AXI_bvalid(intf_net_dint_m_axi_gmem_BVALID),
        .S02_AXI_rdata(intf_net_dint_m_axi_gmem_RDATA),
        .S02_AXI_rlast(intf_net_dint_m_axi_gmem_RLAST),
        .S02_AXI_rready(intf_net_dint_m_axi_gmem_RREADY),
        .S02_AXI_rresp(intf_net_dint_m_axi_gmem_RRESP),
        .S02_AXI_rvalid(intf_net_dint_m_axi_gmem_RVALID),
        .S02_AXI_wdata(intf_net_dint_m_axi_gmem_WDATA),
        .S02_AXI_wlast(intf_net_dint_m_axi_gmem_WLAST),
        .S02_AXI_wready(intf_net_dint_m_axi_gmem_WREADY),
        .S02_AXI_wstrb(intf_net_dint_m_axi_gmem_WSTRB),
        .S02_AXI_wvalid(intf_net_dint_m_axi_gmem_WVALID));
  (* X_CORE_INFO = "axi_vdma,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_axi_vdma_0 axi_vdma
       (.axi_resetn(net_rst_axi_mm_peripheral_aresetn),
        .m_axi_mm2s_aclk(aclk_axi_mm),
        .m_axi_mm2s_araddr(intf_net_axi_vdma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(intf_net_axi_vdma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(intf_net_axi_vdma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(intf_net_axi_vdma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(intf_net_axi_vdma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(intf_net_axi_vdma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(intf_net_axi_vdma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(intf_net_axi_vdma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(intf_net_axi_vdma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(intf_net_axi_vdma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(intf_net_axi_vdma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(intf_net_axi_vdma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(intf_net_axi_vdma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(aclk_axi_mm),
        .m_axi_s2mm_awaddr(intf_net_axi_vdma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(intf_net_axi_vdma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(intf_net_axi_vdma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(intf_net_axi_vdma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(intf_net_axi_vdma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(intf_net_axi_vdma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(intf_net_axi_vdma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(intf_net_axi_vdma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(intf_net_axi_vdma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(intf_net_axi_vdma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(intf_net_axi_vdma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(intf_net_axi_vdma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(intf_net_axi_vdma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(intf_net_axi_vdma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(intf_net_axi_vdma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(intf_net_axi_vdma_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_aclk(aclk_axi_mm),
        .m_axis_mm2s_tdata(intf_net_axi_vdma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(intf_net_axi_vdma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(intf_net_axi_vdma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(intf_net_axi_vdma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(intf_net_axi_vdma_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(intf_net_axi_vdma_M_AXIS_MM2S_TVALID),
        .mm2s_frame_ptr_out(NLW_axi_vdma_mm2s_frame_ptr_out_UNCONNECTED[5:0]),
        .mm2s_introut(NLW_axi_vdma_mm2s_introut_UNCONNECTED),
        .s2mm_frame_ptr_out(NLW_axi_vdma_s2mm_frame_ptr_out_UNCONNECTED[5:0]),
        .s2mm_introut(NLW_axi_vdma_s2mm_introut_UNCONNECTED),
        .s_axi_lite_aclk(aclk_axi_mm),
        .s_axi_lite_araddr(intf_net_axi_interconnect_0_M09_AXI_ARADDR),
        .s_axi_lite_arready(intf_net_axi_interconnect_0_M09_AXI_ARREADY),
        .s_axi_lite_arvalid(intf_net_axi_interconnect_0_M09_AXI_ARVALID),
        .s_axi_lite_awaddr(intf_net_axi_interconnect_0_M09_AXI_AWADDR),
        .s_axi_lite_awready(intf_net_axi_interconnect_0_M09_AXI_AWREADY),
        .s_axi_lite_awvalid(intf_net_axi_interconnect_0_M09_AXI_AWVALID),
        .s_axi_lite_bready(intf_net_axi_interconnect_0_M09_AXI_BREADY),
        .s_axi_lite_bresp(intf_net_axi_interconnect_0_M09_AXI_BRESP),
        .s_axi_lite_bvalid(intf_net_axi_interconnect_0_M09_AXI_BVALID),
        .s_axi_lite_rdata(intf_net_axi_interconnect_0_M09_AXI_RDATA),
        .s_axi_lite_rready(intf_net_axi_interconnect_0_M09_AXI_RREADY),
        .s_axi_lite_rresp(intf_net_axi_interconnect_0_M09_AXI_RRESP),
        .s_axi_lite_rvalid(intf_net_axi_interconnect_0_M09_AXI_RVALID),
        .s_axi_lite_wdata(intf_net_axi_interconnect_0_M09_AXI_WDATA),
        .s_axi_lite_wready(intf_net_axi_interconnect_0_M09_AXI_WREADY),
        .s_axi_lite_wvalid(intf_net_axi_interconnect_0_M09_AXI_WVALID),
        .s_axis_s2mm_aclk(aclk_axi_mm),
        .s_axis_s2mm_tdata(intf_net_vdma_trunc_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(intf_net_vdma_trunc_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(intf_net_vdma_trunc_M_AXIS_TLAST),
        .s_axis_s2mm_tready(intf_net_vdma_trunc_M_AXIS_TREADY),
        .s_axis_s2mm_tuser(intf_net_vdma_trunc_M_AXIS_TUSER),
        .s_axis_s2mm_tvalid(intf_net_vdma_trunc_M_AXIS_TVALID));
  (* X_CORE_INFO = "bd_2d50_csc_0_v_csc,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_csc_0 csc
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_csc_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_csc_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_csc_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_csc_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_csc_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_csc_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_csc_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_csc_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_csc_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_csc_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M08_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M08_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M08_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M08_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M08_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M08_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M08_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M08_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M08_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M08_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M08_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M08_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M08_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M08_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M08_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M08_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M08_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M08_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M08_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M08_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M08_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M08_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M08_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M08_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M08_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M08_AXIS_TVALID));
  (* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_deint_cc_0 deint_cc
       (.m_axis_aclk(aclk_axi_mm),
        .m_axis_aresetn(net_reset_sel_axi_mm_gpio_io_o),
        .m_axis_tdata(intf_net_deint_cc_M_AXIS_TDATA),
        .m_axis_tdest(intf_net_deint_cc_M_AXIS_TDEST),
        .m_axis_tid(intf_net_deint_cc_M_AXIS_TID),
        .m_axis_tkeep(intf_net_deint_cc_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_deint_cc_M_AXIS_TLAST),
        .m_axis_tready(intf_net_deint_cc_M_AXIS_TREADY),
        .m_axis_tstrb(intf_net_deint_cc_M_AXIS_TSTRB),
        .m_axis_tuser(net_deint_cc_m_axis_tuser),
        .m_axis_tvalid(intf_net_deint_cc_M_AXIS_TVALID),
        .s_axis_aclk(aclk_axis),
        .s_axis_aresetn(net_proc_ss_ip_aresetn_Dout),
        .s_axis_tdata(intf_net_deint_ss_M_AXIS_TDATA),
        .s_axis_tdest(intf_net_deint_ss_M_AXIS_TDEST),
        .s_axis_tid(intf_net_deint_ss_M_AXIS_TID),
        .s_axis_tkeep(intf_net_deint_ss_M_AXIS_TKEEP),
        .s_axis_tlast(intf_net_deint_ss_M_AXIS_TLAST),
        .s_axis_tready(intf_net_deint_ss_M_AXIS_TREADY),
        .s_axis_tstrb(intf_net_deint_ss_M_AXIS_TSTRB),
        .s_axis_tuser(net_deint_concat_dout),
        .s_axis_tvalid(intf_net_deint_ss_M_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "bd_2d50_deint_concat_0,xlconcat_v2_1_1_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_deint_concat_0 deint_concat
       (.In0(net_deint_ss_m_axis_tuser),
        .In1(deint_field_id),
        .dout(net_deint_concat_dout));
  (* CHECK_LICENSE_TYPE = "bd_2d50_deint_fid_tap_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0 deint_fid_tap
       (.Din(net_deint_cc_m_axis_tuser),
        .Dout(net_deint_fid_tap_Dout));
  (* X_CORE_INFO = "top_bd_2d50_deint_ss_0,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_deint_ss_0 deint_ss
       (.aclk(aclk_axis),
        .aresetn(net_proc_ss_ip_aresetn_Dout),
        .m_axis_tdata(intf_net_deint_ss_M_AXIS_TDATA),
        .m_axis_tdest(intf_net_deint_ss_M_AXIS_TDEST),
        .m_axis_tid(intf_net_deint_ss_M_AXIS_TID),
        .m_axis_tkeep(intf_net_deint_ss_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_deint_ss_M_AXIS_TLAST),
        .m_axis_tready(intf_net_deint_ss_M_AXIS_TREADY),
        .m_axis_tstrb(intf_net_deint_ss_M_AXIS_TSTRB),
        .m_axis_tuser(net_deint_ss_m_axis_tuser),
        .m_axis_tvalid(intf_net_deint_ss_M_AXIS_TVALID),
        .s_axis_tdata(intf_net_video_router_M09_AXIS_TDATA),
        .s_axis_tdest(intf_net_video_router_M09_AXIS_TDEST),
        .s_axis_tid(intf_net_video_router_M09_AXIS_TID),
        .s_axis_tkeep(intf_net_video_router_M09_AXIS_TKEEP),
        .s_axis_tlast(intf_net_video_router_M09_AXIS_TLAST),
        .s_axis_tready(intf_net_video_router_M09_AXIS_TREADY),
        .s_axis_tstrb(intf_net_video_router_M09_AXIS_TSTRB),
        .s_axis_tuser(intf_net_video_router_M09_AXIS_TUSER),
        .s_axis_tvalid(intf_net_video_router_M09_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "bd_2d50_deint_tuser_tap_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0 deint_tuser_tap
       (.Din(net_deint_cc_m_axis_tuser),
        .Dout(net_deint_tuser_tap_Dout));
  (* X_CORE_INFO = "bd_2d50_dint_0_v_deinterlacer,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_dint_0 dint
       (.ap_clk(aclk_axi_mm),
        .ap_rst_n(net_reset_sel_axi_mm_gpio_io_o),
        .even(net_deint_fid_tap_Dout),
        .interrupt(NLW_dint_interrupt_UNCONNECTED),
        .m_axi_gmem_ARADDR(intf_net_dint_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(intf_net_dint_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(intf_net_dint_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(intf_net_dint_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(intf_net_dint_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(intf_net_dint_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(intf_net_dint_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(intf_net_dint_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(intf_net_dint_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(intf_net_dint_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(intf_net_dint_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(intf_net_dint_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(intf_net_dint_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(intf_net_dint_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(intf_net_dint_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(intf_net_dint_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(intf_net_dint_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(intf_net_dint_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(intf_net_dint_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(intf_net_dint_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(intf_net_dint_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(intf_net_dint_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(intf_net_dint_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(intf_net_dint_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(intf_net_dint_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(intf_net_dint_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(intf_net_dint_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(intf_net_dint_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(intf_net_dint_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(intf_net_dint_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(intf_net_dint_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(intf_net_dint_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(intf_net_dint_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(intf_net_dint_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(intf_net_dint_m_axi_gmem_WVALID),
        .m_axis_video_TDATA(intf_net_dint_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_dint_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_dint_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_dint_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_dint_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_dint_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_dint_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_dint_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_dint_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M10_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M10_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M10_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M10_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M10_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M10_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M10_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M10_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M10_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M10_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M10_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M10_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M10_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M10_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M10_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M10_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M10_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_deint_cc_M_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_deint_cc_M_AXIS_TDEST),
        .s_axis_video_TID(intf_net_deint_cc_M_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_deint_cc_M_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_deint_cc_M_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_deint_cc_M_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_deint_cc_M_AXIS_TSTRB),
        .s_axis_video_TUSER(net_deint_tuser_tap_Dout),
        .s_axis_video_TVALID(intf_net_deint_cc_M_AXIS_TVALID));
  (* X_CORE_INFO = "bd_2d50_hcr_0_v_hcresampler,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_hcr_0 hcr
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_hcr_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_hcr_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_hcr_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_hcr_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_hcr_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_hcr_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_hcr_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_hcr_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_hcr_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_hcr_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M05_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M05_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M05_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M05_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M05_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M05_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M05_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M05_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M05_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M05_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M05_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M05_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M05_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M05_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M05_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M05_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M05_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M05_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M05_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M05_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M05_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M05_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M05_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M05_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M05_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M05_AXIS_TVALID));
  (* X_CORE_INFO = "bd_2d50_hsc_0_v_hscaler,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_hsc_0 hsc
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_hsc_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_hsc_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_hsc_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_hsc_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_hsc_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_hsc_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_hsc_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_hsc_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_hsc_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_hsc_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M03_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M03_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M03_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M02_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M02_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M02_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M02_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M02_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M02_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M02_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M02_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M02_AXIS_TVALID));
  (* X_CORE_INFO = "top_bd_2d50_input_size_set_0,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_input_size_set_0 input_size_set
       (.aclk(aclk_axis),
        .aresetn(net_proc_ss_ip_aresetn_Dout),
        .m_axis_tdata(intf_net_input_size_set_M_AXIS_TDATA),
        .m_axis_tdest(intf_net_input_size_set_M_AXIS_TDEST),
        .m_axis_tid(intf_net_input_size_set_M_AXIS_TID),
        .m_axis_tkeep(intf_net_input_size_set_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_input_size_set_M_AXIS_TLAST),
        .m_axis_tready(intf_net_input_size_set_M_AXIS_TREADY),
        .m_axis_tstrb(intf_net_input_size_set_M_AXIS_TSTRB),
        .m_axis_tuser(intf_net_input_size_set_M_AXIS_TUSER),
        .m_axis_tvalid(intf_net_input_size_set_M_AXIS_TVALID),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
  (* X_CORE_INFO = "bd_2d50_ltr_0_v_letterbox,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_ltr_0 ltr
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_ltr_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_ltr_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_ltr_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_ltr_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_ltr_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_ltr_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_ltr_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_ltr_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_ltr_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_ltr_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M04_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M04_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M04_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M04_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M04_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M04_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M04_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M04_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M04_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M04_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M04_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M04_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M04_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M04_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M04_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M04_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M04_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M04_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M04_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M04_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M04_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M04_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M04_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M04_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M04_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M04_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "bd_2d50_proc_ss_ip_aresetn_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0 proc_ss_ip_aresetn
       (.Din(net_reset_sel_axis_gpio_io_o),
        .Dout(net_proc_ss_ip_aresetn_Dout));
  (* X_CORE_INFO = "axi_gpio,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_reset_sel_axi_mm_0 reset_sel_axi_mm
       (.gpio_io_i(net_reset_sel_axi_mm_gpio_io_o),
        .gpio_io_o(net_reset_sel_axi_mm_gpio_io_o),
        .gpio_io_t(NLW_reset_sel_axi_mm_gpio_io_t_UNCONNECTED[0]),
        .s_axi_aclk(aclk_axi_mm),
        .s_axi_araddr(intf_net_axi_interconnect_0_M11_AXI_ARADDR),
        .s_axi_aresetn(net_rst_axi_mm_peripheral_aresetn),
        .s_axi_arready(intf_net_axi_interconnect_0_M11_AXI_ARREADY),
        .s_axi_arvalid(intf_net_axi_interconnect_0_M11_AXI_ARVALID),
        .s_axi_awaddr(intf_net_axi_interconnect_0_M11_AXI_AWADDR),
        .s_axi_awready(intf_net_axi_interconnect_0_M11_AXI_AWREADY),
        .s_axi_awvalid(intf_net_axi_interconnect_0_M11_AXI_AWVALID),
        .s_axi_bready(intf_net_axi_interconnect_0_M11_AXI_BREADY),
        .s_axi_bresp(intf_net_axi_interconnect_0_M11_AXI_BRESP),
        .s_axi_bvalid(intf_net_axi_interconnect_0_M11_AXI_BVALID),
        .s_axi_rdata(intf_net_axi_interconnect_0_M11_AXI_RDATA),
        .s_axi_rready(intf_net_axi_interconnect_0_M11_AXI_RREADY),
        .s_axi_rresp(intf_net_axi_interconnect_0_M11_AXI_RRESP),
        .s_axi_rvalid(intf_net_axi_interconnect_0_M11_AXI_RVALID),
        .s_axi_wdata(intf_net_axi_interconnect_0_M11_AXI_WDATA),
        .s_axi_wready(intf_net_axi_interconnect_0_M11_AXI_WREADY),
        .s_axi_wstrb(intf_net_axi_interconnect_0_M11_AXI_WSTRB),
        .s_axi_wvalid(intf_net_axi_interconnect_0_M11_AXI_WVALID));
  (* X_CORE_INFO = "axi_gpio,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_reset_sel_axis_0 reset_sel_axis
       (.gpio_io_i(net_reset_sel_axis_gpio_io_o),
        .gpio_io_o(net_reset_sel_axis_gpio_io_o),
        .gpio_io_t(NLW_reset_sel_axis_gpio_io_t_UNCONNECTED[1:0]),
        .s_axi_aclk(aclk_axis),
        .s_axi_araddr(intf_net_axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(net_rst_axis_peripheral_aresetn),
        .s_axi_arready(intf_net_axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(intf_net_axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(intf_net_axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(intf_net_axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(intf_net_axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(intf_net_axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(intf_net_axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(intf_net_axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(intf_net_axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(intf_net_axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(intf_net_axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(intf_net_axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(intf_net_axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(intf_net_axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(intf_net_axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(intf_net_axi_interconnect_0_M01_AXI_WVALID));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_rst_axi_mm_0 rst_axi_mm
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_rst_axi_mm_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl),
        .interconnect_aresetn(NLW_rst_axi_mm_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_rst_axi_mm_mb_reset_UNCONNECTED),
        .peripheral_aresetn(net_rst_axi_mm_peripheral_aresetn),
        .peripheral_reset(NLW_rst_axi_mm_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_axi_mm));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_rst_axis_0 rst_axis
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_rst_axis_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl),
        .interconnect_aresetn(NLW_rst_axis_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_rst_axis_mb_reset_UNCONNECTED),
        .peripheral_aresetn(net_rst_axis_peripheral_aresetn),
        .peripheral_reset(NLW_rst_axis_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_axis));
  (* X_CORE_INFO = "bd_2d50_vcr_i_0_v_vcresampler,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_vcr_i_0 vcr_i
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_vcr_i_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_vcr_i_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_vcr_i_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_vcr_i_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_vcr_i_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_vcr_i_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_vcr_i_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_vcr_i_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_vcr_i_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_vcr_i_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M06_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M06_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M06_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M06_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M06_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M06_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M06_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M06_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M06_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M06_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M06_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M06_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M06_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M06_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M06_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M06_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M06_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M06_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M06_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M06_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M06_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M06_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M06_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M06_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M06_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M06_AXIS_TVALID));
  (* X_CORE_INFO = "bd_2d50_vcr_o_0_v_vcresampler,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_vcr_o_0 vcr_o
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_vcr_o_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_vcr_o_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_vcr_o_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_vcr_o_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_vcr_o_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_vcr_o_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_vcr_o_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_vcr_o_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_vcr_o_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_vcr_o_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M07_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M07_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M07_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M07_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M07_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M07_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M07_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M07_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M07_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M07_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M07_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M07_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M07_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M07_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M07_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M07_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M07_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M07_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M07_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M07_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M07_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M07_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M07_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M07_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M07_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M07_AXIS_TVALID));
  (* X_CORE_INFO = "top_bd_2d50_vdma_pad_0,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_vdma_pad_0 vdma_pad
       (.aclk(aclk_axi_mm),
        .aresetn(net_reset_sel_axi_mm_gpio_io_o),
        .m_axis_tdata(intf_net_vdma_pad_M_AXIS_TDATA),
        .m_axis_tkeep(intf_net_vdma_pad_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_vdma_pad_M_AXIS_TLAST),
        .m_axis_tready(intf_net_vdma_pad_M_AXIS_TREADY),
        .m_axis_tuser(intf_net_vdma_pad_M_AXIS_TUSER),
        .m_axis_tvalid(intf_net_vdma_pad_M_AXIS_TVALID),
        .s_axis_tdata(intf_net_axi_vdma_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(intf_net_axi_vdma_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(intf_net_axi_vdma_M_AXIS_MM2S_TLAST),
        .s_axis_tready(intf_net_axi_vdma_M_AXIS_MM2S_TREADY),
        .s_axis_tuser(intf_net_axi_vdma_M_AXIS_MM2S_TUSER),
        .s_axis_tvalid(intf_net_axi_vdma_M_AXIS_MM2S_TVALID));
  (* X_CORE_INFO = "top_bd_2d50_vdma_trunc_0,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_vdma_trunc_0 vdma_trunc
       (.aclk(aclk_axi_mm),
        .aresetn(net_reset_sel_axi_mm_gpio_io_o),
        .m_axis_tdata(intf_net_vdma_trunc_M_AXIS_TDATA),
        .m_axis_tkeep(intf_net_vdma_trunc_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_vdma_trunc_M_AXIS_TLAST),
        .m_axis_tready(intf_net_vdma_trunc_M_AXIS_TREADY),
        .m_axis_tuser({NLW_vdma_trunc_m_axis_tuser_UNCONNECTED[5:1],intf_net_vdma_trunc_M_AXIS_TUSER}),
        .m_axis_tvalid(intf_net_vdma_trunc_M_AXIS_TVALID),
        .s_axis_tdata(intf_net_video_router_M03_AXIS_TDATA),
        .s_axis_tkeep(intf_net_video_router_M03_AXIS_TKEEP),
        .s_axis_tlast(intf_net_video_router_M03_AXIS_TLAST),
        .s_axis_tready(intf_net_video_router_M03_AXIS_TREADY),
        .s_axis_tuser(intf_net_video_router_M03_AXIS_TUSER),
        .s_axis_tvalid(intf_net_video_router_M03_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "bd_2d50_vid_in_aresetn_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0 vid_in_aresetn
       (.Din(net_reset_sel_axis_gpio_io_o),
        .Dout(aresetn_io_axis));
  system_v_proc_ss_0_0_bd_2d50_video_router_0 video_router
       (.ACLK(aclk_axis),
        .ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M00_AXIS_ACLK(aclk_axis),
        .M00_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M00_AXIS_tdata(m_axis_tdata),
        .M00_AXIS_tdest(m_axis_tdest),
        .M00_AXIS_tid(m_axis_tid),
        .M00_AXIS_tkeep(m_axis_tkeep),
        .M00_AXIS_tlast(m_axis_tlast),
        .M00_AXIS_tready(m_axis_tready),
        .M00_AXIS_tstrb(m_axis_tstrb),
        .M00_AXIS_tuser(m_axis_tuser),
        .M00_AXIS_tvalid(m_axis_tvalid),
        .M01_AXIS_ACLK(aclk_axis),
        .M01_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M01_AXIS_tdata(intf_net_video_router_M01_AXIS_TDATA),
        .M01_AXIS_tdest(intf_net_video_router_M01_AXIS_TDEST),
        .M01_AXIS_tid(intf_net_video_router_M01_AXIS_TID),
        .M01_AXIS_tkeep(intf_net_video_router_M01_AXIS_TKEEP),
        .M01_AXIS_tlast(intf_net_video_router_M01_AXIS_TLAST),
        .M01_AXIS_tready(intf_net_video_router_M01_AXIS_TREADY),
        .M01_AXIS_tstrb(intf_net_video_router_M01_AXIS_TSTRB),
        .M01_AXIS_tuser({NLW_video_router_M01_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M01_AXIS_TUSER}),
        .M01_AXIS_tvalid(intf_net_video_router_M01_AXIS_TVALID),
        .M02_AXIS_ACLK(aclk_axis),
        .M02_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M02_AXIS_tdata(intf_net_video_router_M02_AXIS_TDATA),
        .M02_AXIS_tdest(intf_net_video_router_M02_AXIS_TDEST),
        .M02_AXIS_tid(intf_net_video_router_M02_AXIS_TID),
        .M02_AXIS_tkeep(intf_net_video_router_M02_AXIS_TKEEP),
        .M02_AXIS_tlast(intf_net_video_router_M02_AXIS_TLAST),
        .M02_AXIS_tready(intf_net_video_router_M02_AXIS_TREADY),
        .M02_AXIS_tstrb(intf_net_video_router_M02_AXIS_TSTRB),
        .M02_AXIS_tuser({NLW_video_router_M02_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M02_AXIS_TUSER}),
        .M02_AXIS_tvalid(intf_net_video_router_M02_AXIS_TVALID),
        .M03_AXIS_ACLK(aclk_axi_mm),
        .M03_AXIS_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .M03_AXIS_tdata(intf_net_video_router_M03_AXIS_TDATA),
        .M03_AXIS_tkeep(intf_net_video_router_M03_AXIS_TKEEP),
        .M03_AXIS_tlast(intf_net_video_router_M03_AXIS_TLAST),
        .M03_AXIS_tready(intf_net_video_router_M03_AXIS_TREADY),
        .M03_AXIS_tuser(intf_net_video_router_M03_AXIS_TUSER),
        .M03_AXIS_tvalid(intf_net_video_router_M03_AXIS_TVALID),
        .M04_AXIS_ACLK(aclk_axis),
        .M04_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M04_AXIS_tdata(intf_net_video_router_M04_AXIS_TDATA),
        .M04_AXIS_tdest(intf_net_video_router_M04_AXIS_TDEST),
        .M04_AXIS_tid(intf_net_video_router_M04_AXIS_TID),
        .M04_AXIS_tkeep(intf_net_video_router_M04_AXIS_TKEEP),
        .M04_AXIS_tlast(intf_net_video_router_M04_AXIS_TLAST),
        .M04_AXIS_tready(intf_net_video_router_M04_AXIS_TREADY),
        .M04_AXIS_tstrb(intf_net_video_router_M04_AXIS_TSTRB),
        .M04_AXIS_tuser({NLW_video_router_M04_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M04_AXIS_TUSER}),
        .M04_AXIS_tvalid(intf_net_video_router_M04_AXIS_TVALID),
        .M05_AXIS_ACLK(aclk_axis),
        .M05_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M05_AXIS_tdata(intf_net_video_router_M05_AXIS_TDATA),
        .M05_AXIS_tdest(intf_net_video_router_M05_AXIS_TDEST),
        .M05_AXIS_tid(intf_net_video_router_M05_AXIS_TID),
        .M05_AXIS_tkeep(intf_net_video_router_M05_AXIS_TKEEP),
        .M05_AXIS_tlast(intf_net_video_router_M05_AXIS_TLAST),
        .M05_AXIS_tready(intf_net_video_router_M05_AXIS_TREADY),
        .M05_AXIS_tstrb(intf_net_video_router_M05_AXIS_TSTRB),
        .M05_AXIS_tuser({NLW_video_router_M05_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M05_AXIS_TUSER}),
        .M05_AXIS_tvalid(intf_net_video_router_M05_AXIS_TVALID),
        .M06_AXIS_ACLK(aclk_axis),
        .M06_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M06_AXIS_tdata(intf_net_video_router_M06_AXIS_TDATA),
        .M06_AXIS_tdest(intf_net_video_router_M06_AXIS_TDEST),
        .M06_AXIS_tid(intf_net_video_router_M06_AXIS_TID),
        .M06_AXIS_tkeep(intf_net_video_router_M06_AXIS_TKEEP),
        .M06_AXIS_tlast(intf_net_video_router_M06_AXIS_TLAST),
        .M06_AXIS_tready(intf_net_video_router_M06_AXIS_TREADY),
        .M06_AXIS_tstrb(intf_net_video_router_M06_AXIS_TSTRB),
        .M06_AXIS_tuser({NLW_video_router_M06_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M06_AXIS_TUSER}),
        .M06_AXIS_tvalid(intf_net_video_router_M06_AXIS_TVALID),
        .M07_AXIS_ACLK(aclk_axis),
        .M07_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M07_AXIS_tdata(intf_net_video_router_M07_AXIS_TDATA),
        .M07_AXIS_tdest(intf_net_video_router_M07_AXIS_TDEST),
        .M07_AXIS_tid(intf_net_video_router_M07_AXIS_TID),
        .M07_AXIS_tkeep(intf_net_video_router_M07_AXIS_TKEEP),
        .M07_AXIS_tlast(intf_net_video_router_M07_AXIS_TLAST),
        .M07_AXIS_tready(intf_net_video_router_M07_AXIS_TREADY),
        .M07_AXIS_tstrb(intf_net_video_router_M07_AXIS_TSTRB),
        .M07_AXIS_tuser({NLW_video_router_M07_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M07_AXIS_TUSER}),
        .M07_AXIS_tvalid(intf_net_video_router_M07_AXIS_TVALID),
        .M08_AXIS_ACLK(aclk_axis),
        .M08_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M08_AXIS_tdata(intf_net_video_router_M08_AXIS_TDATA),
        .M08_AXIS_tdest(intf_net_video_router_M08_AXIS_TDEST),
        .M08_AXIS_tid(intf_net_video_router_M08_AXIS_TID),
        .M08_AXIS_tkeep(intf_net_video_router_M08_AXIS_TKEEP),
        .M08_AXIS_tlast(intf_net_video_router_M08_AXIS_TLAST),
        .M08_AXIS_tready(intf_net_video_router_M08_AXIS_TREADY),
        .M08_AXIS_tstrb(intf_net_video_router_M08_AXIS_TSTRB),
        .M08_AXIS_tuser({NLW_video_router_M08_AXIS_tuser_UNCONNECTED[2:1],intf_net_video_router_M08_AXIS_TUSER}),
        .M08_AXIS_tvalid(intf_net_video_router_M08_AXIS_TVALID),
        .M09_AXIS_ACLK(aclk_axis),
        .M09_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M09_AXIS_tdata(intf_net_video_router_M09_AXIS_TDATA),
        .M09_AXIS_tdest(intf_net_video_router_M09_AXIS_TDEST),
        .M09_AXIS_tid(intf_net_video_router_M09_AXIS_TID),
        .M09_AXIS_tkeep(intf_net_video_router_M09_AXIS_TKEEP),
        .M09_AXIS_tlast(intf_net_video_router_M09_AXIS_TLAST),
        .M09_AXIS_tready(intf_net_video_router_M09_AXIS_TREADY),
        .M09_AXIS_tstrb(intf_net_video_router_M09_AXIS_TSTRB),
        .M09_AXIS_tuser(intf_net_video_router_M09_AXIS_TUSER),
        .M09_AXIS_tvalid(intf_net_video_router_M09_AXIS_TVALID),
        .S00_AXIS_ACLK(aclk_axis),
        .S00_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S00_AXIS_tdata(intf_net_input_size_set_M_AXIS_TDATA),
        .S00_AXIS_tdest(intf_net_input_size_set_M_AXIS_TDEST),
        .S00_AXIS_tid(intf_net_input_size_set_M_AXIS_TID),
        .S00_AXIS_tkeep(intf_net_input_size_set_M_AXIS_TKEEP),
        .S00_AXIS_tlast(intf_net_input_size_set_M_AXIS_TLAST),
        .S00_AXIS_tready(intf_net_input_size_set_M_AXIS_TREADY),
        .S00_AXIS_tstrb(intf_net_input_size_set_M_AXIS_TSTRB),
        .S00_AXIS_tuser(intf_net_input_size_set_M_AXIS_TUSER),
        .S00_AXIS_tvalid(intf_net_input_size_set_M_AXIS_TVALID),
        .S01_AXIS_ACLK(aclk_axis),
        .S01_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S01_AXIS_tdata(intf_net_vsc_m_axis_video_TDATA),
        .S01_AXIS_tdest(intf_net_vsc_m_axis_video_TDEST),
        .S01_AXIS_tid(intf_net_vsc_m_axis_video_TID),
        .S01_AXIS_tkeep(intf_net_vsc_m_axis_video_TKEEP),
        .S01_AXIS_tlast(intf_net_vsc_m_axis_video_TLAST),
        .S01_AXIS_tready(intf_net_vsc_m_axis_video_TREADY),
        .S01_AXIS_tstrb(intf_net_vsc_m_axis_video_TSTRB),
        .S01_AXIS_tuser(intf_net_vsc_m_axis_video_TUSER),
        .S01_AXIS_tvalid(intf_net_vsc_m_axis_video_TVALID),
        .S02_AXIS_ACLK(aclk_axis),
        .S02_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S02_AXIS_tdata(intf_net_hsc_m_axis_video_TDATA),
        .S02_AXIS_tdest(intf_net_hsc_m_axis_video_TDEST),
        .S02_AXIS_tid(intf_net_hsc_m_axis_video_TID),
        .S02_AXIS_tkeep(intf_net_hsc_m_axis_video_TKEEP),
        .S02_AXIS_tlast(intf_net_hsc_m_axis_video_TLAST),
        .S02_AXIS_tready(intf_net_hsc_m_axis_video_TREADY),
        .S02_AXIS_tstrb(intf_net_hsc_m_axis_video_TSTRB),
        .S02_AXIS_tuser(intf_net_hsc_m_axis_video_TUSER),
        .S02_AXIS_tvalid(intf_net_hsc_m_axis_video_TVALID),
        .S03_AXIS_ACLK(aclk_axi_mm),
        .S03_AXIS_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .S03_AXIS_tdata(intf_net_vdma_pad_M_AXIS_TDATA),
        .S03_AXIS_tkeep(intf_net_vdma_pad_M_AXIS_TKEEP),
        .S03_AXIS_tlast(intf_net_vdma_pad_M_AXIS_TLAST),
        .S03_AXIS_tready(intf_net_vdma_pad_M_AXIS_TREADY),
        .S03_AXIS_tuser(intf_net_vdma_pad_M_AXIS_TUSER),
        .S03_AXIS_tvalid(intf_net_vdma_pad_M_AXIS_TVALID),
        .S04_AXIS_ACLK(aclk_axis),
        .S04_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S04_AXIS_tdata(intf_net_ltr_m_axis_video_TDATA),
        .S04_AXIS_tdest(intf_net_ltr_m_axis_video_TDEST),
        .S04_AXIS_tid(intf_net_ltr_m_axis_video_TID),
        .S04_AXIS_tkeep(intf_net_ltr_m_axis_video_TKEEP),
        .S04_AXIS_tlast(intf_net_ltr_m_axis_video_TLAST),
        .S04_AXIS_tready(intf_net_ltr_m_axis_video_TREADY),
        .S04_AXIS_tstrb(intf_net_ltr_m_axis_video_TSTRB),
        .S04_AXIS_tuser(intf_net_ltr_m_axis_video_TUSER),
        .S04_AXIS_tvalid(intf_net_ltr_m_axis_video_TVALID),
        .S05_AXIS_ACLK(aclk_axis),
        .S05_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S05_AXIS_tdata(intf_net_hcr_m_axis_video_TDATA),
        .S05_AXIS_tdest(intf_net_hcr_m_axis_video_TDEST),
        .S05_AXIS_tid(intf_net_hcr_m_axis_video_TID),
        .S05_AXIS_tkeep(intf_net_hcr_m_axis_video_TKEEP),
        .S05_AXIS_tlast(intf_net_hcr_m_axis_video_TLAST),
        .S05_AXIS_tready(intf_net_hcr_m_axis_video_TREADY),
        .S05_AXIS_tstrb(intf_net_hcr_m_axis_video_TSTRB),
        .S05_AXIS_tuser(intf_net_hcr_m_axis_video_TUSER),
        .S05_AXIS_tvalid(intf_net_hcr_m_axis_video_TVALID),
        .S06_AXIS_ACLK(aclk_axis),
        .S06_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S06_AXIS_tdata(intf_net_vcr_i_m_axis_video_TDATA),
        .S06_AXIS_tdest(intf_net_vcr_i_m_axis_video_TDEST),
        .S06_AXIS_tid(intf_net_vcr_i_m_axis_video_TID),
        .S06_AXIS_tkeep(intf_net_vcr_i_m_axis_video_TKEEP),
        .S06_AXIS_tlast(intf_net_vcr_i_m_axis_video_TLAST),
        .S06_AXIS_tready(intf_net_vcr_i_m_axis_video_TREADY),
        .S06_AXIS_tstrb(intf_net_vcr_i_m_axis_video_TSTRB),
        .S06_AXIS_tuser(intf_net_vcr_i_m_axis_video_TUSER),
        .S06_AXIS_tvalid(intf_net_vcr_i_m_axis_video_TVALID),
        .S07_AXIS_ACLK(aclk_axis),
        .S07_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S07_AXIS_tdata(intf_net_vcr_o_m_axis_video_TDATA),
        .S07_AXIS_tdest(intf_net_vcr_o_m_axis_video_TDEST),
        .S07_AXIS_tid(intf_net_vcr_o_m_axis_video_TID),
        .S07_AXIS_tkeep(intf_net_vcr_o_m_axis_video_TKEEP),
        .S07_AXIS_tlast(intf_net_vcr_o_m_axis_video_TLAST),
        .S07_AXIS_tready(intf_net_vcr_o_m_axis_video_TREADY),
        .S07_AXIS_tstrb(intf_net_vcr_o_m_axis_video_TSTRB),
        .S07_AXIS_tuser(intf_net_vcr_o_m_axis_video_TUSER),
        .S07_AXIS_tvalid(intf_net_vcr_o_m_axis_video_TVALID),
        .S08_AXIS_ACLK(aclk_axis),
        .S08_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S08_AXIS_tdata(intf_net_csc_m_axis_video_TDATA),
        .S08_AXIS_tdest(intf_net_csc_m_axis_video_TDEST),
        .S08_AXIS_tid(intf_net_csc_m_axis_video_TID),
        .S08_AXIS_tkeep(intf_net_csc_m_axis_video_TKEEP),
        .S08_AXIS_tlast(intf_net_csc_m_axis_video_TLAST),
        .S08_AXIS_tready(intf_net_csc_m_axis_video_TREADY),
        .S08_AXIS_tstrb(intf_net_csc_m_axis_video_TSTRB),
        .S08_AXIS_tuser(intf_net_csc_m_axis_video_TUSER),
        .S08_AXIS_tvalid(intf_net_csc_m_axis_video_TVALID),
        .S09_AXIS_ACLK(aclk_axi_mm),
        .S09_AXIS_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .S09_AXIS_tdata(intf_net_dint_m_axis_video_TDATA),
        .S09_AXIS_tdest(intf_net_dint_m_axis_video_TDEST),
        .S09_AXIS_tid(intf_net_dint_m_axis_video_TID),
        .S09_AXIS_tkeep(intf_net_dint_m_axis_video_TKEEP),
        .S09_AXIS_tlast(intf_net_dint_m_axis_video_TLAST),
        .S09_AXIS_tready(intf_net_dint_m_axis_video_TREADY),
        .S09_AXIS_tstrb(intf_net_dint_m_axis_video_TSTRB),
        .S09_AXIS_tuser(intf_net_dint_m_axis_video_TUSER),
        .S09_AXIS_tvalid(intf_net_dint_m_axis_video_TVALID),
        .S_AXI_CTRL_ACLK(aclk_ctrl),
        .S_AXI_CTRL_ARESETN(aresetn_ctrl),
        .S_AXI_CTRL_araddr(intf_net_axi_interconnect_0_M00_AXI_ARADDR),
        .S_AXI_CTRL_arready(intf_net_axi_interconnect_0_M00_AXI_ARREADY),
        .S_AXI_CTRL_arvalid(intf_net_axi_interconnect_0_M00_AXI_ARVALID),
        .S_AXI_CTRL_awaddr(intf_net_axi_interconnect_0_M00_AXI_AWADDR),
        .S_AXI_CTRL_awready(intf_net_axi_interconnect_0_M00_AXI_AWREADY),
        .S_AXI_CTRL_awvalid(intf_net_axi_interconnect_0_M00_AXI_AWVALID),
        .S_AXI_CTRL_bready(intf_net_axi_interconnect_0_M00_AXI_BREADY),
        .S_AXI_CTRL_bresp(intf_net_axi_interconnect_0_M00_AXI_BRESP),
        .S_AXI_CTRL_bvalid(intf_net_axi_interconnect_0_M00_AXI_BVALID),
        .S_AXI_CTRL_rdata(intf_net_axi_interconnect_0_M00_AXI_RDATA),
        .S_AXI_CTRL_rready(intf_net_axi_interconnect_0_M00_AXI_RREADY),
        .S_AXI_CTRL_rresp(intf_net_axi_interconnect_0_M00_AXI_RRESP),
        .S_AXI_CTRL_rvalid(intf_net_axi_interconnect_0_M00_AXI_RVALID),
        .S_AXI_CTRL_wdata(intf_net_axi_interconnect_0_M00_AXI_WDATA),
        .S_AXI_CTRL_wready(intf_net_axi_interconnect_0_M00_AXI_WREADY),
        .S_AXI_CTRL_wvalid(intf_net_axi_interconnect_0_M00_AXI_WVALID));
  (* X_CORE_INFO = "bd_2d50_vsc_0_v_vscaler,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_vsc_0 vsc
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_vsc_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_vsc_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_vsc_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_vsc_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_vsc_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_vsc_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_vsc_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_vsc_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_vsc_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_vsc_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_axi_interconnect_0_M02_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M01_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M01_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M01_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M01_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M01_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M01_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M01_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M01_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M01_AXIS_TVALID));
endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [8:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [8:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [11:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [11:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [11:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_10
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [8:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [8:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_11
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tstrb;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [5:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tstrb;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [5:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_12
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [5:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [5:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_13
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_2
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [13:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [13:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [13:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [13:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_3
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [6:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [6:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_4
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [10:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [10:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_5
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [10:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [10:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_6
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [10:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [10:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_7
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [8:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [8:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_8
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [8:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [8:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_cc_9
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [6:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [6:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_ds_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [5:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "top_bd_2d50_auto_ss_slid_0,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_ss_slid_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "top_bd_2d50_auto_ss_slidr_0,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_ss_slidr_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tstrb;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [5:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [5:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_us_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tstrb;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [5:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_us_df_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_us_df_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;


endmodule

(* X_CORE_INFO = "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_auto_us_df_2
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

module system_v_proc_ss_0_0_bd_2d50_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [19:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [19:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [8:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [8:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [11:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [11:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [13:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [13:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [6:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [6:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [10:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [10:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [10:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [10:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [10:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [10:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [8:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [8:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [8:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [8:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [6:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [6:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [8:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [8:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [19:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [19:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire [19:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [19:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire M00_AXI_wvalid;
  wire M01_ACLK;
  wire M01_ARESETN;
  wire [8:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [8:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire M02_ACLK;
  wire M02_ARESETN;
  wire [11:0]M02_AXI_araddr;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [11:0]M02_AXI_awaddr;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire M03_ACLK;
  wire M03_ARESETN;
  wire [13:0]M03_AXI_araddr;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [13:0]M03_AXI_awaddr;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire M04_ACLK;
  wire M04_ARESETN;
  wire [6:0]M04_AXI_araddr;
  wire M04_AXI_arready;
  wire M04_AXI_arvalid;
  wire [6:0]M04_AXI_awaddr;
  wire M04_AXI_awready;
  wire M04_AXI_awvalid;
  wire M04_AXI_bready;
  wire [1:0]M04_AXI_bresp;
  wire M04_AXI_bvalid;
  wire [31:0]M04_AXI_rdata;
  wire M04_AXI_rready;
  wire [1:0]M04_AXI_rresp;
  wire M04_AXI_rvalid;
  wire [31:0]M04_AXI_wdata;
  wire M04_AXI_wready;
  wire [3:0]M04_AXI_wstrb;
  wire M04_AXI_wvalid;
  wire M05_ACLK;
  wire M05_ARESETN;
  wire [10:0]M05_AXI_araddr;
  wire M05_AXI_arready;
  wire M05_AXI_arvalid;
  wire [10:0]M05_AXI_awaddr;
  wire M05_AXI_awready;
  wire M05_AXI_awvalid;
  wire M05_AXI_bready;
  wire [1:0]M05_AXI_bresp;
  wire M05_AXI_bvalid;
  wire [31:0]M05_AXI_rdata;
  wire M05_AXI_rready;
  wire [1:0]M05_AXI_rresp;
  wire M05_AXI_rvalid;
  wire [31:0]M05_AXI_wdata;
  wire M05_AXI_wready;
  wire [3:0]M05_AXI_wstrb;
  wire M05_AXI_wvalid;
  wire M06_ACLK;
  wire M06_ARESETN;
  wire [10:0]M06_AXI_araddr;
  wire M06_AXI_arready;
  wire M06_AXI_arvalid;
  wire [10:0]M06_AXI_awaddr;
  wire M06_AXI_awready;
  wire M06_AXI_awvalid;
  wire M06_AXI_bready;
  wire [1:0]M06_AXI_bresp;
  wire M06_AXI_bvalid;
  wire [31:0]M06_AXI_rdata;
  wire M06_AXI_rready;
  wire [1:0]M06_AXI_rresp;
  wire M06_AXI_rvalid;
  wire [31:0]M06_AXI_wdata;
  wire M06_AXI_wready;
  wire [3:0]M06_AXI_wstrb;
  wire M06_AXI_wvalid;
  wire M07_ACLK;
  wire M07_ARESETN;
  wire [10:0]M07_AXI_araddr;
  wire M07_AXI_arready;
  wire M07_AXI_arvalid;
  wire [10:0]M07_AXI_awaddr;
  wire M07_AXI_awready;
  wire M07_AXI_awvalid;
  wire M07_AXI_bready;
  wire [1:0]M07_AXI_bresp;
  wire M07_AXI_bvalid;
  wire [31:0]M07_AXI_rdata;
  wire M07_AXI_rready;
  wire [1:0]M07_AXI_rresp;
  wire M07_AXI_rvalid;
  wire [31:0]M07_AXI_wdata;
  wire M07_AXI_wready;
  wire [3:0]M07_AXI_wstrb;
  wire M07_AXI_wvalid;
  wire M08_ACLK;
  wire M08_ARESETN;
  wire [8:0]M08_AXI_araddr;
  wire M08_AXI_arready;
  wire M08_AXI_arvalid;
  wire [8:0]M08_AXI_awaddr;
  wire M08_AXI_awready;
  wire M08_AXI_awvalid;
  wire M08_AXI_bready;
  wire [1:0]M08_AXI_bresp;
  wire M08_AXI_bvalid;
  wire [31:0]M08_AXI_rdata;
  wire M08_AXI_rready;
  wire [1:0]M08_AXI_rresp;
  wire M08_AXI_rvalid;
  wire [31:0]M08_AXI_wdata;
  wire M08_AXI_wready;
  wire [3:0]M08_AXI_wstrb;
  wire M08_AXI_wvalid;
  wire M09_ACLK;
  wire M09_ARESETN;
  wire [8:0]M09_AXI_araddr;
  wire M09_AXI_arready;
  wire M09_AXI_arvalid;
  wire [8:0]M09_AXI_awaddr;
  wire M09_AXI_awready;
  wire M09_AXI_awvalid;
  wire M09_AXI_bready;
  wire [1:0]M09_AXI_bresp;
  wire M09_AXI_bvalid;
  wire [31:0]M09_AXI_rdata;
  wire M09_AXI_rready;
  wire [1:0]M09_AXI_rresp;
  wire M09_AXI_rvalid;
  wire [31:0]M09_AXI_wdata;
  wire M09_AXI_wready;
  wire M09_AXI_wvalid;
  wire M10_ACLK;
  wire M10_ARESETN;
  wire [6:0]M10_AXI_araddr;
  wire M10_AXI_arready;
  wire M10_AXI_arvalid;
  wire [6:0]M10_AXI_awaddr;
  wire M10_AXI_awready;
  wire M10_AXI_awvalid;
  wire M10_AXI_bready;
  wire [1:0]M10_AXI_bresp;
  wire M10_AXI_bvalid;
  wire [31:0]M10_AXI_rdata;
  wire M10_AXI_rready;
  wire [1:0]M10_AXI_rresp;
  wire M10_AXI_rvalid;
  wire [31:0]M10_AXI_wdata;
  wire M10_AXI_wready;
  wire [3:0]M10_AXI_wstrb;
  wire M10_AXI_wvalid;
  wire M11_ACLK;
  wire M11_ARESETN;
  wire [8:0]M11_AXI_araddr;
  wire M11_AXI_arready;
  wire M11_AXI_arvalid;
  wire [8:0]M11_AXI_awaddr;
  wire M11_AXI_awready;
  wire M11_AXI_awvalid;
  wire M11_AXI_bready;
  wire [1:0]M11_AXI_bresp;
  wire M11_AXI_bvalid;
  wire [31:0]M11_AXI_rdata;
  wire M11_AXI_rready;
  wire [1:0]M11_AXI_rresp;
  wire M11_AXI_rvalid;
  wire [31:0]M11_AXI_wdata;
  wire M11_AXI_wready;
  wire [3:0]M11_AXI_wstrb;
  wire M11_AXI_wvalid;
  wire [19:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [19:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [39:20]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire xbar_to_m01_couplers_ARVALID;
  wire [39:20]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire xbar_to_m01_couplers_AWVALID;
  wire xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire xbar_to_m01_couplers_WVALID;
  wire [59:40]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire xbar_to_m02_couplers_ARVALID;
  wire [59:40]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire xbar_to_m02_couplers_AWVALID;
  wire xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire xbar_to_m02_couplers_WVALID;
  wire [79:60]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire xbar_to_m03_couplers_ARVALID;
  wire [79:60]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire xbar_to_m03_couplers_AWVALID;
  wire xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire xbar_to_m03_couplers_WVALID;
  wire [99:80]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire xbar_to_m04_couplers_ARVALID;
  wire [99:80]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire xbar_to_m04_couplers_AWVALID;
  wire xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire xbar_to_m04_couplers_WVALID;
  wire [119:100]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire xbar_to_m05_couplers_ARVALID;
  wire [119:100]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire xbar_to_m05_couplers_AWVALID;
  wire xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire xbar_to_m05_couplers_WVALID;
  wire [139:120]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire xbar_to_m06_couplers_ARVALID;
  wire [139:120]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire xbar_to_m06_couplers_AWVALID;
  wire xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire xbar_to_m06_couplers_WVALID;
  wire [159:140]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire xbar_to_m07_couplers_ARVALID;
  wire [159:140]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire xbar_to_m07_couplers_AWVALID;
  wire xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire xbar_to_m07_couplers_WVALID;
  wire [179:160]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire xbar_to_m08_couplers_ARVALID;
  wire [179:160]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire xbar_to_m08_couplers_AWVALID;
  wire xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire xbar_to_m08_couplers_WVALID;
  wire [199:180]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire xbar_to_m09_couplers_ARREADY;
  wire xbar_to_m09_couplers_ARVALID;
  wire [199:180]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire xbar_to_m09_couplers_AWREADY;
  wire xbar_to_m09_couplers_AWVALID;
  wire xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire xbar_to_m09_couplers_WVALID;
  wire [219:200]xbar_to_m10_couplers_ARADDR;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire xbar_to_m10_couplers_ARREADY;
  wire xbar_to_m10_couplers_ARVALID;
  wire [219:200]xbar_to_m10_couplers_AWADDR;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire xbar_to_m10_couplers_AWREADY;
  wire xbar_to_m10_couplers_AWVALID;
  wire xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire xbar_to_m10_couplers_WVALID;
  wire [239:220]xbar_to_m11_couplers_ARADDR;
  wire [35:33]xbar_to_m11_couplers_ARPROT;
  wire xbar_to_m11_couplers_ARREADY;
  wire xbar_to_m11_couplers_ARVALID;
  wire [239:220]xbar_to_m11_couplers_AWADDR;
  wire [35:33]xbar_to_m11_couplers_AWPROT;
  wire xbar_to_m11_couplers_AWREADY;
  wire xbar_to_m11_couplers_AWVALID;
  wire xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire xbar_to_m11_couplers_WVALID;
  wire [2:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  system_v_proc_ss_0_0_m01_couplers_imp_U2A8WA m01_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M01_ACLK(M01_ACLK),
        .M01_ARESETN(M01_ARESETN),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .m_axi_araddr(xbar_to_m01_couplers_ARADDR[28:20]),
        .m_axi_arprot(xbar_to_m01_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m01_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m01_couplers_AWADDR[28:20]),
        .m_axi_awprot(xbar_to_m01_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m01_couplers_AWVALID),
        .m_axi_bready(xbar_to_m01_couplers_BREADY),
        .m_axi_rready(xbar_to_m01_couplers_RREADY),
        .m_axi_wdata(xbar_to_m01_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m01_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m01_couplers_WVALID),
        .s_axi_arready(xbar_to_m01_couplers_ARREADY),
        .s_axi_awready(xbar_to_m01_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m01_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m01_couplers_BVALID),
        .s_axi_rdata(xbar_to_m01_couplers_RDATA),
        .s_axi_rresp(xbar_to_m01_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m01_couplers_RVALID),
        .s_axi_wready(xbar_to_m01_couplers_WREADY));
  system_v_proc_ss_0_0_m02_couplers_imp_HOX72M m02_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M02_ACLK(M02_ACLK),
        .M02_ARESETN(M02_ARESETN),
        .M02_AXI_araddr(M02_AXI_araddr),
        .M02_AXI_arready(M02_AXI_arready),
        .M02_AXI_arvalid(M02_AXI_arvalid),
        .M02_AXI_awaddr(M02_AXI_awaddr),
        .M02_AXI_awready(M02_AXI_awready),
        .M02_AXI_awvalid(M02_AXI_awvalid),
        .M02_AXI_bready(M02_AXI_bready),
        .M02_AXI_bresp(M02_AXI_bresp),
        .M02_AXI_bvalid(M02_AXI_bvalid),
        .M02_AXI_rdata(M02_AXI_rdata),
        .M02_AXI_rready(M02_AXI_rready),
        .M02_AXI_rresp(M02_AXI_rresp),
        .M02_AXI_rvalid(M02_AXI_rvalid),
        .M02_AXI_wdata(M02_AXI_wdata),
        .M02_AXI_wready(M02_AXI_wready),
        .M02_AXI_wstrb(M02_AXI_wstrb),
        .M02_AXI_wvalid(M02_AXI_wvalid),
        .m_axi_araddr(xbar_to_m02_couplers_ARADDR[51:40]),
        .m_axi_arprot(xbar_to_m02_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m02_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m02_couplers_AWADDR[51:40]),
        .m_axi_awprot(xbar_to_m02_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m02_couplers_AWVALID),
        .m_axi_bready(xbar_to_m02_couplers_BREADY),
        .m_axi_rready(xbar_to_m02_couplers_RREADY),
        .m_axi_wdata(xbar_to_m02_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m02_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m02_couplers_WVALID),
        .s_axi_arready(xbar_to_m02_couplers_ARREADY),
        .s_axi_awready(xbar_to_m02_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m02_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m02_couplers_BVALID),
        .s_axi_rdata(xbar_to_m02_couplers_RDATA),
        .s_axi_rresp(xbar_to_m02_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m02_couplers_RVALID),
        .s_axi_wready(xbar_to_m02_couplers_WREADY));
  system_v_proc_ss_0_0_m03_couplers_imp_1F5VMML m03_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M03_ACLK(M03_ACLK),
        .M03_ARESETN(M03_ARESETN),
        .M03_AXI_araddr(M03_AXI_araddr),
        .M03_AXI_arready(M03_AXI_arready),
        .M03_AXI_arvalid(M03_AXI_arvalid),
        .M03_AXI_awaddr(M03_AXI_awaddr),
        .M03_AXI_awready(M03_AXI_awready),
        .M03_AXI_awvalid(M03_AXI_awvalid),
        .M03_AXI_bready(M03_AXI_bready),
        .M03_AXI_bresp(M03_AXI_bresp),
        .M03_AXI_bvalid(M03_AXI_bvalid),
        .M03_AXI_rdata(M03_AXI_rdata),
        .M03_AXI_rready(M03_AXI_rready),
        .M03_AXI_rresp(M03_AXI_rresp),
        .M03_AXI_rvalid(M03_AXI_rvalid),
        .M03_AXI_wdata(M03_AXI_wdata),
        .M03_AXI_wready(M03_AXI_wready),
        .M03_AXI_wstrb(M03_AXI_wstrb),
        .M03_AXI_wvalid(M03_AXI_wvalid),
        .m_axi_araddr(xbar_to_m03_couplers_ARADDR[73:60]),
        .m_axi_arprot(xbar_to_m03_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m03_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m03_couplers_AWADDR[73:60]),
        .m_axi_awprot(xbar_to_m03_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m03_couplers_AWVALID),
        .m_axi_bready(xbar_to_m03_couplers_BREADY),
        .m_axi_rready(xbar_to_m03_couplers_RREADY),
        .m_axi_wdata(xbar_to_m03_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m03_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m03_couplers_WVALID),
        .s_axi_arready(xbar_to_m03_couplers_ARREADY),
        .s_axi_awready(xbar_to_m03_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m03_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m03_couplers_BVALID),
        .s_axi_rdata(xbar_to_m03_couplers_RDATA),
        .s_axi_rresp(xbar_to_m03_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m03_couplers_RVALID),
        .s_axi_wready(xbar_to_m03_couplers_WREADY));
  system_v_proc_ss_0_0_m04_couplers_imp_16FXGJQ m04_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M04_ACLK(M04_ACLK),
        .M04_ARESETN(M04_ARESETN),
        .M04_AXI_araddr(M04_AXI_araddr),
        .M04_AXI_arready(M04_AXI_arready),
        .M04_AXI_arvalid(M04_AXI_arvalid),
        .M04_AXI_awaddr(M04_AXI_awaddr),
        .M04_AXI_awready(M04_AXI_awready),
        .M04_AXI_awvalid(M04_AXI_awvalid),
        .M04_AXI_bready(M04_AXI_bready),
        .M04_AXI_bresp(M04_AXI_bresp),
        .M04_AXI_bvalid(M04_AXI_bvalid),
        .M04_AXI_rdata(M04_AXI_rdata),
        .M04_AXI_rready(M04_AXI_rready),
        .M04_AXI_rresp(M04_AXI_rresp),
        .M04_AXI_rvalid(M04_AXI_rvalid),
        .M04_AXI_wdata(M04_AXI_wdata),
        .M04_AXI_wready(M04_AXI_wready),
        .M04_AXI_wstrb(M04_AXI_wstrb),
        .M04_AXI_wvalid(M04_AXI_wvalid),
        .m_axi_araddr(xbar_to_m04_couplers_ARADDR[86:80]),
        .m_axi_arprot(xbar_to_m04_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m04_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m04_couplers_AWADDR[86:80]),
        .m_axi_awprot(xbar_to_m04_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m04_couplers_AWVALID),
        .m_axi_bready(xbar_to_m04_couplers_BREADY),
        .m_axi_rready(xbar_to_m04_couplers_RREADY),
        .m_axi_wdata(xbar_to_m04_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m04_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m04_couplers_WVALID),
        .s_axi_arready(xbar_to_m04_couplers_ARREADY),
        .s_axi_awready(xbar_to_m04_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m04_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m04_couplers_BVALID),
        .s_axi_rdata(xbar_to_m04_couplers_RDATA),
        .s_axi_rresp(xbar_to_m04_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m04_couplers_RVALID),
        .s_axi_wready(xbar_to_m04_couplers_WREADY));
  system_v_proc_ss_0_0_m05_couplers_imp_8OUFK5 m05_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M05_ACLK(M05_ACLK),
        .M05_ARESETN(M05_ARESETN),
        .M05_AXI_araddr(M05_AXI_araddr),
        .M05_AXI_arready(M05_AXI_arready),
        .M05_AXI_arvalid(M05_AXI_arvalid),
        .M05_AXI_awaddr(M05_AXI_awaddr),
        .M05_AXI_awready(M05_AXI_awready),
        .M05_AXI_awvalid(M05_AXI_awvalid),
        .M05_AXI_bready(M05_AXI_bready),
        .M05_AXI_bresp(M05_AXI_bresp),
        .M05_AXI_bvalid(M05_AXI_bvalid),
        .M05_AXI_rdata(M05_AXI_rdata),
        .M05_AXI_rready(M05_AXI_rready),
        .M05_AXI_rresp(M05_AXI_rresp),
        .M05_AXI_rvalid(M05_AXI_rvalid),
        .M05_AXI_wdata(M05_AXI_wdata),
        .M05_AXI_wready(M05_AXI_wready),
        .M05_AXI_wstrb(M05_AXI_wstrb),
        .M05_AXI_wvalid(M05_AXI_wvalid),
        .m_axi_araddr(xbar_to_m05_couplers_ARADDR[110:100]),
        .m_axi_arprot(xbar_to_m05_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m05_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m05_couplers_AWADDR[110:100]),
        .m_axi_awprot(xbar_to_m05_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m05_couplers_AWVALID),
        .m_axi_bready(xbar_to_m05_couplers_BREADY),
        .m_axi_rready(xbar_to_m05_couplers_RREADY),
        .m_axi_wdata(xbar_to_m05_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m05_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m05_couplers_WVALID),
        .s_axi_arready(xbar_to_m05_couplers_ARREADY),
        .s_axi_awready(xbar_to_m05_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m05_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m05_couplers_BVALID),
        .s_axi_rdata(xbar_to_m05_couplers_RDATA),
        .s_axi_rresp(xbar_to_m05_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m05_couplers_RVALID),
        .s_axi_wready(xbar_to_m05_couplers_WREADY));
  system_v_proc_ss_0_0_m06_couplers_imp_LB3B29 m06_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M06_ACLK(M06_ACLK),
        .M06_ARESETN(M06_ARESETN),
        .M06_AXI_araddr(M06_AXI_araddr),
        .M06_AXI_arready(M06_AXI_arready),
        .M06_AXI_arvalid(M06_AXI_arvalid),
        .M06_AXI_awaddr(M06_AXI_awaddr),
        .M06_AXI_awready(M06_AXI_awready),
        .M06_AXI_awvalid(M06_AXI_awvalid),
        .M06_AXI_bready(M06_AXI_bready),
        .M06_AXI_bresp(M06_AXI_bresp),
        .M06_AXI_bvalid(M06_AXI_bvalid),
        .M06_AXI_rdata(M06_AXI_rdata),
        .M06_AXI_rready(M06_AXI_rready),
        .M06_AXI_rresp(M06_AXI_rresp),
        .M06_AXI_rvalid(M06_AXI_rvalid),
        .M06_AXI_wdata(M06_AXI_wdata),
        .M06_AXI_wready(M06_AXI_wready),
        .M06_AXI_wstrb(M06_AXI_wstrb),
        .M06_AXI_wvalid(M06_AXI_wvalid),
        .m_axi_araddr(xbar_to_m06_couplers_ARADDR[130:120]),
        .m_axi_arprot(xbar_to_m06_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m06_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m06_couplers_AWADDR[130:120]),
        .m_axi_awprot(xbar_to_m06_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m06_couplers_AWVALID),
        .m_axi_bready(xbar_to_m06_couplers_BREADY),
        .m_axi_rready(xbar_to_m06_couplers_RREADY),
        .m_axi_wdata(xbar_to_m06_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m06_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m06_couplers_WVALID),
        .s_axi_arready(xbar_to_m06_couplers_ARREADY),
        .s_axi_awready(xbar_to_m06_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m06_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m06_couplers_BVALID),
        .s_axi_rdata(xbar_to_m06_couplers_RDATA),
        .s_axi_rresp(xbar_to_m06_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m06_couplers_RVALID),
        .s_axi_wready(xbar_to_m06_couplers_WREADY));
  system_v_proc_ss_0_0_m07_couplers_imp_1KFZB7M m07_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M07_ACLK(M07_ACLK),
        .M07_ARESETN(M07_ARESETN),
        .M07_AXI_araddr(M07_AXI_araddr),
        .M07_AXI_arready(M07_AXI_arready),
        .M07_AXI_arvalid(M07_AXI_arvalid),
        .M07_AXI_awaddr(M07_AXI_awaddr),
        .M07_AXI_awready(M07_AXI_awready),
        .M07_AXI_awvalid(M07_AXI_awvalid),
        .M07_AXI_bready(M07_AXI_bready),
        .M07_AXI_bresp(M07_AXI_bresp),
        .M07_AXI_bvalid(M07_AXI_bvalid),
        .M07_AXI_rdata(M07_AXI_rdata),
        .M07_AXI_rready(M07_AXI_rready),
        .M07_AXI_rresp(M07_AXI_rresp),
        .M07_AXI_rvalid(M07_AXI_rvalid),
        .M07_AXI_wdata(M07_AXI_wdata),
        .M07_AXI_wready(M07_AXI_wready),
        .M07_AXI_wstrb(M07_AXI_wstrb),
        .M07_AXI_wvalid(M07_AXI_wvalid),
        .m_axi_araddr(xbar_to_m07_couplers_ARADDR[150:140]),
        .m_axi_arprot(xbar_to_m07_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m07_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m07_couplers_AWADDR[150:140]),
        .m_axi_awprot(xbar_to_m07_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m07_couplers_AWVALID),
        .m_axi_bready(xbar_to_m07_couplers_BREADY),
        .m_axi_rready(xbar_to_m07_couplers_RREADY),
        .m_axi_wdata(xbar_to_m07_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m07_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m07_couplers_WVALID),
        .s_axi_arready(xbar_to_m07_couplers_ARREADY),
        .s_axi_awready(xbar_to_m07_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m07_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m07_couplers_BVALID),
        .s_axi_rdata(xbar_to_m07_couplers_RDATA),
        .s_axi_rresp(xbar_to_m07_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m07_couplers_RVALID),
        .s_axi_wready(xbar_to_m07_couplers_WREADY));
  system_v_proc_ss_0_0_m08_couplers_imp_3V6SLZ m08_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M08_ACLK(M08_ACLK),
        .M08_ARESETN(M08_ARESETN),
        .M08_AXI_araddr(M08_AXI_araddr),
        .M08_AXI_arready(M08_AXI_arready),
        .M08_AXI_arvalid(M08_AXI_arvalid),
        .M08_AXI_awaddr(M08_AXI_awaddr),
        .M08_AXI_awready(M08_AXI_awready),
        .M08_AXI_awvalid(M08_AXI_awvalid),
        .M08_AXI_bready(M08_AXI_bready),
        .M08_AXI_bresp(M08_AXI_bresp),
        .M08_AXI_bvalid(M08_AXI_bvalid),
        .M08_AXI_rdata(M08_AXI_rdata),
        .M08_AXI_rready(M08_AXI_rready),
        .M08_AXI_rresp(M08_AXI_rresp),
        .M08_AXI_rvalid(M08_AXI_rvalid),
        .M08_AXI_wdata(M08_AXI_wdata),
        .M08_AXI_wready(M08_AXI_wready),
        .M08_AXI_wstrb(M08_AXI_wstrb),
        .M08_AXI_wvalid(M08_AXI_wvalid),
        .m_axi_araddr(xbar_to_m08_couplers_ARADDR[168:160]),
        .m_axi_arprot(xbar_to_m08_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m08_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m08_couplers_AWADDR[168:160]),
        .m_axi_awprot(xbar_to_m08_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m08_couplers_AWVALID),
        .m_axi_bready(xbar_to_m08_couplers_BREADY),
        .m_axi_rready(xbar_to_m08_couplers_RREADY),
        .m_axi_wdata(xbar_to_m08_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m08_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m08_couplers_WVALID),
        .s_axi_arready(xbar_to_m08_couplers_ARREADY),
        .s_axi_awready(xbar_to_m08_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m08_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m08_couplers_BVALID),
        .s_axi_rdata(xbar_to_m08_couplers_RDATA),
        .s_axi_rresp(xbar_to_m08_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m08_couplers_RVALID),
        .s_axi_wready(xbar_to_m08_couplers_WREADY));
  system_v_proc_ss_0_0_m09_couplers_imp_12DB9JO m09_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M09_ACLK(M09_ACLK),
        .M09_ARESETN(M09_ARESETN),
        .M09_AXI_araddr(M09_AXI_araddr),
        .M09_AXI_arready(M09_AXI_arready),
        .M09_AXI_arvalid(M09_AXI_arvalid),
        .M09_AXI_awaddr(M09_AXI_awaddr),
        .M09_AXI_awready(M09_AXI_awready),
        .M09_AXI_awvalid(M09_AXI_awvalid),
        .M09_AXI_bready(M09_AXI_bready),
        .M09_AXI_bresp(M09_AXI_bresp),
        .M09_AXI_bvalid(M09_AXI_bvalid),
        .M09_AXI_rdata(M09_AXI_rdata),
        .M09_AXI_rready(M09_AXI_rready),
        .M09_AXI_rresp(M09_AXI_rresp),
        .M09_AXI_rvalid(M09_AXI_rvalid),
        .M09_AXI_wdata(M09_AXI_wdata),
        .M09_AXI_wready(M09_AXI_wready),
        .M09_AXI_wvalid(M09_AXI_wvalid),
        .m_axi_araddr(xbar_to_m09_couplers_ARADDR[188:180]),
        .m_axi_arprot(xbar_to_m09_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m09_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m09_couplers_AWADDR[188:180]),
        .m_axi_awprot(xbar_to_m09_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m09_couplers_AWVALID),
        .m_axi_bready(xbar_to_m09_couplers_BREADY),
        .m_axi_rready(xbar_to_m09_couplers_RREADY),
        .m_axi_wdata(xbar_to_m09_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m09_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m09_couplers_WVALID),
        .s_axi_arready(xbar_to_m09_couplers_ARREADY),
        .s_axi_awready(xbar_to_m09_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m09_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m09_couplers_BVALID),
        .s_axi_rdata(xbar_to_m09_couplers_RDATA),
        .s_axi_rresp(xbar_to_m09_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m09_couplers_RVALID),
        .s_axi_wready(xbar_to_m09_couplers_WREADY));
  system_v_proc_ss_0_0_m10_couplers_imp_1AQE5K m10_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M10_ACLK(M10_ACLK),
        .M10_ARESETN(M10_ARESETN),
        .M10_AXI_araddr(M10_AXI_araddr),
        .M10_AXI_arready(M10_AXI_arready),
        .M10_AXI_arvalid(M10_AXI_arvalid),
        .M10_AXI_awaddr(M10_AXI_awaddr),
        .M10_AXI_awready(M10_AXI_awready),
        .M10_AXI_awvalid(M10_AXI_awvalid),
        .M10_AXI_bready(M10_AXI_bready),
        .M10_AXI_bresp(M10_AXI_bresp),
        .M10_AXI_bvalid(M10_AXI_bvalid),
        .M10_AXI_rdata(M10_AXI_rdata),
        .M10_AXI_rready(M10_AXI_rready),
        .M10_AXI_rresp(M10_AXI_rresp),
        .M10_AXI_rvalid(M10_AXI_rvalid),
        .M10_AXI_wdata(M10_AXI_wdata),
        .M10_AXI_wready(M10_AXI_wready),
        .M10_AXI_wstrb(M10_AXI_wstrb),
        .M10_AXI_wvalid(M10_AXI_wvalid),
        .m_axi_araddr(xbar_to_m10_couplers_ARADDR[206:200]),
        .m_axi_arprot(xbar_to_m10_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m10_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m10_couplers_AWADDR[206:200]),
        .m_axi_awprot(xbar_to_m10_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m10_couplers_AWVALID),
        .m_axi_bready(xbar_to_m10_couplers_BREADY),
        .m_axi_rready(xbar_to_m10_couplers_RREADY),
        .m_axi_wdata(xbar_to_m10_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m10_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m10_couplers_WVALID),
        .s_axi_arready(xbar_to_m10_couplers_ARREADY),
        .s_axi_awready(xbar_to_m10_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m10_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m10_couplers_BVALID),
        .s_axi_rdata(xbar_to_m10_couplers_RDATA),
        .s_axi_rresp(xbar_to_m10_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m10_couplers_RVALID),
        .s_axi_wready(xbar_to_m10_couplers_WREADY));
  system_v_proc_ss_0_0_m11_couplers_imp_10CYW6J m11_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M11_ACLK(M11_ACLK),
        .M11_ARESETN(M11_ARESETN),
        .M11_AXI_araddr(M11_AXI_araddr),
        .M11_AXI_arready(M11_AXI_arready),
        .M11_AXI_arvalid(M11_AXI_arvalid),
        .M11_AXI_awaddr(M11_AXI_awaddr),
        .M11_AXI_awready(M11_AXI_awready),
        .M11_AXI_awvalid(M11_AXI_awvalid),
        .M11_AXI_bready(M11_AXI_bready),
        .M11_AXI_bresp(M11_AXI_bresp),
        .M11_AXI_bvalid(M11_AXI_bvalid),
        .M11_AXI_rdata(M11_AXI_rdata),
        .M11_AXI_rready(M11_AXI_rready),
        .M11_AXI_rresp(M11_AXI_rresp),
        .M11_AXI_rvalid(M11_AXI_rvalid),
        .M11_AXI_wdata(M11_AXI_wdata),
        .M11_AXI_wready(M11_AXI_wready),
        .M11_AXI_wstrb(M11_AXI_wstrb),
        .M11_AXI_wvalid(M11_AXI_wvalid),
        .m_axi_araddr(xbar_to_m11_couplers_ARADDR[228:220]),
        .m_axi_arprot(xbar_to_m11_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m11_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m11_couplers_AWADDR[228:220]),
        .m_axi_awprot(xbar_to_m11_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m11_couplers_AWVALID),
        .m_axi_bready(xbar_to_m11_couplers_BREADY),
        .m_axi_rready(xbar_to_m11_couplers_RREADY),
        .m_axi_wdata(xbar_to_m11_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m11_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m11_couplers_WVALID),
        .s_axi_arready(xbar_to_m11_couplers_ARREADY),
        .s_axi_awready(xbar_to_m11_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m11_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m11_couplers_BVALID),
        .s_axi_rdata(xbar_to_m11_couplers_RDATA),
        .s_axi_rresp(xbar_to_m11_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m11_couplers_RVALID),
        .s_axi_wready(xbar_to_m11_couplers_WREADY));
  (* X_CORE_INFO = "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,M00_AXI_araddr}),
        .m_axi_arprot({xbar_to_m11_couplers_ARPROT,xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,M00_AXI_arready}),
        .m_axi_arvalid({xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,M00_AXI_arvalid}),
        .m_axi_awaddr({xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,M00_AXI_awaddr}),
        .m_axi_awprot({xbar_to_m11_couplers_AWPROT,xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,M00_AXI_awready}),
        .m_axi_awvalid({xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,M00_AXI_awvalid}),
        .m_axi_bready({xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,M00_AXI_bready}),
        .m_axi_bresp({xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,M00_AXI_bresp}),
        .m_axi_bvalid({xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,M00_AXI_bvalid}),
        .m_axi_rdata({xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,M00_AXI_rdata}),
        .m_axi_rready({xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,M00_AXI_rready}),
        .m_axi_rresp({xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,M00_AXI_rresp}),
        .m_axi_rvalid({xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,M00_AXI_rvalid}),
        .m_axi_wdata({xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,M00_AXI_wdata}),
        .m_axi_wready({xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,M00_AXI_wready}),
        .m_axi_wstrb({xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,M00_AXI_wvalid}),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

module system_v_proc_ss_0_0_bd_2d50_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [255:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [31:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [127:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [3:0]S02_AXI_awregion;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [0:0]M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [0:0]M00_AXI_awvalid;
  wire [1:0]M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [255:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [255:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [31:0]M00_AXI_wstrb;
  wire [0:0]M00_AXI_wvalid;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [127:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [7:0]S01_AXI_awlen;
  wire [2:0]S01_AXI_awprot;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [63:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [7:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [31:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [1:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [31:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [1:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [31:0]S02_AXI_rdata;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [3:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire s01_couplers_to_xbar_BVALID;
  wire [255:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire s01_couplers_to_xbar_WREADY;
  wire [31:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire s02_couplers_to_xbar_BVALID;
  wire [767:512]s02_couplers_to_xbar_RDATA;
  wire s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire s02_couplers_to_xbar_RVALID;
  wire [255:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire s02_couplers_to_xbar_WREADY;
  wire [31:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [1:1]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [0:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [511:256]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [1:1]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [3:2]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [1:1]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [0:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  system_v_proc_ss_0_0_s00_couplers_imp_1VGAQIZ s00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .m_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .m_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .m_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .m_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID));
  system_v_proc_ss_0_0_s01_couplers_imp_WE1KEG s01_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .m_axi_awaddr(s01_couplers_to_xbar_AWADDR),
        .m_axi_awburst(s01_couplers_to_xbar_AWBURST),
        .m_axi_awcache(s01_couplers_to_xbar_AWCACHE),
        .m_axi_awlen(s01_couplers_to_xbar_AWLEN),
        .m_axi_awlock(s01_couplers_to_xbar_AWLOCK),
        .m_axi_awprot(s01_couplers_to_xbar_AWPROT),
        .m_axi_awqos(s01_couplers_to_xbar_AWQOS),
        .m_axi_awsize(s01_couplers_to_xbar_AWSIZE),
        .m_axi_awvalid(s01_couplers_to_xbar_AWVALID),
        .m_axi_bready(s01_couplers_to_xbar_BREADY),
        .m_axi_wdata(s01_couplers_to_xbar_WDATA),
        .m_axi_wlast(s01_couplers_to_xbar_WLAST),
        .m_axi_wstrb(s01_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s01_couplers_to_xbar_WVALID),
        .s_axi_awready(s01_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s01_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s01_couplers_to_xbar_BVALID),
        .s_axi_wready(s01_couplers_to_xbar_WREADY));
  system_v_proc_ss_0_0_s02_couplers_imp_AV1SZW s02_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock[0]),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arregion(S02_AXI_arregion),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock[0]),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awregion(S02_AXI_awregion),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .m_axi_araddr(s02_couplers_to_xbar_ARADDR),
        .m_axi_arburst(s02_couplers_to_xbar_ARBURST),
        .m_axi_arcache(s02_couplers_to_xbar_ARCACHE),
        .m_axi_arlen(s02_couplers_to_xbar_ARLEN),
        .m_axi_arlock(s02_couplers_to_xbar_ARLOCK),
        .m_axi_arprot(s02_couplers_to_xbar_ARPROT),
        .m_axi_arqos(s02_couplers_to_xbar_ARQOS),
        .m_axi_arsize(s02_couplers_to_xbar_ARSIZE),
        .m_axi_arvalid(s02_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s02_couplers_to_xbar_AWADDR),
        .m_axi_awburst(s02_couplers_to_xbar_AWBURST),
        .m_axi_awcache(s02_couplers_to_xbar_AWCACHE),
        .m_axi_awlen(s02_couplers_to_xbar_AWLEN),
        .m_axi_awlock(s02_couplers_to_xbar_AWLOCK),
        .m_axi_awprot(s02_couplers_to_xbar_AWPROT),
        .m_axi_awqos(s02_couplers_to_xbar_AWQOS),
        .m_axi_awsize(s02_couplers_to_xbar_AWSIZE),
        .m_axi_awvalid(s02_couplers_to_xbar_AWVALID),
        .m_axi_bready(s02_couplers_to_xbar_BREADY),
        .m_axi_rready(s02_couplers_to_xbar_RREADY),
        .m_axi_wdata(s02_couplers_to_xbar_WDATA),
        .m_axi_wlast(s02_couplers_to_xbar_WLAST),
        .m_axi_wstrb(s02_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s02_couplers_to_xbar_WVALID),
        .s_axi_arready(s02_couplers_to_xbar_ARREADY),
        .s_axi_awready(s02_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s02_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s02_couplers_to_xbar_BVALID),
        .s_axi_rdata(s02_couplers_to_xbar_RDATA),
        .s_axi_rlast(s02_couplers_to_xbar_RLAST),
        .s_axi_rresp(s02_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s02_couplers_to_xbar_RVALID),
        .s_axi_wready(s02_couplers_to_xbar_WREADY));
  (* X_CORE_INFO = "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_xbar_2 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_arid(M00_AXI_arid),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(M00_AXI_arregion),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awid(M00_AXI_awid),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(M00_AXI_awregion),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bid(M00_AXI_bid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rid(M00_AXI_rid),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[1],s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,1'b1,1'b0,1'b0,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b1}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bid(NLW_xbar_s_axi_bid_UNCONNECTED[5:0]),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[511:256],s00_couplers_to_xbar_RDATA}),
        .s_axi_rid(NLW_xbar_s_axi_rid_UNCONNECTED[5:0]),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[1],s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[3:2],s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[1],s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

(* X_CORE_INFO = "axi_vdma,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_axi_vdma_0
   (s_axi_lite_aclk,
    m_axi_mm2s_aclk,
    m_axis_mm2s_aclk,
    m_axi_s2mm_aclk,
    s_axis_s2mm_aclk,
    axi_resetn,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_awaddr,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_wdata,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_araddr,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    mm2s_frame_ptr_out,
    s2mm_frame_ptr_out,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arprot,
    m_axi_mm2s_arcache,
    m_axi_mm2s_arvalid,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    m_axi_mm2s_rresp,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rready,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tuser,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awprot,
    m_axi_s2mm_awcache,
    m_axi_s2mm_awvalid,
    m_axi_s2mm_awready,
    m_axi_s2mm_wdata,
    m_axi_s2mm_wstrb,
    m_axi_s2mm_wlast,
    m_axi_s2mm_wvalid,
    m_axi_s2mm_wready,
    m_axi_s2mm_bresp,
    m_axi_s2mm_bvalid,
    m_axi_s2mm_bready,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tuser,
    s_axis_s2mm_tvalid,
    s_axis_s2mm_tready,
    s_axis_s2mm_tlast,
    mm2s_introut,
    s2mm_introut);
  input s_axi_lite_aclk;
  input m_axi_mm2s_aclk;
  input m_axis_mm2s_aclk;
  input m_axi_s2mm_aclk;
  input s_axis_s2mm_aclk;
  input axi_resetn;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [8:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  input [31:0]s_axi_lite_wdata;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  input [8:0]s_axi_lite_araddr;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output [5:0]mm2s_frame_ptr_out;
  output [5:0]s2mm_frame_ptr_out;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [127:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output [47:0]m_axis_mm2s_tdata;
  output [5:0]m_axis_mm2s_tkeep;
  output [0:0]m_axis_mm2s_tuser;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  output m_axis_mm2s_tlast;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [63:0]m_axi_s2mm_wdata;
  output [7:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  input [47:0]s_axis_s2mm_tdata;
  input [5:0]s_axis_s2mm_tkeep;
  input [0:0]s_axis_s2mm_tuser;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input s_axis_s2mm_tlast;
  output mm2s_introut;
  output s2mm_introut;


endmodule

(* X_CORE_INFO = "bd_2d50_csc_0_v_csc,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_csc_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [8:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [8:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_deint_cc_0
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [1:0]s_axis_tuser;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [1:0]m_axis_tuser;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2d50_deint_concat_0,xlconcat_v2_1_1_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_deint_concat_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "bd_2d50_deint_fid_tap_0,xlslice_v1_0_1_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* X_CORE_INFO = "top_bd_2d50_deint_ss_0,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_deint_ss_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2d50_deint_tuser_tap_0,xlslice_v1_0_1_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* X_CORE_INFO = "bd_2d50_dint_0_v_deinterlacer,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_dint_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWREGION,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARREGION,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RRESP,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST,
    even);
  input [6:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_gmem_AWADDR;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWREGION;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [31:0]m_axi_gmem_WDATA;
  output [3:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  input [1:0]m_axi_gmem_BRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  output [31:0]m_axi_gmem_ARADDR;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARREGION;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  input [31:0]m_axi_gmem_RDATA;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input s_axis_video_TUSER;
  input s_axis_video_TLAST;
  input s_axis_video_TID;
  input s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output m_axis_video_TUSER;
  output m_axis_video_TLAST;
  output m_axis_video_TID;
  output m_axis_video_TDEST;
  input even;


endmodule

(* X_CORE_INFO = "bd_2d50_hcr_0_v_hcresampler,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_hcr_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [10:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [10:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "bd_2d50_hsc_0_v_hscaler,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_hsc_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [13:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [13:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "top_bd_2d50_input_size_set_0,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_input_size_set_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "bd_2d50_ltr_0_v_letterbox,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_ltr_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [6:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m00_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m01_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m02_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m04_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m05_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m06_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m07_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_m08_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [2:0]m_axis_tuser;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2d50_proc_ss_ip_aresetn_0,xlslice_v1_0_1_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* X_CORE_INFO = "axi_gpio,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_reset_sel_axi_mm_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]gpio_io_i;
  output [0:0]gpio_io_o;
  output [0:0]gpio_io_t;


endmodule

(* X_CORE_INFO = "axi_gpio,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_reset_sel_axis_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [1:0]gpio_io_i;
  output [1:0]gpio_io_o;
  output [1:0]gpio_io_t;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_rst_axi_mm_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_rst_axis_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "bd_2d50_vcr_i_0_v_vcresampler,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_vcr_i_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [10:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [10:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "bd_2d50_vcr_o_0_v_vcresampler,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_vcr_o_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [10:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [10:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "top_bd_2d50_vdma_pad_0,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_vdma_pad_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [5:0]m_axis_tuser;


endmodule

(* X_CORE_INFO = "top_bd_2d50_vdma_trunc_0,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_vdma_trunc_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tkeep;
  input s_axis_tlast;
  input [5:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tkeep;
  output m_axis_tlast;
  output [5:0]m_axis_tuser;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2d50_vid_in_aresetn_0,xlslice_v1_0_1_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

module system_v_proc_ss_0_0_bd_2d50_video_router_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tdest,
    M00_AXIS_tid,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tstrb,
    M00_AXIS_tuser,
    M00_AXIS_tvalid,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tdata,
    M01_AXIS_tdest,
    M01_AXIS_tid,
    M01_AXIS_tkeep,
    M01_AXIS_tlast,
    M01_AXIS_tready,
    M01_AXIS_tstrb,
    M01_AXIS_tuser,
    M01_AXIS_tvalid,
    M02_AXIS_ACLK,
    M02_AXIS_ARESETN,
    M02_AXIS_tdata,
    M02_AXIS_tdest,
    M02_AXIS_tid,
    M02_AXIS_tkeep,
    M02_AXIS_tlast,
    M02_AXIS_tready,
    M02_AXIS_tstrb,
    M02_AXIS_tuser,
    M02_AXIS_tvalid,
    M03_AXIS_ACLK,
    M03_AXIS_ARESETN,
    M03_AXIS_tdata,
    M03_AXIS_tkeep,
    M03_AXIS_tlast,
    M03_AXIS_tready,
    M03_AXIS_tuser,
    M03_AXIS_tvalid,
    M04_AXIS_ACLK,
    M04_AXIS_ARESETN,
    M04_AXIS_tdata,
    M04_AXIS_tdest,
    M04_AXIS_tid,
    M04_AXIS_tkeep,
    M04_AXIS_tlast,
    M04_AXIS_tready,
    M04_AXIS_tstrb,
    M04_AXIS_tuser,
    M04_AXIS_tvalid,
    M05_AXIS_ACLK,
    M05_AXIS_ARESETN,
    M05_AXIS_tdata,
    M05_AXIS_tdest,
    M05_AXIS_tid,
    M05_AXIS_tkeep,
    M05_AXIS_tlast,
    M05_AXIS_tready,
    M05_AXIS_tstrb,
    M05_AXIS_tuser,
    M05_AXIS_tvalid,
    M06_AXIS_ACLK,
    M06_AXIS_ARESETN,
    M06_AXIS_tdata,
    M06_AXIS_tdest,
    M06_AXIS_tid,
    M06_AXIS_tkeep,
    M06_AXIS_tlast,
    M06_AXIS_tready,
    M06_AXIS_tstrb,
    M06_AXIS_tuser,
    M06_AXIS_tvalid,
    M07_AXIS_ACLK,
    M07_AXIS_ARESETN,
    M07_AXIS_tdata,
    M07_AXIS_tdest,
    M07_AXIS_tid,
    M07_AXIS_tkeep,
    M07_AXIS_tlast,
    M07_AXIS_tready,
    M07_AXIS_tstrb,
    M07_AXIS_tuser,
    M07_AXIS_tvalid,
    M08_AXIS_ACLK,
    M08_AXIS_ARESETN,
    M08_AXIS_tdata,
    M08_AXIS_tdest,
    M08_AXIS_tid,
    M08_AXIS_tkeep,
    M08_AXIS_tlast,
    M08_AXIS_tready,
    M08_AXIS_tstrb,
    M08_AXIS_tuser,
    M08_AXIS_tvalid,
    M09_AXIS_ACLK,
    M09_AXIS_ARESETN,
    M09_AXIS_tdata,
    M09_AXIS_tdest,
    M09_AXIS_tid,
    M09_AXIS_tkeep,
    M09_AXIS_tlast,
    M09_AXIS_tready,
    M09_AXIS_tstrb,
    M09_AXIS_tuser,
    M09_AXIS_tvalid,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tid,
    S00_AXIS_tkeep,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tstrb,
    S00_AXIS_tuser,
    S00_AXIS_tvalid,
    S01_AXIS_ACLK,
    S01_AXIS_ARESETN,
    S01_AXIS_tdata,
    S01_AXIS_tdest,
    S01_AXIS_tid,
    S01_AXIS_tkeep,
    S01_AXIS_tlast,
    S01_AXIS_tready,
    S01_AXIS_tstrb,
    S01_AXIS_tuser,
    S01_AXIS_tvalid,
    S02_AXIS_ACLK,
    S02_AXIS_ARESETN,
    S02_AXIS_tdata,
    S02_AXIS_tdest,
    S02_AXIS_tid,
    S02_AXIS_tkeep,
    S02_AXIS_tlast,
    S02_AXIS_tready,
    S02_AXIS_tstrb,
    S02_AXIS_tuser,
    S02_AXIS_tvalid,
    S03_AXIS_ACLK,
    S03_AXIS_ARESETN,
    S03_AXIS_tdata,
    S03_AXIS_tkeep,
    S03_AXIS_tlast,
    S03_AXIS_tready,
    S03_AXIS_tuser,
    S03_AXIS_tvalid,
    S04_AXIS_ACLK,
    S04_AXIS_ARESETN,
    S04_AXIS_tdata,
    S04_AXIS_tdest,
    S04_AXIS_tid,
    S04_AXIS_tkeep,
    S04_AXIS_tlast,
    S04_AXIS_tready,
    S04_AXIS_tstrb,
    S04_AXIS_tuser,
    S04_AXIS_tvalid,
    S05_AXIS_ACLK,
    S05_AXIS_ARESETN,
    S05_AXIS_tdata,
    S05_AXIS_tdest,
    S05_AXIS_tid,
    S05_AXIS_tkeep,
    S05_AXIS_tlast,
    S05_AXIS_tready,
    S05_AXIS_tstrb,
    S05_AXIS_tuser,
    S05_AXIS_tvalid,
    S06_AXIS_ACLK,
    S06_AXIS_ARESETN,
    S06_AXIS_tdata,
    S06_AXIS_tdest,
    S06_AXIS_tid,
    S06_AXIS_tkeep,
    S06_AXIS_tlast,
    S06_AXIS_tready,
    S06_AXIS_tstrb,
    S06_AXIS_tuser,
    S06_AXIS_tvalid,
    S07_AXIS_ACLK,
    S07_AXIS_ARESETN,
    S07_AXIS_tdata,
    S07_AXIS_tdest,
    S07_AXIS_tid,
    S07_AXIS_tkeep,
    S07_AXIS_tlast,
    S07_AXIS_tready,
    S07_AXIS_tstrb,
    S07_AXIS_tuser,
    S07_AXIS_tvalid,
    S08_AXIS_ACLK,
    S08_AXIS_ARESETN,
    S08_AXIS_tdata,
    S08_AXIS_tdest,
    S08_AXIS_tid,
    S08_AXIS_tkeep,
    S08_AXIS_tlast,
    S08_AXIS_tready,
    S08_AXIS_tstrb,
    S08_AXIS_tuser,
    S08_AXIS_tvalid,
    S09_AXIS_ACLK,
    S09_AXIS_ARESETN,
    S09_AXIS_tdata,
    S09_AXIS_tdest,
    S09_AXIS_tid,
    S09_AXIS_tkeep,
    S09_AXIS_tlast,
    S09_AXIS_tready,
    S09_AXIS_tstrb,
    S09_AXIS_tuser,
    S09_AXIS_tvalid,
    S_AXI_CTRL_ACLK,
    S_AXI_CTRL_ARESETN,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [23:0]M00_AXIS_tdata;
  output [0:0]M00_AXIS_tdest;
  output [0:0]M00_AXIS_tid;
  output [2:0]M00_AXIS_tkeep;
  output M00_AXIS_tlast;
  input M00_AXIS_tready;
  output [2:0]M00_AXIS_tstrb;
  output [2:0]M00_AXIS_tuser;
  output M00_AXIS_tvalid;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  output [23:0]M01_AXIS_tdata;
  output [0:0]M01_AXIS_tdest;
  output [0:0]M01_AXIS_tid;
  output [2:0]M01_AXIS_tkeep;
  output M01_AXIS_tlast;
  input M01_AXIS_tready;
  output [2:0]M01_AXIS_tstrb;
  output [2:0]M01_AXIS_tuser;
  output M01_AXIS_tvalid;
  input M02_AXIS_ACLK;
  input M02_AXIS_ARESETN;
  output [23:0]M02_AXIS_tdata;
  output [0:0]M02_AXIS_tdest;
  output [0:0]M02_AXIS_tid;
  output [2:0]M02_AXIS_tkeep;
  output M02_AXIS_tlast;
  input M02_AXIS_tready;
  output [2:0]M02_AXIS_tstrb;
  output [2:0]M02_AXIS_tuser;
  output M02_AXIS_tvalid;
  input M03_AXIS_ACLK;
  input M03_AXIS_ARESETN;
  output [47:0]M03_AXIS_tdata;
  output [5:0]M03_AXIS_tkeep;
  output M03_AXIS_tlast;
  input M03_AXIS_tready;
  output [5:0]M03_AXIS_tuser;
  output M03_AXIS_tvalid;
  input M04_AXIS_ACLK;
  input M04_AXIS_ARESETN;
  output [23:0]M04_AXIS_tdata;
  output [0:0]M04_AXIS_tdest;
  output [0:0]M04_AXIS_tid;
  output [2:0]M04_AXIS_tkeep;
  output M04_AXIS_tlast;
  input M04_AXIS_tready;
  output [2:0]M04_AXIS_tstrb;
  output [2:0]M04_AXIS_tuser;
  output M04_AXIS_tvalid;
  input M05_AXIS_ACLK;
  input M05_AXIS_ARESETN;
  output [23:0]M05_AXIS_tdata;
  output [0:0]M05_AXIS_tdest;
  output [0:0]M05_AXIS_tid;
  output [2:0]M05_AXIS_tkeep;
  output [0:0]M05_AXIS_tlast;
  input M05_AXIS_tready;
  output [2:0]M05_AXIS_tstrb;
  output [2:0]M05_AXIS_tuser;
  output M05_AXIS_tvalid;
  input M06_AXIS_ACLK;
  input M06_AXIS_ARESETN;
  output [23:0]M06_AXIS_tdata;
  output [0:0]M06_AXIS_tdest;
  output [0:0]M06_AXIS_tid;
  output [2:0]M06_AXIS_tkeep;
  output [0:0]M06_AXIS_tlast;
  input M06_AXIS_tready;
  output [2:0]M06_AXIS_tstrb;
  output [2:0]M06_AXIS_tuser;
  output M06_AXIS_tvalid;
  input M07_AXIS_ACLK;
  input M07_AXIS_ARESETN;
  output [23:0]M07_AXIS_tdata;
  output [0:0]M07_AXIS_tdest;
  output [0:0]M07_AXIS_tid;
  output [2:0]M07_AXIS_tkeep;
  output [0:0]M07_AXIS_tlast;
  input M07_AXIS_tready;
  output [2:0]M07_AXIS_tstrb;
  output [2:0]M07_AXIS_tuser;
  output M07_AXIS_tvalid;
  input M08_AXIS_ACLK;
  input M08_AXIS_ARESETN;
  output [23:0]M08_AXIS_tdata;
  output [0:0]M08_AXIS_tdest;
  output [0:0]M08_AXIS_tid;
  output [2:0]M08_AXIS_tkeep;
  output M08_AXIS_tlast;
  input M08_AXIS_tready;
  output [2:0]M08_AXIS_tstrb;
  output [2:0]M08_AXIS_tuser;
  output M08_AXIS_tvalid;
  input M09_AXIS_ACLK;
  input M09_AXIS_ARESETN;
  output [23:0]M09_AXIS_tdata;
  output [0:0]M09_AXIS_tdest;
  output [0:0]M09_AXIS_tid;
  output [2:0]M09_AXIS_tkeep;
  output M09_AXIS_tlast;
  input M09_AXIS_tready;
  output [2:0]M09_AXIS_tstrb;
  output [2:0]M09_AXIS_tuser;
  output M09_AXIS_tvalid;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [23:0]S00_AXIS_tdata;
  input [0:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tid;
  input [2:0]S00_AXIS_tkeep;
  input [0:0]S00_AXIS_tlast;
  output [0:0]S00_AXIS_tready;
  input [2:0]S00_AXIS_tstrb;
  input [0:0]S00_AXIS_tuser;
  input [0:0]S00_AXIS_tvalid;
  input S01_AXIS_ACLK;
  input S01_AXIS_ARESETN;
  input [23:0]S01_AXIS_tdata;
  input [0:0]S01_AXIS_tdest;
  input [0:0]S01_AXIS_tid;
  input [2:0]S01_AXIS_tkeep;
  input [0:0]S01_AXIS_tlast;
  output [0:0]S01_AXIS_tready;
  input [2:0]S01_AXIS_tstrb;
  input [0:0]S01_AXIS_tuser;
  input [0:0]S01_AXIS_tvalid;
  input S02_AXIS_ACLK;
  input S02_AXIS_ARESETN;
  input [23:0]S02_AXIS_tdata;
  input [0:0]S02_AXIS_tdest;
  input [0:0]S02_AXIS_tid;
  input [2:0]S02_AXIS_tkeep;
  input [0:0]S02_AXIS_tlast;
  output [0:0]S02_AXIS_tready;
  input [2:0]S02_AXIS_tstrb;
  input [0:0]S02_AXIS_tuser;
  input [0:0]S02_AXIS_tvalid;
  input S03_AXIS_ACLK;
  input S03_AXIS_ARESETN;
  input [47:0]S03_AXIS_tdata;
  input [5:0]S03_AXIS_tkeep;
  input S03_AXIS_tlast;
  output S03_AXIS_tready;
  input [5:0]S03_AXIS_tuser;
  input S03_AXIS_tvalid;
  input S04_AXIS_ACLK;
  input S04_AXIS_ARESETN;
  input [23:0]S04_AXIS_tdata;
  input [0:0]S04_AXIS_tdest;
  input [0:0]S04_AXIS_tid;
  input [2:0]S04_AXIS_tkeep;
  input [0:0]S04_AXIS_tlast;
  output [0:0]S04_AXIS_tready;
  input [2:0]S04_AXIS_tstrb;
  input [0:0]S04_AXIS_tuser;
  input [0:0]S04_AXIS_tvalid;
  input S05_AXIS_ACLK;
  input S05_AXIS_ARESETN;
  input [23:0]S05_AXIS_tdata;
  input [0:0]S05_AXIS_tdest;
  input [0:0]S05_AXIS_tid;
  input [2:0]S05_AXIS_tkeep;
  input [0:0]S05_AXIS_tlast;
  output S05_AXIS_tready;
  input [2:0]S05_AXIS_tstrb;
  input [0:0]S05_AXIS_tuser;
  input S05_AXIS_tvalid;
  input S06_AXIS_ACLK;
  input S06_AXIS_ARESETN;
  input [23:0]S06_AXIS_tdata;
  input [0:0]S06_AXIS_tdest;
  input [0:0]S06_AXIS_tid;
  input [2:0]S06_AXIS_tkeep;
  input [0:0]S06_AXIS_tlast;
  output S06_AXIS_tready;
  input [2:0]S06_AXIS_tstrb;
  input [0:0]S06_AXIS_tuser;
  input S06_AXIS_tvalid;
  input S07_AXIS_ACLK;
  input S07_AXIS_ARESETN;
  input [23:0]S07_AXIS_tdata;
  input [0:0]S07_AXIS_tdest;
  input [0:0]S07_AXIS_tid;
  input [2:0]S07_AXIS_tkeep;
  input [0:0]S07_AXIS_tlast;
  output S07_AXIS_tready;
  input [2:0]S07_AXIS_tstrb;
  input [0:0]S07_AXIS_tuser;
  input S07_AXIS_tvalid;
  input S08_AXIS_ACLK;
  input S08_AXIS_ARESETN;
  input [23:0]S08_AXIS_tdata;
  input [0:0]S08_AXIS_tdest;
  input [0:0]S08_AXIS_tid;
  input [2:0]S08_AXIS_tkeep;
  input [0:0]S08_AXIS_tlast;
  output [0:0]S08_AXIS_tready;
  input [2:0]S08_AXIS_tstrb;
  input [0:0]S08_AXIS_tuser;
  input [0:0]S08_AXIS_tvalid;
  input S09_AXIS_ACLK;
  input S09_AXIS_ARESETN;
  input [23:0]S09_AXIS_tdata;
  input S09_AXIS_tdest;
  input S09_AXIS_tid;
  input [2:0]S09_AXIS_tkeep;
  input S09_AXIS_tlast;
  output S09_AXIS_tready;
  input [2:0]S09_AXIS_tstrb;
  input S09_AXIS_tuser;
  input S09_AXIS_tvalid;
  input S_AXI_CTRL_ACLK;
  input S_AXI_CTRL_ARESETN;
  input [19:0]S_AXI_CTRL_araddr;
  output S_AXI_CTRL_arready;
  input S_AXI_CTRL_arvalid;
  input [19:0]S_AXI_CTRL_awaddr;
  output S_AXI_CTRL_awready;
  input S_AXI_CTRL_awvalid;
  input S_AXI_CTRL_bready;
  output [1:0]S_AXI_CTRL_bresp;
  output S_AXI_CTRL_bvalid;
  output [31:0]S_AXI_CTRL_rdata;
  input S_AXI_CTRL_rready;
  output [1:0]S_AXI_CTRL_rresp;
  output S_AXI_CTRL_rvalid;
  input [31:0]S_AXI_CTRL_wdata;
  output S_AXI_CTRL_wready;
  input S_AXI_CTRL_wvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_AXIS_ACLK;
  wire M00_AXIS_ARESETN;
  wire [23:0]M00_AXIS_tdata;
  wire [0:0]M00_AXIS_tdest;
  wire [0:0]M00_AXIS_tid;
  wire [2:0]M00_AXIS_tkeep;
  wire M00_AXIS_tlast;
  wire M00_AXIS_tready;
  wire [2:0]M00_AXIS_tstrb;
  wire [2:0]M00_AXIS_tuser;
  wire M00_AXIS_tvalid;
  wire M01_AXIS_ACLK;
  wire M01_AXIS_ARESETN;
  wire [23:0]M01_AXIS_tdata;
  wire [0:0]M01_AXIS_tdest;
  wire [0:0]M01_AXIS_tid;
  wire [2:0]M01_AXIS_tkeep;
  wire M01_AXIS_tlast;
  wire M01_AXIS_tready;
  wire [2:0]M01_AXIS_tstrb;
  wire [2:0]M01_AXIS_tuser;
  wire M01_AXIS_tvalid;
  wire M02_AXIS_ACLK;
  wire M02_AXIS_ARESETN;
  wire [23:0]M02_AXIS_tdata;
  wire [0:0]M02_AXIS_tdest;
  wire [0:0]M02_AXIS_tid;
  wire [2:0]M02_AXIS_tkeep;
  wire M02_AXIS_tlast;
  wire M02_AXIS_tready;
  wire [2:0]M02_AXIS_tstrb;
  wire [2:0]M02_AXIS_tuser;
  wire M02_AXIS_tvalid;
  wire M03_AXIS_ACLK;
  wire M03_AXIS_ARESETN;
  wire [47:0]M03_AXIS_tdata;
  wire [5:0]M03_AXIS_tkeep;
  wire M03_AXIS_tlast;
  wire M03_AXIS_tready;
  wire [5:0]M03_AXIS_tuser;
  wire M03_AXIS_tvalid;
  wire M04_AXIS_ACLK;
  wire M04_AXIS_ARESETN;
  wire [23:0]M04_AXIS_tdata;
  wire [0:0]M04_AXIS_tdest;
  wire [0:0]M04_AXIS_tid;
  wire [2:0]M04_AXIS_tkeep;
  wire M04_AXIS_tlast;
  wire M04_AXIS_tready;
  wire [2:0]M04_AXIS_tstrb;
  wire [2:0]M04_AXIS_tuser;
  wire M04_AXIS_tvalid;
  wire M05_AXIS_ACLK;
  wire M05_AXIS_ARESETN;
  wire [23:0]M05_AXIS_tdata;
  wire [0:0]M05_AXIS_tdest;
  wire [0:0]M05_AXIS_tid;
  wire [2:0]M05_AXIS_tkeep;
  wire [0:0]M05_AXIS_tlast;
  wire M05_AXIS_tready;
  wire [2:0]M05_AXIS_tstrb;
  wire [2:0]M05_AXIS_tuser;
  wire M05_AXIS_tvalid;
  wire M06_AXIS_ACLK;
  wire M06_AXIS_ARESETN;
  wire [23:0]M06_AXIS_tdata;
  wire [0:0]M06_AXIS_tdest;
  wire [0:0]M06_AXIS_tid;
  wire [2:0]M06_AXIS_tkeep;
  wire [0:0]M06_AXIS_tlast;
  wire M06_AXIS_tready;
  wire [2:0]M06_AXIS_tstrb;
  wire [2:0]M06_AXIS_tuser;
  wire M06_AXIS_tvalid;
  wire M07_AXIS_ACLK;
  wire M07_AXIS_ARESETN;
  wire [23:0]M07_AXIS_tdata;
  wire [0:0]M07_AXIS_tdest;
  wire [0:0]M07_AXIS_tid;
  wire [2:0]M07_AXIS_tkeep;
  wire [0:0]M07_AXIS_tlast;
  wire M07_AXIS_tready;
  wire [2:0]M07_AXIS_tstrb;
  wire [2:0]M07_AXIS_tuser;
  wire M07_AXIS_tvalid;
  wire M08_AXIS_ACLK;
  wire M08_AXIS_ARESETN;
  wire [23:0]M08_AXIS_tdata;
  wire [0:0]M08_AXIS_tdest;
  wire [0:0]M08_AXIS_tid;
  wire [2:0]M08_AXIS_tkeep;
  wire M08_AXIS_tlast;
  wire M08_AXIS_tready;
  wire [2:0]M08_AXIS_tstrb;
  wire [2:0]M08_AXIS_tuser;
  wire M08_AXIS_tvalid;
  wire [23:0]M09_AXIS_tdata;
  wire [0:0]M09_AXIS_tdest;
  wire [0:0]M09_AXIS_tid;
  wire [2:0]M09_AXIS_tkeep;
  wire M09_AXIS_tlast;
  wire M09_AXIS_tready;
  wire [2:0]M09_AXIS_tstrb;
  wire [2:0]M09_AXIS_tuser;
  wire M09_AXIS_tvalid;
  wire [23:0]S00_AXIS_tdata;
  wire [0:0]S00_AXIS_tdest;
  wire [0:0]S00_AXIS_tid;
  wire [2:0]S00_AXIS_tkeep;
  wire [0:0]S00_AXIS_tlast;
  wire [0:0]S00_AXIS_tready;
  wire [2:0]S00_AXIS_tstrb;
  wire [0:0]S00_AXIS_tuser;
  wire [0:0]S00_AXIS_tvalid;
  wire [23:0]S01_AXIS_tdata;
  wire [0:0]S01_AXIS_tdest;
  wire [0:0]S01_AXIS_tid;
  wire [2:0]S01_AXIS_tkeep;
  wire [0:0]S01_AXIS_tlast;
  wire [0:0]S01_AXIS_tready;
  wire [2:0]S01_AXIS_tstrb;
  wire [0:0]S01_AXIS_tuser;
  wire [0:0]S01_AXIS_tvalid;
  wire [23:0]S02_AXIS_tdata;
  wire [0:0]S02_AXIS_tdest;
  wire [0:0]S02_AXIS_tid;
  wire [2:0]S02_AXIS_tkeep;
  wire [0:0]S02_AXIS_tlast;
  wire [0:0]S02_AXIS_tready;
  wire [2:0]S02_AXIS_tstrb;
  wire [0:0]S02_AXIS_tuser;
  wire [0:0]S02_AXIS_tvalid;
  wire S03_AXIS_ACLK;
  wire S03_AXIS_ARESETN;
  wire [47:0]S03_AXIS_tdata;
  wire [5:0]S03_AXIS_tkeep;
  wire S03_AXIS_tlast;
  wire S03_AXIS_tready;
  wire [5:0]S03_AXIS_tuser;
  wire S03_AXIS_tvalid;
  wire [23:0]S04_AXIS_tdata;
  wire [0:0]S04_AXIS_tdest;
  wire [0:0]S04_AXIS_tid;
  wire [2:0]S04_AXIS_tkeep;
  wire [0:0]S04_AXIS_tlast;
  wire [0:0]S04_AXIS_tready;
  wire [2:0]S04_AXIS_tstrb;
  wire [0:0]S04_AXIS_tuser;
  wire [0:0]S04_AXIS_tvalid;
  wire [23:0]S05_AXIS_tdata;
  wire [0:0]S05_AXIS_tdest;
  wire [0:0]S05_AXIS_tid;
  wire [2:0]S05_AXIS_tkeep;
  wire [0:0]S05_AXIS_tlast;
  wire S05_AXIS_tready;
  wire [2:0]S05_AXIS_tstrb;
  wire [0:0]S05_AXIS_tuser;
  wire S05_AXIS_tvalid;
  wire [23:0]S06_AXIS_tdata;
  wire [0:0]S06_AXIS_tdest;
  wire [0:0]S06_AXIS_tid;
  wire [2:0]S06_AXIS_tkeep;
  wire [0:0]S06_AXIS_tlast;
  wire S06_AXIS_tready;
  wire [2:0]S06_AXIS_tstrb;
  wire [0:0]S06_AXIS_tuser;
  wire S06_AXIS_tvalid;
  wire [23:0]S07_AXIS_tdata;
  wire [0:0]S07_AXIS_tdest;
  wire [0:0]S07_AXIS_tid;
  wire [2:0]S07_AXIS_tkeep;
  wire [0:0]S07_AXIS_tlast;
  wire S07_AXIS_tready;
  wire [2:0]S07_AXIS_tstrb;
  wire [0:0]S07_AXIS_tuser;
  wire S07_AXIS_tvalid;
  wire [23:0]S08_AXIS_tdata;
  wire [0:0]S08_AXIS_tdest;
  wire [0:0]S08_AXIS_tid;
  wire [2:0]S08_AXIS_tkeep;
  wire [0:0]S08_AXIS_tlast;
  wire [0:0]S08_AXIS_tready;
  wire [2:0]S08_AXIS_tstrb;
  wire [0:0]S08_AXIS_tuser;
  wire [0:0]S08_AXIS_tvalid;
  wire S09_AXIS_ACLK;
  wire S09_AXIS_ARESETN;
  wire [23:0]S09_AXIS_tdata;
  wire S09_AXIS_tdest;
  wire S09_AXIS_tid;
  wire [2:0]S09_AXIS_tkeep;
  wire S09_AXIS_tlast;
  wire S09_AXIS_tready;
  wire [2:0]S09_AXIS_tstrb;
  wire S09_AXIS_tuser;
  wire S09_AXIS_tvalid;
  wire S_AXI_CTRL_ACLK;
  wire S_AXI_CTRL_ARESETN;
  wire [19:0]S_AXI_CTRL_araddr;
  wire S_AXI_CTRL_arready;
  wire S_AXI_CTRL_arvalid;
  wire [19:0]S_AXI_CTRL_awaddr;
  wire S_AXI_CTRL_awready;
  wire S_AXI_CTRL_awvalid;
  wire S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire S_AXI_CTRL_wready;
  wire S_AXI_CTRL_wvalid;
  wire [23:0]s03_couplers_to_xbar_TDATA;
  wire s03_couplers_to_xbar_TDEST;
  wire s03_couplers_to_xbar_TID;
  wire [2:0]s03_couplers_to_xbar_TKEEP;
  wire s03_couplers_to_xbar_TLAST;
  wire s03_couplers_to_xbar_TREADY;
  wire [2:0]s03_couplers_to_xbar_TSTRB;
  wire [2:0]s03_couplers_to_xbar_TUSER;
  wire s03_couplers_to_xbar_TVALID;
  wire [23:0]s09_couplers_to_xbar_TDATA;
  wire s09_couplers_to_xbar_TDEST;
  wire s09_couplers_to_xbar_TID;
  wire [2:0]s09_couplers_to_xbar_TKEEP;
  wire s09_couplers_to_xbar_TLAST;
  wire s09_couplers_to_xbar_TREADY;
  wire [2:0]s09_couplers_to_xbar_TSTRB;
  wire s09_couplers_to_xbar_TUSER;
  wire s09_couplers_to_xbar_TVALID;
  wire [23:0]xbar_to_m00_couplers_TDATA;
  wire xbar_to_m00_couplers_TDEST;
  wire xbar_to_m00_couplers_TID;
  wire [2:0]xbar_to_m00_couplers_TKEEP;
  wire xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [2:0]xbar_to_m00_couplers_TSTRB;
  wire [2:0]xbar_to_m00_couplers_TUSER;
  wire xbar_to_m00_couplers_TVALID;
  wire [47:24]xbar_to_m01_couplers_TDATA;
  wire xbar_to_m01_couplers_TDEST;
  wire xbar_to_m01_couplers_TID;
  wire [5:3]xbar_to_m01_couplers_TKEEP;
  wire xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [5:3]xbar_to_m01_couplers_TSTRB;
  wire [5:3]xbar_to_m01_couplers_TUSER;
  wire xbar_to_m01_couplers_TVALID;
  wire [71:48]xbar_to_m02_couplers_TDATA;
  wire xbar_to_m02_couplers_TDEST;
  wire xbar_to_m02_couplers_TID;
  wire [8:6]xbar_to_m02_couplers_TKEEP;
  wire xbar_to_m02_couplers_TLAST;
  wire xbar_to_m02_couplers_TREADY;
  wire [8:6]xbar_to_m02_couplers_TSTRB;
  wire [8:6]xbar_to_m02_couplers_TUSER;
  wire xbar_to_m02_couplers_TVALID;
  wire [95:72]xbar_to_m03_couplers_TDATA;
  wire xbar_to_m03_couplers_TDEST;
  wire xbar_to_m03_couplers_TID;
  wire [11:9]xbar_to_m03_couplers_TKEEP;
  wire xbar_to_m03_couplers_TLAST;
  wire xbar_to_m03_couplers_TREADY;
  wire [11:9]xbar_to_m03_couplers_TSTRB;
  wire [11:9]xbar_to_m03_couplers_TUSER;
  wire xbar_to_m03_couplers_TVALID;
  wire [119:96]xbar_to_m04_couplers_TDATA;
  wire xbar_to_m04_couplers_TDEST;
  wire xbar_to_m04_couplers_TID;
  wire [14:12]xbar_to_m04_couplers_TKEEP;
  wire xbar_to_m04_couplers_TLAST;
  wire xbar_to_m04_couplers_TREADY;
  wire [14:12]xbar_to_m04_couplers_TSTRB;
  wire [14:12]xbar_to_m04_couplers_TUSER;
  wire xbar_to_m04_couplers_TVALID;
  wire [143:120]xbar_to_m05_couplers_TDATA;
  wire xbar_to_m05_couplers_TDEST;
  wire xbar_to_m05_couplers_TID;
  wire [17:15]xbar_to_m05_couplers_TKEEP;
  wire xbar_to_m05_couplers_TLAST;
  wire xbar_to_m05_couplers_TREADY;
  wire [17:15]xbar_to_m05_couplers_TSTRB;
  wire [17:15]xbar_to_m05_couplers_TUSER;
  wire xbar_to_m05_couplers_TVALID;
  wire [167:144]xbar_to_m06_couplers_TDATA;
  wire xbar_to_m06_couplers_TDEST;
  wire xbar_to_m06_couplers_TID;
  wire [20:18]xbar_to_m06_couplers_TKEEP;
  wire xbar_to_m06_couplers_TLAST;
  wire xbar_to_m06_couplers_TREADY;
  wire [20:18]xbar_to_m06_couplers_TSTRB;
  wire [20:18]xbar_to_m06_couplers_TUSER;
  wire xbar_to_m06_couplers_TVALID;
  wire [191:168]xbar_to_m07_couplers_TDATA;
  wire xbar_to_m07_couplers_TDEST;
  wire xbar_to_m07_couplers_TID;
  wire [23:21]xbar_to_m07_couplers_TKEEP;
  wire xbar_to_m07_couplers_TLAST;
  wire xbar_to_m07_couplers_TREADY;
  wire [23:21]xbar_to_m07_couplers_TSTRB;
  wire [23:21]xbar_to_m07_couplers_TUSER;
  wire xbar_to_m07_couplers_TVALID;
  wire [215:192]xbar_to_m08_couplers_TDATA;
  wire xbar_to_m08_couplers_TDEST;
  wire xbar_to_m08_couplers_TID;
  wire [26:24]xbar_to_m08_couplers_TKEEP;
  wire xbar_to_m08_couplers_TLAST;
  wire xbar_to_m08_couplers_TREADY;
  wire [26:24]xbar_to_m08_couplers_TSTRB;
  wire [26:24]xbar_to_m08_couplers_TUSER;
  wire xbar_to_m08_couplers_TVALID;

  system_v_proc_ss_0_0_m00_couplers_imp_CV42HO m00_couplers
       (.M00_AXIS_ACLK(M00_AXIS_ACLK),
        .M00_AXIS_ARESETN(M00_AXIS_ARESETN),
        .M00_AXIS_tdata(M00_AXIS_tdata),
        .M00_AXIS_tdest(M00_AXIS_tdest),
        .M00_AXIS_tid(M00_AXIS_tid),
        .M00_AXIS_tkeep(M00_AXIS_tkeep),
        .M00_AXIS_tlast(M00_AXIS_tlast),
        .M00_AXIS_tready(M00_AXIS_tready),
        .M00_AXIS_tstrb(M00_AXIS_tstrb),
        .M00_AXIS_tuser(M00_AXIS_tuser),
        .M00_AXIS_tvalid(M00_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m00_couplers_TDATA),
        .m_axis_tdest(xbar_to_m00_couplers_TDEST),
        .m_axis_tid(xbar_to_m00_couplers_TID),
        .m_axis_tkeep(xbar_to_m00_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m00_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m00_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m00_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m00_couplers_TVALID),
        .s_axis_tready(xbar_to_m00_couplers_TREADY));
  system_v_proc_ss_0_0_m01_couplers_imp_1B5X6FZ m01_couplers
       (.M01_AXIS_ACLK(M01_AXIS_ACLK),
        .M01_AXIS_ARESETN(M01_AXIS_ARESETN),
        .M01_AXIS_tdata(M01_AXIS_tdata),
        .M01_AXIS_tdest(M01_AXIS_tdest),
        .M01_AXIS_tid(M01_AXIS_tid),
        .M01_AXIS_tkeep(M01_AXIS_tkeep),
        .M01_AXIS_tlast(M01_AXIS_tlast),
        .M01_AXIS_tready(M01_AXIS_tready),
        .M01_AXIS_tstrb(M01_AXIS_tstrb),
        .M01_AXIS_tuser(M01_AXIS_tuser),
        .M01_AXIS_tvalid(M01_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m01_couplers_TDATA),
        .m_axis_tdest(xbar_to_m01_couplers_TDEST),
        .m_axis_tid(xbar_to_m01_couplers_TID),
        .m_axis_tkeep(xbar_to_m01_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m01_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m01_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m01_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m01_couplers_TVALID),
        .s_axis_tready(xbar_to_m01_couplers_TREADY));
  system_v_proc_ss_0_0_m02_couplers_imp_1XGZGWR m02_couplers
       (.M02_AXIS_ACLK(M02_AXIS_ACLK),
        .M02_AXIS_ARESETN(M02_AXIS_ARESETN),
        .M02_AXIS_tdata(M02_AXIS_tdata),
        .M02_AXIS_tdest(M02_AXIS_tdest),
        .M02_AXIS_tid(M02_AXIS_tid),
        .M02_AXIS_tkeep(M02_AXIS_tkeep),
        .M02_AXIS_tlast(M02_AXIS_tlast),
        .M02_AXIS_tready(M02_AXIS_tready),
        .M02_AXIS_tstrb(M02_AXIS_tstrb),
        .M02_AXIS_tuser(M02_AXIS_tuser),
        .M02_AXIS_tvalid(M02_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m02_couplers_TDATA),
        .m_axis_tdest(xbar_to_m02_couplers_TDEST),
        .m_axis_tid(xbar_to_m02_couplers_TID),
        .m_axis_tkeep(xbar_to_m02_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m02_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m02_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m02_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m02_couplers_TVALID),
        .s_axis_tready(xbar_to_m02_couplers_TREADY));
  system_v_proc_ss_0_0_m03_couplers_imp_YWD7H4 m03_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M03_AXIS_ACLK(M03_AXIS_ACLK),
        .M03_AXIS_ARESETN(M03_AXIS_ARESETN),
        .M03_AXIS_tdata(M03_AXIS_tdata),
        .M03_AXIS_tkeep(M03_AXIS_tkeep),
        .M03_AXIS_tlast(M03_AXIS_tlast),
        .M03_AXIS_tready(M03_AXIS_tready),
        .M03_AXIS_tuser(M03_AXIS_tuser),
        .M03_AXIS_tvalid(M03_AXIS_tvalid),
        .S_AXIS_tdata(xbar_to_m03_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m03_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m03_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m03_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m03_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m03_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m03_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m03_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m03_couplers_TVALID));
  system_v_proc_ss_0_0_m04_couplers_imp_PW9X03 m04_couplers
       (.M04_AXIS_ACLK(M04_AXIS_ACLK),
        .M04_AXIS_ARESETN(M04_AXIS_ARESETN),
        .M04_AXIS_tdata(M04_AXIS_tdata),
        .M04_AXIS_tdest(M04_AXIS_tdest),
        .M04_AXIS_tid(M04_AXIS_tid),
        .M04_AXIS_tkeep(M04_AXIS_tkeep),
        .M04_AXIS_tlast(M04_AXIS_tlast),
        .M04_AXIS_tready(M04_AXIS_tready),
        .M04_AXIS_tstrb(M04_AXIS_tstrb),
        .M04_AXIS_tuser(M04_AXIS_tuser),
        .M04_AXIS_tvalid(M04_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m04_couplers_TDATA),
        .m_axis_tdest(xbar_to_m04_couplers_TDEST),
        .m_axis_tid(xbar_to_m04_couplers_TID),
        .m_axis_tkeep(xbar_to_m04_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m04_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m04_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m04_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m04_couplers_TVALID),
        .s_axis_tready(xbar_to_m04_couplers_TREADY));
  system_v_proc_ss_0_0_m05_couplers_imp_1OR26FK m05_couplers
       (.M05_AXIS_ACLK(M05_AXIS_ACLK),
        .M05_AXIS_ARESETN(M05_AXIS_ARESETN),
        .M05_AXIS_tdata(M05_AXIS_tdata),
        .M05_AXIS_tdest(M05_AXIS_tdest),
        .M05_AXIS_tid(M05_AXIS_tid),
        .M05_AXIS_tkeep(M05_AXIS_tkeep),
        .M05_AXIS_tlast(M05_AXIS_tlast),
        .M05_AXIS_tready(M05_AXIS_tready),
        .M05_AXIS_tstrb(M05_AXIS_tstrb),
        .M05_AXIS_tuser(M05_AXIS_tuser),
        .M05_AXIS_tvalid(M05_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m05_couplers_TDATA),
        .m_axis_tdest(xbar_to_m05_couplers_TDEST),
        .m_axis_tid(xbar_to_m05_couplers_TID),
        .m_axis_tkeep(xbar_to_m05_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m05_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m05_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m05_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m05_couplers_TVALID),
        .s_axis_tready(xbar_to_m05_couplers_TREADY));
  system_v_proc_ss_0_0_m06_couplers_imp_124KRDG m06_couplers
       (.M06_AXIS_ACLK(M06_AXIS_ACLK),
        .M06_AXIS_ARESETN(M06_AXIS_ARESETN),
        .M06_AXIS_tdata(M06_AXIS_tdata),
        .M06_AXIS_tdest(M06_AXIS_tdest),
        .M06_AXIS_tid(M06_AXIS_tid),
        .M06_AXIS_tkeep(M06_AXIS_tkeep),
        .M06_AXIS_tlast(M06_AXIS_tlast),
        .M06_AXIS_tready(M06_AXIS_tready),
        .M06_AXIS_tstrb(M06_AXIS_tstrb),
        .M06_AXIS_tuser(M06_AXIS_tuser),
        .M06_AXIS_tvalid(M06_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m06_couplers_TDATA),
        .m_axis_tdest(xbar_to_m06_couplers_TDEST),
        .m_axis_tid(xbar_to_m06_couplers_TID),
        .m_axis_tkeep(xbar_to_m06_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m06_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m06_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m06_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m06_couplers_TVALID),
        .s_axis_tready(xbar_to_m06_couplers_TREADY));
  system_v_proc_ss_0_0_m07_couplers_imp_43XNMF m07_couplers
       (.M07_AXIS_ACLK(M07_AXIS_ACLK),
        .M07_AXIS_ARESETN(M07_AXIS_ARESETN),
        .M07_AXIS_tdata(M07_AXIS_tdata),
        .M07_AXIS_tdest(M07_AXIS_tdest),
        .M07_AXIS_tid(M07_AXIS_tid),
        .M07_AXIS_tkeep(M07_AXIS_tkeep),
        .M07_AXIS_tlast(M07_AXIS_tlast),
        .M07_AXIS_tready(M07_AXIS_tready),
        .M07_AXIS_tstrb(M07_AXIS_tstrb),
        .M07_AXIS_tuser(M07_AXIS_tuser),
        .M07_AXIS_tvalid(M07_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m07_couplers_TDATA),
        .m_axis_tdest(xbar_to_m07_couplers_TDEST),
        .m_axis_tid(xbar_to_m07_couplers_TID),
        .m_axis_tkeep(xbar_to_m07_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m07_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m07_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m07_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m07_couplers_TVALID),
        .s_axis_tready(xbar_to_m07_couplers_TREADY));
  system_v_proc_ss_0_0_m08_couplers_imp_1JKRG8Y m08_couplers
       (.M08_AXIS_ACLK(M08_AXIS_ACLK),
        .M08_AXIS_ARESETN(M08_AXIS_ARESETN),
        .M08_AXIS_tdata(M08_AXIS_tdata),
        .M08_AXIS_tdest(M08_AXIS_tdest),
        .M08_AXIS_tid(M08_AXIS_tid),
        .M08_AXIS_tkeep(M08_AXIS_tkeep),
        .M08_AXIS_tlast(M08_AXIS_tlast),
        .M08_AXIS_tready(M08_AXIS_tready),
        .M08_AXIS_tstrb(M08_AXIS_tstrb),
        .M08_AXIS_tuser(M08_AXIS_tuser),
        .M08_AXIS_tvalid(M08_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m08_couplers_TDATA),
        .m_axis_tdest(xbar_to_m08_couplers_TDEST),
        .m_axis_tid(xbar_to_m08_couplers_TID),
        .m_axis_tkeep(xbar_to_m08_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m08_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m08_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m08_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m08_couplers_TVALID),
        .s_axis_tready(xbar_to_m08_couplers_TREADY));
  system_v_proc_ss_0_0_s03_couplers_imp_1XMVDZ8 s03_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXIS_tdata(s03_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s03_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s03_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s03_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s03_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s03_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s03_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s03_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s03_couplers_to_xbar_TVALID),
        .S03_AXIS_ACLK(S03_AXIS_ACLK),
        .S03_AXIS_ARESETN(S03_AXIS_ARESETN),
        .S03_AXIS_tdata(S03_AXIS_tdata),
        .S03_AXIS_tkeep(S03_AXIS_tkeep),
        .S03_AXIS_tlast(S03_AXIS_tlast),
        .S03_AXIS_tready(S03_AXIS_tready),
        .S03_AXIS_tuser(S03_AXIS_tuser),
        .S03_AXIS_tvalid(S03_AXIS_tvalid));
  system_v_proc_ss_0_0_s09_couplers_imp_1JQ1MFX s09_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S09_AXIS_ACLK(S09_AXIS_ACLK),
        .S09_AXIS_ARESETN(S09_AXIS_ARESETN),
        .S09_AXIS_tdata(S09_AXIS_tdata),
        .S09_AXIS_tdest(S09_AXIS_tdest),
        .S09_AXIS_tid(S09_AXIS_tid),
        .S09_AXIS_tkeep(S09_AXIS_tkeep),
        .S09_AXIS_tlast(S09_AXIS_tlast),
        .S09_AXIS_tready(S09_AXIS_tready),
        .S09_AXIS_tstrb(S09_AXIS_tstrb),
        .S09_AXIS_tuser(S09_AXIS_tuser),
        .S09_AXIS_tvalid(S09_AXIS_tvalid),
        .m_axis_tdata(s09_couplers_to_xbar_TDATA),
        .m_axis_tdest(s09_couplers_to_xbar_TDEST),
        .m_axis_tid(s09_couplers_to_xbar_TID),
        .m_axis_tkeep(s09_couplers_to_xbar_TKEEP),
        .m_axis_tlast(s09_couplers_to_xbar_TLAST),
        .m_axis_tstrb(s09_couplers_to_xbar_TSTRB),
        .m_axis_tuser(s09_couplers_to_xbar_TUSER),
        .m_axis_tvalid(s09_couplers_to_xbar_TVALID),
        .s_axis_tready(s09_couplers_to_xbar_TREADY));
  (* X_CORE_INFO = "axis_switch_v1_1_18_axis_switch,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_xbar_1 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata({M09_AXIS_tdata,xbar_to_m08_couplers_TDATA,xbar_to_m07_couplers_TDATA,xbar_to_m06_couplers_TDATA,xbar_to_m05_couplers_TDATA,xbar_to_m04_couplers_TDATA,xbar_to_m03_couplers_TDATA,xbar_to_m02_couplers_TDATA,xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({M09_AXIS_tdest,xbar_to_m08_couplers_TDEST,xbar_to_m07_couplers_TDEST,xbar_to_m06_couplers_TDEST,xbar_to_m05_couplers_TDEST,xbar_to_m04_couplers_TDEST,xbar_to_m03_couplers_TDEST,xbar_to_m02_couplers_TDEST,xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tid({M09_AXIS_tid,xbar_to_m08_couplers_TID,xbar_to_m07_couplers_TID,xbar_to_m06_couplers_TID,xbar_to_m05_couplers_TID,xbar_to_m04_couplers_TID,xbar_to_m03_couplers_TID,xbar_to_m02_couplers_TID,xbar_to_m01_couplers_TID,xbar_to_m00_couplers_TID}),
        .m_axis_tkeep({M09_AXIS_tkeep,xbar_to_m08_couplers_TKEEP,xbar_to_m07_couplers_TKEEP,xbar_to_m06_couplers_TKEEP,xbar_to_m05_couplers_TKEEP,xbar_to_m04_couplers_TKEEP,xbar_to_m03_couplers_TKEEP,xbar_to_m02_couplers_TKEEP,xbar_to_m01_couplers_TKEEP,xbar_to_m00_couplers_TKEEP}),
        .m_axis_tlast({M09_AXIS_tlast,xbar_to_m08_couplers_TLAST,xbar_to_m07_couplers_TLAST,xbar_to_m06_couplers_TLAST,xbar_to_m05_couplers_TLAST,xbar_to_m04_couplers_TLAST,xbar_to_m03_couplers_TLAST,xbar_to_m02_couplers_TLAST,xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({M09_AXIS_tready,xbar_to_m08_couplers_TREADY,xbar_to_m07_couplers_TREADY,xbar_to_m06_couplers_TREADY,xbar_to_m05_couplers_TREADY,xbar_to_m04_couplers_TREADY,xbar_to_m03_couplers_TREADY,xbar_to_m02_couplers_TREADY,xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tstrb({M09_AXIS_tstrb,xbar_to_m08_couplers_TSTRB,xbar_to_m07_couplers_TSTRB,xbar_to_m06_couplers_TSTRB,xbar_to_m05_couplers_TSTRB,xbar_to_m04_couplers_TSTRB,xbar_to_m03_couplers_TSTRB,xbar_to_m02_couplers_TSTRB,xbar_to_m01_couplers_TSTRB,xbar_to_m00_couplers_TSTRB}),
        .m_axis_tuser({M09_AXIS_tuser,xbar_to_m08_couplers_TUSER,xbar_to_m07_couplers_TUSER,xbar_to_m06_couplers_TUSER,xbar_to_m05_couplers_TUSER,xbar_to_m04_couplers_TUSER,xbar_to_m03_couplers_TUSER,xbar_to_m02_couplers_TUSER,xbar_to_m01_couplers_TUSER,xbar_to_m00_couplers_TUSER}),
        .m_axis_tvalid({M09_AXIS_tvalid,xbar_to_m08_couplers_TVALID,xbar_to_m07_couplers_TVALID,xbar_to_m06_couplers_TVALID,xbar_to_m05_couplers_TVALID,xbar_to_m04_couplers_TVALID,xbar_to_m03_couplers_TVALID,xbar_to_m02_couplers_TVALID,xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axi_ctrl_aclk(S_AXI_CTRL_ACLK),
        .s_axi_ctrl_araddr(S_AXI_CTRL_araddr[6:0]),
        .s_axi_ctrl_aresetn(S_AXI_CTRL_ARESETN),
        .s_axi_ctrl_arready(S_AXI_CTRL_arready),
        .s_axi_ctrl_arvalid(S_AXI_CTRL_arvalid),
        .s_axi_ctrl_awaddr(S_AXI_CTRL_awaddr[6:0]),
        .s_axi_ctrl_awready(S_AXI_CTRL_awready),
        .s_axi_ctrl_awvalid(S_AXI_CTRL_awvalid),
        .s_axi_ctrl_bready(S_AXI_CTRL_bready),
        .s_axi_ctrl_bresp(S_AXI_CTRL_bresp),
        .s_axi_ctrl_bvalid(S_AXI_CTRL_bvalid),
        .s_axi_ctrl_rdata(S_AXI_CTRL_rdata),
        .s_axi_ctrl_rready(S_AXI_CTRL_rready),
        .s_axi_ctrl_rresp(S_AXI_CTRL_rresp),
        .s_axi_ctrl_rvalid(S_AXI_CTRL_rvalid),
        .s_axi_ctrl_wdata(S_AXI_CTRL_wdata),
        .s_axi_ctrl_wready(S_AXI_CTRL_wready),
        .s_axi_ctrl_wvalid(S_AXI_CTRL_wvalid),
        .s_axis_tdata({s09_couplers_to_xbar_TDATA,S08_AXIS_tdata,S07_AXIS_tdata,S06_AXIS_tdata,S05_AXIS_tdata,S04_AXIS_tdata,s03_couplers_to_xbar_TDATA,S02_AXIS_tdata,S01_AXIS_tdata,S00_AXIS_tdata}),
        .s_axis_tdest({s09_couplers_to_xbar_TDEST,S08_AXIS_tdest,S07_AXIS_tdest,S06_AXIS_tdest,S05_AXIS_tdest,S04_AXIS_tdest,s03_couplers_to_xbar_TDEST,S02_AXIS_tdest,S01_AXIS_tdest,S00_AXIS_tdest}),
        .s_axis_tid({s09_couplers_to_xbar_TID,S08_AXIS_tid,S07_AXIS_tid,S06_AXIS_tid,S05_AXIS_tid,S04_AXIS_tid,s03_couplers_to_xbar_TID,S02_AXIS_tid,S01_AXIS_tid,S00_AXIS_tid}),
        .s_axis_tkeep({s09_couplers_to_xbar_TKEEP,S08_AXIS_tkeep,S07_AXIS_tkeep,S06_AXIS_tkeep,S05_AXIS_tkeep,S04_AXIS_tkeep,s03_couplers_to_xbar_TKEEP,S02_AXIS_tkeep,S01_AXIS_tkeep,S00_AXIS_tkeep}),
        .s_axis_tlast({s09_couplers_to_xbar_TLAST,S08_AXIS_tlast,S07_AXIS_tlast,S06_AXIS_tlast,S05_AXIS_tlast,S04_AXIS_tlast,s03_couplers_to_xbar_TLAST,S02_AXIS_tlast,S01_AXIS_tlast,S00_AXIS_tlast}),
        .s_axis_tready({s09_couplers_to_xbar_TREADY,S08_AXIS_tready,S07_AXIS_tready,S06_AXIS_tready,S05_AXIS_tready,S04_AXIS_tready,s03_couplers_to_xbar_TREADY,S02_AXIS_tready,S01_AXIS_tready,S00_AXIS_tready}),
        .s_axis_tstrb({s09_couplers_to_xbar_TSTRB,S08_AXIS_tstrb,S07_AXIS_tstrb,S06_AXIS_tstrb,S05_AXIS_tstrb,S04_AXIS_tstrb,s03_couplers_to_xbar_TSTRB,S02_AXIS_tstrb,S01_AXIS_tstrb,S00_AXIS_tstrb}),
        .s_axis_tuser({1'b0,1'b0,s09_couplers_to_xbar_TUSER,1'b0,1'b0,S08_AXIS_tuser,1'b0,1'b0,S07_AXIS_tuser,1'b0,1'b0,S06_AXIS_tuser,1'b0,1'b0,S05_AXIS_tuser,1'b0,1'b0,S04_AXIS_tuser,s03_couplers_to_xbar_TUSER,1'b0,1'b0,S02_AXIS_tuser,1'b0,1'b0,S01_AXIS_tuser,1'b0,1'b0,S00_AXIS_tuser}),
        .s_axis_tvalid({s09_couplers_to_xbar_TVALID,S08_AXIS_tvalid,S07_AXIS_tvalid,S06_AXIS_tvalid,S05_AXIS_tvalid,S04_AXIS_tvalid,s03_couplers_to_xbar_TVALID,S02_AXIS_tvalid,S01_AXIS_tvalid,S00_AXIS_tvalid}));
endmodule

(* X_CORE_INFO = "bd_2d50_vsc_0_v_vscaler,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_vsc_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [11:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [11:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [19:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [19:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [239:0]m_axi_awaddr;
  output [35:0]m_axi_awprot;
  output [11:0]m_axi_awvalid;
  input [11:0]m_axi_awready;
  output [383:0]m_axi_wdata;
  output [47:0]m_axi_wstrb;
  output [11:0]m_axi_wvalid;
  input [11:0]m_axi_wready;
  input [23:0]m_axi_bresp;
  input [11:0]m_axi_bvalid;
  output [11:0]m_axi_bready;
  output [239:0]m_axi_araddr;
  output [35:0]m_axi_arprot;
  output [11:0]m_axi_arvalid;
  input [11:0]m_axi_arready;
  input [383:0]m_axi_rdata;
  input [23:0]m_axi_rresp;
  input [11:0]m_axi_rvalid;
  output [11:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "axis_switch_v1_1_18_axis_switch,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_xbar_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp);
  input aclk;
  input aresetn;
  input [9:0]s_axis_tvalid;
  output [9:0]s_axis_tready;
  input [239:0]s_axis_tdata;
  input [29:0]s_axis_tstrb;
  input [29:0]s_axis_tkeep;
  input [9:0]s_axis_tlast;
  input [9:0]s_axis_tid;
  input [9:0]s_axis_tdest;
  input [29:0]s_axis_tuser;
  output [9:0]m_axis_tvalid;
  input [9:0]m_axis_tready;
  output [239:0]m_axis_tdata;
  output [29:0]m_axis_tstrb;
  output [29:0]m_axis_tkeep;
  output [9:0]m_axis_tlast;
  output [9:0]m_axis_tid;
  output [9:0]m_axis_tdest;
  output [29:0]m_axis_tuser;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3" *) 
module system_v_proc_ss_0_0_bd_2d50_xbar_2
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [5:0]s_axi_awid;
  input [95:0]s_axi_awaddr;
  input [23:0]s_axi_awlen;
  input [8:0]s_axi_awsize;
  input [5:0]s_axi_awburst;
  input [2:0]s_axi_awlock;
  input [11:0]s_axi_awcache;
  input [8:0]s_axi_awprot;
  input [11:0]s_axi_awqos;
  input [2:0]s_axi_awvalid;
  output [2:0]s_axi_awready;
  input [767:0]s_axi_wdata;
  input [95:0]s_axi_wstrb;
  input [2:0]s_axi_wlast;
  input [2:0]s_axi_wvalid;
  output [2:0]s_axi_wready;
  output [5:0]s_axi_bid;
  output [5:0]s_axi_bresp;
  output [2:0]s_axi_bvalid;
  input [2:0]s_axi_bready;
  input [5:0]s_axi_arid;
  input [95:0]s_axi_araddr;
  input [23:0]s_axi_arlen;
  input [8:0]s_axi_arsize;
  input [5:0]s_axi_arburst;
  input [2:0]s_axi_arlock;
  input [11:0]s_axi_arcache;
  input [8:0]s_axi_arprot;
  input [11:0]s_axi_arqos;
  input [2:0]s_axi_arvalid;
  output [2:0]s_axi_arready;
  output [5:0]s_axi_rid;
  output [767:0]s_axi_rdata;
  output [5:0]s_axi_rresp;
  output [2:0]s_axi_rlast;
  output [2:0]s_axi_rvalid;
  input [2:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awvalid;
  input [0:0]m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output [0:0]m_axi_wvalid;
  input [0:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_bvalid;
  output [0:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_arvalid;
  input [0:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input [0:0]m_axi_rlast;
  input [0:0]m_axi_rvalid;
  output [0:0]m_axi_rready;


endmodule

module system_v_proc_ss_0_0_m00_couplers_imp_CV42HO
   (s_axis_tready,
    M00_AXIS_tvalid,
    M00_AXIS_tdata,
    M00_AXIS_tstrb,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tid,
    M00_AXIS_tdest,
    M00_AXIS_tuser,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M00_AXIS_tready);
  output s_axis_tready;
  output M00_AXIS_tvalid;
  output [23:0]M00_AXIS_tdata;
  output [2:0]M00_AXIS_tstrb;
  output [2:0]M00_AXIS_tkeep;
  output M00_AXIS_tlast;
  output [0:0]M00_AXIS_tid;
  output [0:0]M00_AXIS_tdest;
  output [2:0]M00_AXIS_tuser;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M00_AXIS_tready;

  wire M00_AXIS_ACLK;
  wire M00_AXIS_ARESETN;
  wire [23:0]M00_AXIS_tdata;
  wire [0:0]M00_AXIS_tdest;
  wire [0:0]M00_AXIS_tid;
  wire [2:0]M00_AXIS_tkeep;
  wire M00_AXIS_tlast;
  wire M00_AXIS_tready;
  wire [2:0]M00_AXIS_tstrb;
  wire [2:0]M00_AXIS_tuser;
  wire M00_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m00_regslice_0 m00_regslice
       (.aclk(M00_AXIS_ACLK),
        .aresetn(M00_AXIS_ARESETN),
        .m_axis_tdata(M00_AXIS_tdata),
        .m_axis_tdest(M00_AXIS_tdest),
        .m_axis_tid(M00_AXIS_tid),
        .m_axis_tkeep(M00_AXIS_tkeep),
        .m_axis_tlast(M00_AXIS_tlast),
        .m_axis_tready(M00_AXIS_tready),
        .m_axis_tstrb(M00_AXIS_tstrb),
        .m_axis_tuser(M00_AXIS_tuser),
        .m_axis_tvalid(M00_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m01_couplers_imp_1B5X6FZ
   (s_axis_tready,
    M01_AXIS_tvalid,
    M01_AXIS_tdata,
    M01_AXIS_tstrb,
    M01_AXIS_tkeep,
    M01_AXIS_tlast,
    M01_AXIS_tid,
    M01_AXIS_tdest,
    M01_AXIS_tuser,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M01_AXIS_tready);
  output s_axis_tready;
  output M01_AXIS_tvalid;
  output [23:0]M01_AXIS_tdata;
  output [2:0]M01_AXIS_tstrb;
  output [2:0]M01_AXIS_tkeep;
  output M01_AXIS_tlast;
  output [0:0]M01_AXIS_tid;
  output [0:0]M01_AXIS_tdest;
  output [2:0]M01_AXIS_tuser;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M01_AXIS_tready;

  wire M01_AXIS_ACLK;
  wire M01_AXIS_ARESETN;
  wire [23:0]M01_AXIS_tdata;
  wire [0:0]M01_AXIS_tdest;
  wire [0:0]M01_AXIS_tid;
  wire [2:0]M01_AXIS_tkeep;
  wire M01_AXIS_tlast;
  wire M01_AXIS_tready;
  wire [2:0]M01_AXIS_tstrb;
  wire [2:0]M01_AXIS_tuser;
  wire M01_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m01_regslice_0 m01_regslice
       (.aclk(M01_AXIS_ACLK),
        .aresetn(M01_AXIS_ARESETN),
        .m_axis_tdata(M01_AXIS_tdata),
        .m_axis_tdest(M01_AXIS_tdest),
        .m_axis_tid(M01_AXIS_tid),
        .m_axis_tkeep(M01_AXIS_tkeep),
        .m_axis_tlast(M01_AXIS_tlast),
        .m_axis_tready(M01_AXIS_tready),
        .m_axis_tstrb(M01_AXIS_tstrb),
        .m_axis_tuser(M01_AXIS_tuser),
        .m_axis_tvalid(M01_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m01_couplers_imp_U2A8WA
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M01_AXI_awaddr,
    M01_AXI_awvalid,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arvalid,
    M01_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_awready,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [8:0]M01_AXI_awaddr;
  output M01_AXI_awvalid;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output M01_AXI_bready;
  output [8:0]M01_AXI_araddr;
  output M01_AXI_arvalid;
  output M01_AXI_rready;
  input ACLK;
  input ARESETN;
  input [8:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [8:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M01_ACLK;
  input M01_ARESETN;
  input M01_AXI_awready;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_arready;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M01_ACLK;
  wire M01_ARESETN;
  wire [8:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [8:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [8:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [8:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_0 auto_cc
       (.m_axi_aclk(M01_ACLK),
        .m_axi_araddr(M01_AXI_araddr),
        .m_axi_aresetn(M01_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M01_AXI_arready),
        .m_axi_arvalid(M01_AXI_arvalid),
        .m_axi_awaddr(M01_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M01_AXI_awready),
        .m_axi_awvalid(M01_AXI_awvalid),
        .m_axi_bready(M01_AXI_bready),
        .m_axi_bresp(M01_AXI_bresp),
        .m_axi_bvalid(M01_AXI_bvalid),
        .m_axi_rdata(M01_AXI_rdata),
        .m_axi_rready(M01_AXI_rready),
        .m_axi_rresp(M01_AXI_rresp),
        .m_axi_rvalid(M01_AXI_rvalid),
        .m_axi_wdata(M01_AXI_wdata),
        .m_axi_wready(M01_AXI_wready),
        .m_axi_wstrb(M01_AXI_wstrb),
        .m_axi_wvalid(M01_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m02_couplers_imp_1XGZGWR
   (s_axis_tready,
    M02_AXIS_tvalid,
    M02_AXIS_tdata,
    M02_AXIS_tstrb,
    M02_AXIS_tkeep,
    M02_AXIS_tlast,
    M02_AXIS_tid,
    M02_AXIS_tdest,
    M02_AXIS_tuser,
    M02_AXIS_ACLK,
    M02_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M02_AXIS_tready);
  output s_axis_tready;
  output M02_AXIS_tvalid;
  output [23:0]M02_AXIS_tdata;
  output [2:0]M02_AXIS_tstrb;
  output [2:0]M02_AXIS_tkeep;
  output M02_AXIS_tlast;
  output [0:0]M02_AXIS_tid;
  output [0:0]M02_AXIS_tdest;
  output [2:0]M02_AXIS_tuser;
  input M02_AXIS_ACLK;
  input M02_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M02_AXIS_tready;

  wire M02_AXIS_ACLK;
  wire M02_AXIS_ARESETN;
  wire [23:0]M02_AXIS_tdata;
  wire [0:0]M02_AXIS_tdest;
  wire [0:0]M02_AXIS_tid;
  wire [2:0]M02_AXIS_tkeep;
  wire M02_AXIS_tlast;
  wire M02_AXIS_tready;
  wire [2:0]M02_AXIS_tstrb;
  wire [2:0]M02_AXIS_tuser;
  wire M02_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m02_regslice_0 m02_regslice
       (.aclk(M02_AXIS_ACLK),
        .aresetn(M02_AXIS_ARESETN),
        .m_axis_tdata(M02_AXIS_tdata),
        .m_axis_tdest(M02_AXIS_tdest),
        .m_axis_tid(M02_AXIS_tid),
        .m_axis_tkeep(M02_AXIS_tkeep),
        .m_axis_tlast(M02_AXIS_tlast),
        .m_axis_tready(M02_AXIS_tready),
        .m_axis_tstrb(M02_AXIS_tstrb),
        .m_axis_tuser(M02_AXIS_tuser),
        .m_axis_tvalid(M02_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m02_couplers_imp_HOX72M
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M02_AXI_awaddr,
    M02_AXI_awvalid,
    M02_AXI_wdata,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M02_AXI_bready,
    M02_AXI_araddr,
    M02_AXI_arvalid,
    M02_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_awready,
    M02_AXI_wready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_arready,
    M02_AXI_rdata,
    M02_AXI_rresp,
    M02_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [11:0]M02_AXI_awaddr;
  output M02_AXI_awvalid;
  output [31:0]M02_AXI_wdata;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  output M02_AXI_bready;
  output [11:0]M02_AXI_araddr;
  output M02_AXI_arvalid;
  output M02_AXI_rready;
  input ACLK;
  input ARESETN;
  input [11:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [11:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M02_ACLK;
  input M02_ARESETN;
  input M02_AXI_awready;
  input M02_AXI_wready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input M02_AXI_arready;
  input [31:0]M02_AXI_rdata;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M02_ACLK;
  wire M02_ARESETN;
  wire [11:0]M02_AXI_araddr;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [11:0]M02_AXI_awaddr;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire [11:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [11:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_1 auto_cc
       (.m_axi_aclk(M02_ACLK),
        .m_axi_araddr(M02_AXI_araddr),
        .m_axi_aresetn(M02_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M02_AXI_arready),
        .m_axi_arvalid(M02_AXI_arvalid),
        .m_axi_awaddr(M02_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M02_AXI_awready),
        .m_axi_awvalid(M02_AXI_awvalid),
        .m_axi_bready(M02_AXI_bready),
        .m_axi_bresp(M02_AXI_bresp),
        .m_axi_bvalid(M02_AXI_bvalid),
        .m_axi_rdata(M02_AXI_rdata),
        .m_axi_rready(M02_AXI_rready),
        .m_axi_rresp(M02_AXI_rresp),
        .m_axi_rvalid(M02_AXI_rvalid),
        .m_axi_wdata(M02_AXI_wdata),
        .m_axi_wready(M02_AXI_wready),
        .m_axi_wstrb(M02_AXI_wstrb),
        .m_axi_wvalid(M02_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m03_couplers_imp_1F5VMML
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M03_AXI_awaddr,
    M03_AXI_awvalid,
    M03_AXI_wdata,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M03_AXI_bready,
    M03_AXI_araddr,
    M03_AXI_arvalid,
    M03_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_awready,
    M03_AXI_wready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_arready,
    M03_AXI_rdata,
    M03_AXI_rresp,
    M03_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [13:0]M03_AXI_awaddr;
  output M03_AXI_awvalid;
  output [31:0]M03_AXI_wdata;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  output M03_AXI_bready;
  output [13:0]M03_AXI_araddr;
  output M03_AXI_arvalid;
  output M03_AXI_rready;
  input ACLK;
  input ARESETN;
  input [13:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [13:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M03_ACLK;
  input M03_ARESETN;
  input M03_AXI_awready;
  input M03_AXI_wready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input M03_AXI_arready;
  input [31:0]M03_AXI_rdata;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M03_ACLK;
  wire M03_ARESETN;
  wire [13:0]M03_AXI_araddr;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [13:0]M03_AXI_awaddr;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire [13:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [13:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_2 auto_cc
       (.m_axi_aclk(M03_ACLK),
        .m_axi_araddr(M03_AXI_araddr),
        .m_axi_aresetn(M03_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M03_AXI_arready),
        .m_axi_arvalid(M03_AXI_arvalid),
        .m_axi_awaddr(M03_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M03_AXI_awready),
        .m_axi_awvalid(M03_AXI_awvalid),
        .m_axi_bready(M03_AXI_bready),
        .m_axi_bresp(M03_AXI_bresp),
        .m_axi_bvalid(M03_AXI_bvalid),
        .m_axi_rdata(M03_AXI_rdata),
        .m_axi_rready(M03_AXI_rready),
        .m_axi_rresp(M03_AXI_rresp),
        .m_axi_rvalid(M03_AXI_rvalid),
        .m_axi_wdata(M03_AXI_wdata),
        .m_axi_wready(M03_AXI_wready),
        .m_axi_wstrb(M03_AXI_wstrb),
        .m_axi_wvalid(M03_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m03_couplers_imp_YWD7H4
   (M03_AXIS_tvalid,
    M03_AXIS_tdata,
    M03_AXIS_tkeep,
    M03_AXIS_tlast,
    M03_AXIS_tuser,
    S_AXIS_tready,
    ARESETN,
    M03_AXIS_ARESETN,
    ACLK,
    M03_AXIS_ACLK,
    M03_AXIS_tready,
    S_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tstrb,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tid,
    S_AXIS_tdest,
    S_AXIS_tuser);
  output M03_AXIS_tvalid;
  output [47:0]M03_AXIS_tdata;
  output [5:0]M03_AXIS_tkeep;
  output M03_AXIS_tlast;
  output [5:0]M03_AXIS_tuser;
  output S_AXIS_tready;
  input ARESETN;
  input M03_AXIS_ARESETN;
  input ACLK;
  input M03_AXIS_ACLK;
  input M03_AXIS_tready;
  input S_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tid;
  input [0:0]S_AXIS_tdest;
  input [2:0]S_AXIS_tuser;

  wire ACLK;
  wire ARESETN;
  wire M03_AXIS_ACLK;
  wire M03_AXIS_ARESETN;
  wire [47:0]M03_AXIS_tdata;
  wire [5:0]M03_AXIS_tkeep;
  wire M03_AXIS_tlast;
  wire M03_AXIS_tready;
  wire [5:0]M03_AXIS_tuser;
  wire M03_AXIS_tvalid;
  wire [23:0]S_AXIS_tdata;
  wire [0:0]S_AXIS_tdest;
  wire [0:0]S_AXIS_tid;
  wire [2:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire [2:0]S_AXIS_tstrb;
  wire [2:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [47:0]auto_cc_to_auto_ss_slidr_TDATA;
  wire auto_cc_to_auto_ss_slidr_TDEST;
  wire auto_cc_to_auto_ss_slidr_TID;
  wire [5:0]auto_cc_to_auto_ss_slidr_TKEEP;
  wire auto_cc_to_auto_ss_slidr_TLAST;
  wire auto_cc_to_auto_ss_slidr_TREADY;
  wire [5:0]auto_cc_to_auto_ss_slidr_TSTRB;
  wire [5:0]auto_cc_to_auto_ss_slidr_TUSER;
  wire auto_cc_to_auto_ss_slidr_TVALID;
  wire [47:0]auto_us_to_auto_cc_TDATA;
  wire auto_us_to_auto_cc_TDEST;
  wire auto_us_to_auto_cc_TID;
  wire [5:0]auto_us_to_auto_cc_TKEEP;
  wire auto_us_to_auto_cc_TLAST;
  wire auto_us_to_auto_cc_TREADY;
  wire [5:0]auto_us_to_auto_cc_TSTRB;
  wire [5:0]auto_us_to_auto_cc_TUSER;
  wire auto_us_to_auto_cc_TVALID;

  (* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_11 auto_cc
       (.m_axis_aclk(M03_AXIS_ACLK),
        .m_axis_aresetn(M03_AXIS_ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .m_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .m_axis_tid(auto_cc_to_auto_ss_slidr_TID),
        .m_axis_tkeep(auto_cc_to_auto_ss_slidr_TKEEP),
        .m_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .m_axis_tstrb(auto_cc_to_auto_ss_slidr_TSTRB),
        .m_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID),
        .s_axis_aclk(ACLK),
        .s_axis_aresetn(ARESETN),
        .s_axis_tdata(auto_us_to_auto_cc_TDATA),
        .s_axis_tdest(auto_us_to_auto_cc_TDEST),
        .s_axis_tid(auto_us_to_auto_cc_TID),
        .s_axis_tkeep(auto_us_to_auto_cc_TKEEP),
        .s_axis_tlast(auto_us_to_auto_cc_TLAST),
        .s_axis_tready(auto_us_to_auto_cc_TREADY),
        .s_axis_tstrb(auto_us_to_auto_cc_TSTRB),
        .s_axis_tuser(auto_us_to_auto_cc_TUSER),
        .s_axis_tvalid(auto_us_to_auto_cc_TVALID));
  (* X_CORE_INFO = "top_bd_2d50_auto_ss_slidr_0,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_ss_slidr_0 auto_ss_slidr
       (.aclk(M03_AXIS_ACLK),
        .aresetn(M03_AXIS_ARESETN),
        .m_axis_tdata(M03_AXIS_tdata),
        .m_axis_tkeep(M03_AXIS_tkeep),
        .m_axis_tlast(M03_AXIS_tlast),
        .m_axis_tready(M03_AXIS_tready),
        .m_axis_tuser(M03_AXIS_tuser),
        .m_axis_tvalid(M03_AXIS_tvalid),
        .s_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .s_axis_tid(auto_cc_to_auto_ss_slidr_TID),
        .s_axis_tkeep(auto_cc_to_auto_ss_slidr_TKEEP),
        .s_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .s_axis_tstrb(auto_cc_to_auto_ss_slidr_TSTRB),
        .s_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID));
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_us_0 auto_us
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(auto_us_to_auto_cc_TDATA),
        .m_axis_tdest(auto_us_to_auto_cc_TDEST),
        .m_axis_tid(auto_us_to_auto_cc_TID),
        .m_axis_tkeep(auto_us_to_auto_cc_TKEEP),
        .m_axis_tlast(auto_us_to_auto_cc_TLAST),
        .m_axis_tready(auto_us_to_auto_cc_TREADY),
        .m_axis_tstrb(auto_us_to_auto_cc_TSTRB),
        .m_axis_tuser(auto_us_to_auto_cc_TUSER),
        .m_axis_tvalid(auto_us_to_auto_cc_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tdest(S_AXIS_tdest),
        .s_axis_tid(S_AXIS_tid),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tready(S_AXIS_tready),
        .s_axis_tstrb(S_AXIS_tstrb),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
endmodule

module system_v_proc_ss_0_0_m04_couplers_imp_16FXGJQ
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M04_AXI_awaddr,
    M04_AXI_awvalid,
    M04_AXI_wdata,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M04_AXI_bready,
    M04_AXI_araddr,
    M04_AXI_arvalid,
    M04_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_awready,
    M04_AXI_wready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_arready,
    M04_AXI_rdata,
    M04_AXI_rresp,
    M04_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [6:0]M04_AXI_awaddr;
  output M04_AXI_awvalid;
  output [31:0]M04_AXI_wdata;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  output M04_AXI_bready;
  output [6:0]M04_AXI_araddr;
  output M04_AXI_arvalid;
  output M04_AXI_rready;
  input ACLK;
  input ARESETN;
  input [6:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [6:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M04_ACLK;
  input M04_ARESETN;
  input M04_AXI_awready;
  input M04_AXI_wready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input M04_AXI_arready;
  input [31:0]M04_AXI_rdata;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M04_ACLK;
  wire M04_ARESETN;
  wire [6:0]M04_AXI_araddr;
  wire M04_AXI_arready;
  wire M04_AXI_arvalid;
  wire [6:0]M04_AXI_awaddr;
  wire M04_AXI_awready;
  wire M04_AXI_awvalid;
  wire M04_AXI_bready;
  wire [1:0]M04_AXI_bresp;
  wire M04_AXI_bvalid;
  wire [31:0]M04_AXI_rdata;
  wire M04_AXI_rready;
  wire [1:0]M04_AXI_rresp;
  wire M04_AXI_rvalid;
  wire [31:0]M04_AXI_wdata;
  wire M04_AXI_wready;
  wire [3:0]M04_AXI_wstrb;
  wire M04_AXI_wvalid;
  wire [6:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [6:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_3 auto_cc
       (.m_axi_aclk(M04_ACLK),
        .m_axi_araddr(M04_AXI_araddr),
        .m_axi_aresetn(M04_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M04_AXI_arready),
        .m_axi_arvalid(M04_AXI_arvalid),
        .m_axi_awaddr(M04_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M04_AXI_awready),
        .m_axi_awvalid(M04_AXI_awvalid),
        .m_axi_bready(M04_AXI_bready),
        .m_axi_bresp(M04_AXI_bresp),
        .m_axi_bvalid(M04_AXI_bvalid),
        .m_axi_rdata(M04_AXI_rdata),
        .m_axi_rready(M04_AXI_rready),
        .m_axi_rresp(M04_AXI_rresp),
        .m_axi_rvalid(M04_AXI_rvalid),
        .m_axi_wdata(M04_AXI_wdata),
        .m_axi_wready(M04_AXI_wready),
        .m_axi_wstrb(M04_AXI_wstrb),
        .m_axi_wvalid(M04_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m04_couplers_imp_PW9X03
   (s_axis_tready,
    M04_AXIS_tvalid,
    M04_AXIS_tdata,
    M04_AXIS_tstrb,
    M04_AXIS_tkeep,
    M04_AXIS_tlast,
    M04_AXIS_tid,
    M04_AXIS_tdest,
    M04_AXIS_tuser,
    M04_AXIS_ACLK,
    M04_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M04_AXIS_tready);
  output s_axis_tready;
  output M04_AXIS_tvalid;
  output [23:0]M04_AXIS_tdata;
  output [2:0]M04_AXIS_tstrb;
  output [2:0]M04_AXIS_tkeep;
  output M04_AXIS_tlast;
  output [0:0]M04_AXIS_tid;
  output [0:0]M04_AXIS_tdest;
  output [2:0]M04_AXIS_tuser;
  input M04_AXIS_ACLK;
  input M04_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M04_AXIS_tready;

  wire M04_AXIS_ACLK;
  wire M04_AXIS_ARESETN;
  wire [23:0]M04_AXIS_tdata;
  wire [0:0]M04_AXIS_tdest;
  wire [0:0]M04_AXIS_tid;
  wire [2:0]M04_AXIS_tkeep;
  wire M04_AXIS_tlast;
  wire M04_AXIS_tready;
  wire [2:0]M04_AXIS_tstrb;
  wire [2:0]M04_AXIS_tuser;
  wire M04_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m04_regslice_0 m04_regslice
       (.aclk(M04_AXIS_ACLK),
        .aresetn(M04_AXIS_ARESETN),
        .m_axis_tdata(M04_AXIS_tdata),
        .m_axis_tdest(M04_AXIS_tdest),
        .m_axis_tid(M04_AXIS_tid),
        .m_axis_tkeep(M04_AXIS_tkeep),
        .m_axis_tlast(M04_AXIS_tlast),
        .m_axis_tready(M04_AXIS_tready),
        .m_axis_tstrb(M04_AXIS_tstrb),
        .m_axis_tuser(M04_AXIS_tuser),
        .m_axis_tvalid(M04_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m05_couplers_imp_1OR26FK
   (s_axis_tready,
    M05_AXIS_tvalid,
    M05_AXIS_tdata,
    M05_AXIS_tstrb,
    M05_AXIS_tkeep,
    M05_AXIS_tlast,
    M05_AXIS_tid,
    M05_AXIS_tdest,
    M05_AXIS_tuser,
    M05_AXIS_ACLK,
    M05_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M05_AXIS_tready);
  output s_axis_tready;
  output M05_AXIS_tvalid;
  output [23:0]M05_AXIS_tdata;
  output [2:0]M05_AXIS_tstrb;
  output [2:0]M05_AXIS_tkeep;
  output [0:0]M05_AXIS_tlast;
  output [0:0]M05_AXIS_tid;
  output [0:0]M05_AXIS_tdest;
  output [2:0]M05_AXIS_tuser;
  input M05_AXIS_ACLK;
  input M05_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M05_AXIS_tready;

  wire M05_AXIS_ACLK;
  wire M05_AXIS_ARESETN;
  wire [23:0]M05_AXIS_tdata;
  wire [0:0]M05_AXIS_tdest;
  wire [0:0]M05_AXIS_tid;
  wire [2:0]M05_AXIS_tkeep;
  wire [0:0]M05_AXIS_tlast;
  wire M05_AXIS_tready;
  wire [2:0]M05_AXIS_tstrb;
  wire [2:0]M05_AXIS_tuser;
  wire M05_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m05_regslice_0 m05_regslice
       (.aclk(M05_AXIS_ACLK),
        .aresetn(M05_AXIS_ARESETN),
        .m_axis_tdata(M05_AXIS_tdata),
        .m_axis_tdest(M05_AXIS_tdest),
        .m_axis_tid(M05_AXIS_tid),
        .m_axis_tkeep(M05_AXIS_tkeep),
        .m_axis_tlast(M05_AXIS_tlast),
        .m_axis_tready(M05_AXIS_tready),
        .m_axis_tstrb(M05_AXIS_tstrb),
        .m_axis_tuser(M05_AXIS_tuser),
        .m_axis_tvalid(M05_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m05_couplers_imp_8OUFK5
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M05_AXI_awaddr,
    M05_AXI_awvalid,
    M05_AXI_wdata,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M05_AXI_bready,
    M05_AXI_araddr,
    M05_AXI_arvalid,
    M05_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_awready,
    M05_AXI_wready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_arready,
    M05_AXI_rdata,
    M05_AXI_rresp,
    M05_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [10:0]M05_AXI_awaddr;
  output M05_AXI_awvalid;
  output [31:0]M05_AXI_wdata;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  output M05_AXI_bready;
  output [10:0]M05_AXI_araddr;
  output M05_AXI_arvalid;
  output M05_AXI_rready;
  input ACLK;
  input ARESETN;
  input [10:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [10:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M05_ACLK;
  input M05_ARESETN;
  input M05_AXI_awready;
  input M05_AXI_wready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input M05_AXI_arready;
  input [31:0]M05_AXI_rdata;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M05_ACLK;
  wire M05_ARESETN;
  wire [10:0]M05_AXI_araddr;
  wire M05_AXI_arready;
  wire M05_AXI_arvalid;
  wire [10:0]M05_AXI_awaddr;
  wire M05_AXI_awready;
  wire M05_AXI_awvalid;
  wire M05_AXI_bready;
  wire [1:0]M05_AXI_bresp;
  wire M05_AXI_bvalid;
  wire [31:0]M05_AXI_rdata;
  wire M05_AXI_rready;
  wire [1:0]M05_AXI_rresp;
  wire M05_AXI_rvalid;
  wire [31:0]M05_AXI_wdata;
  wire M05_AXI_wready;
  wire [3:0]M05_AXI_wstrb;
  wire M05_AXI_wvalid;
  wire [10:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [10:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_4 auto_cc
       (.m_axi_aclk(M05_ACLK),
        .m_axi_araddr(M05_AXI_araddr),
        .m_axi_aresetn(M05_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M05_AXI_arready),
        .m_axi_arvalid(M05_AXI_arvalid),
        .m_axi_awaddr(M05_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M05_AXI_awready),
        .m_axi_awvalid(M05_AXI_awvalid),
        .m_axi_bready(M05_AXI_bready),
        .m_axi_bresp(M05_AXI_bresp),
        .m_axi_bvalid(M05_AXI_bvalid),
        .m_axi_rdata(M05_AXI_rdata),
        .m_axi_rready(M05_AXI_rready),
        .m_axi_rresp(M05_AXI_rresp),
        .m_axi_rvalid(M05_AXI_rvalid),
        .m_axi_wdata(M05_AXI_wdata),
        .m_axi_wready(M05_AXI_wready),
        .m_axi_wstrb(M05_AXI_wstrb),
        .m_axi_wvalid(M05_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m06_couplers_imp_124KRDG
   (s_axis_tready,
    M06_AXIS_tvalid,
    M06_AXIS_tdata,
    M06_AXIS_tstrb,
    M06_AXIS_tkeep,
    M06_AXIS_tlast,
    M06_AXIS_tid,
    M06_AXIS_tdest,
    M06_AXIS_tuser,
    M06_AXIS_ACLK,
    M06_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M06_AXIS_tready);
  output s_axis_tready;
  output M06_AXIS_tvalid;
  output [23:0]M06_AXIS_tdata;
  output [2:0]M06_AXIS_tstrb;
  output [2:0]M06_AXIS_tkeep;
  output [0:0]M06_AXIS_tlast;
  output [0:0]M06_AXIS_tid;
  output [0:0]M06_AXIS_tdest;
  output [2:0]M06_AXIS_tuser;
  input M06_AXIS_ACLK;
  input M06_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M06_AXIS_tready;

  wire M06_AXIS_ACLK;
  wire M06_AXIS_ARESETN;
  wire [23:0]M06_AXIS_tdata;
  wire [0:0]M06_AXIS_tdest;
  wire [0:0]M06_AXIS_tid;
  wire [2:0]M06_AXIS_tkeep;
  wire [0:0]M06_AXIS_tlast;
  wire M06_AXIS_tready;
  wire [2:0]M06_AXIS_tstrb;
  wire [2:0]M06_AXIS_tuser;
  wire M06_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m06_regslice_0 m06_regslice
       (.aclk(M06_AXIS_ACLK),
        .aresetn(M06_AXIS_ARESETN),
        .m_axis_tdata(M06_AXIS_tdata),
        .m_axis_tdest(M06_AXIS_tdest),
        .m_axis_tid(M06_AXIS_tid),
        .m_axis_tkeep(M06_AXIS_tkeep),
        .m_axis_tlast(M06_AXIS_tlast),
        .m_axis_tready(M06_AXIS_tready),
        .m_axis_tstrb(M06_AXIS_tstrb),
        .m_axis_tuser(M06_AXIS_tuser),
        .m_axis_tvalid(M06_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m06_couplers_imp_LB3B29
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M06_AXI_awaddr,
    M06_AXI_awvalid,
    M06_AXI_wdata,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M06_AXI_bready,
    M06_AXI_araddr,
    M06_AXI_arvalid,
    M06_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_awready,
    M06_AXI_wready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_arready,
    M06_AXI_rdata,
    M06_AXI_rresp,
    M06_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [10:0]M06_AXI_awaddr;
  output M06_AXI_awvalid;
  output [31:0]M06_AXI_wdata;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  output M06_AXI_bready;
  output [10:0]M06_AXI_araddr;
  output M06_AXI_arvalid;
  output M06_AXI_rready;
  input ACLK;
  input ARESETN;
  input [10:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [10:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M06_ACLK;
  input M06_ARESETN;
  input M06_AXI_awready;
  input M06_AXI_wready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input M06_AXI_arready;
  input [31:0]M06_AXI_rdata;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M06_ACLK;
  wire M06_ARESETN;
  wire [10:0]M06_AXI_araddr;
  wire M06_AXI_arready;
  wire M06_AXI_arvalid;
  wire [10:0]M06_AXI_awaddr;
  wire M06_AXI_awready;
  wire M06_AXI_awvalid;
  wire M06_AXI_bready;
  wire [1:0]M06_AXI_bresp;
  wire M06_AXI_bvalid;
  wire [31:0]M06_AXI_rdata;
  wire M06_AXI_rready;
  wire [1:0]M06_AXI_rresp;
  wire M06_AXI_rvalid;
  wire [31:0]M06_AXI_wdata;
  wire M06_AXI_wready;
  wire [3:0]M06_AXI_wstrb;
  wire M06_AXI_wvalid;
  wire [10:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [10:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_5 auto_cc
       (.m_axi_aclk(M06_ACLK),
        .m_axi_araddr(M06_AXI_araddr),
        .m_axi_aresetn(M06_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M06_AXI_arready),
        .m_axi_arvalid(M06_AXI_arvalid),
        .m_axi_awaddr(M06_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M06_AXI_awready),
        .m_axi_awvalid(M06_AXI_awvalid),
        .m_axi_bready(M06_AXI_bready),
        .m_axi_bresp(M06_AXI_bresp),
        .m_axi_bvalid(M06_AXI_bvalid),
        .m_axi_rdata(M06_AXI_rdata),
        .m_axi_rready(M06_AXI_rready),
        .m_axi_rresp(M06_AXI_rresp),
        .m_axi_rvalid(M06_AXI_rvalid),
        .m_axi_wdata(M06_AXI_wdata),
        .m_axi_wready(M06_AXI_wready),
        .m_axi_wstrb(M06_AXI_wstrb),
        .m_axi_wvalid(M06_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m07_couplers_imp_1KFZB7M
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M07_AXI_awaddr,
    M07_AXI_awvalid,
    M07_AXI_wdata,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M07_AXI_bready,
    M07_AXI_araddr,
    M07_AXI_arvalid,
    M07_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_awready,
    M07_AXI_wready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_arready,
    M07_AXI_rdata,
    M07_AXI_rresp,
    M07_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [10:0]M07_AXI_awaddr;
  output M07_AXI_awvalid;
  output [31:0]M07_AXI_wdata;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  output M07_AXI_bready;
  output [10:0]M07_AXI_araddr;
  output M07_AXI_arvalid;
  output M07_AXI_rready;
  input ACLK;
  input ARESETN;
  input [10:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [10:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M07_ACLK;
  input M07_ARESETN;
  input M07_AXI_awready;
  input M07_AXI_wready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input M07_AXI_arready;
  input [31:0]M07_AXI_rdata;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M07_ACLK;
  wire M07_ARESETN;
  wire [10:0]M07_AXI_araddr;
  wire M07_AXI_arready;
  wire M07_AXI_arvalid;
  wire [10:0]M07_AXI_awaddr;
  wire M07_AXI_awready;
  wire M07_AXI_awvalid;
  wire M07_AXI_bready;
  wire [1:0]M07_AXI_bresp;
  wire M07_AXI_bvalid;
  wire [31:0]M07_AXI_rdata;
  wire M07_AXI_rready;
  wire [1:0]M07_AXI_rresp;
  wire M07_AXI_rvalid;
  wire [31:0]M07_AXI_wdata;
  wire M07_AXI_wready;
  wire [3:0]M07_AXI_wstrb;
  wire M07_AXI_wvalid;
  wire [10:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [10:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_6 auto_cc
       (.m_axi_aclk(M07_ACLK),
        .m_axi_araddr(M07_AXI_araddr),
        .m_axi_aresetn(M07_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M07_AXI_arready),
        .m_axi_arvalid(M07_AXI_arvalid),
        .m_axi_awaddr(M07_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M07_AXI_awready),
        .m_axi_awvalid(M07_AXI_awvalid),
        .m_axi_bready(M07_AXI_bready),
        .m_axi_bresp(M07_AXI_bresp),
        .m_axi_bvalid(M07_AXI_bvalid),
        .m_axi_rdata(M07_AXI_rdata),
        .m_axi_rready(M07_AXI_rready),
        .m_axi_rresp(M07_AXI_rresp),
        .m_axi_rvalid(M07_AXI_rvalid),
        .m_axi_wdata(M07_AXI_wdata),
        .m_axi_wready(M07_AXI_wready),
        .m_axi_wstrb(M07_AXI_wstrb),
        .m_axi_wvalid(M07_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m07_couplers_imp_43XNMF
   (s_axis_tready,
    M07_AXIS_tvalid,
    M07_AXIS_tdata,
    M07_AXIS_tstrb,
    M07_AXIS_tkeep,
    M07_AXIS_tlast,
    M07_AXIS_tid,
    M07_AXIS_tdest,
    M07_AXIS_tuser,
    M07_AXIS_ACLK,
    M07_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M07_AXIS_tready);
  output s_axis_tready;
  output M07_AXIS_tvalid;
  output [23:0]M07_AXIS_tdata;
  output [2:0]M07_AXIS_tstrb;
  output [2:0]M07_AXIS_tkeep;
  output [0:0]M07_AXIS_tlast;
  output [0:0]M07_AXIS_tid;
  output [0:0]M07_AXIS_tdest;
  output [2:0]M07_AXIS_tuser;
  input M07_AXIS_ACLK;
  input M07_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M07_AXIS_tready;

  wire M07_AXIS_ACLK;
  wire M07_AXIS_ARESETN;
  wire [23:0]M07_AXIS_tdata;
  wire [0:0]M07_AXIS_tdest;
  wire [0:0]M07_AXIS_tid;
  wire [2:0]M07_AXIS_tkeep;
  wire [0:0]M07_AXIS_tlast;
  wire M07_AXIS_tready;
  wire [2:0]M07_AXIS_tstrb;
  wire [2:0]M07_AXIS_tuser;
  wire M07_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m07_regslice_0 m07_regslice
       (.aclk(M07_AXIS_ACLK),
        .aresetn(M07_AXIS_ARESETN),
        .m_axis_tdata(M07_AXIS_tdata),
        .m_axis_tdest(M07_AXIS_tdest),
        .m_axis_tid(M07_AXIS_tid),
        .m_axis_tkeep(M07_AXIS_tkeep),
        .m_axis_tlast(M07_AXIS_tlast),
        .m_axis_tready(M07_AXIS_tready),
        .m_axis_tstrb(M07_AXIS_tstrb),
        .m_axis_tuser(M07_AXIS_tuser),
        .m_axis_tvalid(M07_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m08_couplers_imp_1JKRG8Y
   (s_axis_tready,
    M08_AXIS_tvalid,
    M08_AXIS_tdata,
    M08_AXIS_tstrb,
    M08_AXIS_tkeep,
    M08_AXIS_tlast,
    M08_AXIS_tid,
    M08_AXIS_tdest,
    M08_AXIS_tuser,
    M08_AXIS_ACLK,
    M08_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M08_AXIS_tready);
  output s_axis_tready;
  output M08_AXIS_tvalid;
  output [23:0]M08_AXIS_tdata;
  output [2:0]M08_AXIS_tstrb;
  output [2:0]M08_AXIS_tkeep;
  output M08_AXIS_tlast;
  output [0:0]M08_AXIS_tid;
  output [0:0]M08_AXIS_tdest;
  output [2:0]M08_AXIS_tuser;
  input M08_AXIS_ACLK;
  input M08_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [0:0]m_axis_tdest;
  input [2:0]m_axis_tuser;
  input M08_AXIS_tready;

  wire M08_AXIS_ACLK;
  wire M08_AXIS_ARESETN;
  wire [23:0]M08_AXIS_tdata;
  wire [0:0]M08_AXIS_tdest;
  wire [0:0]M08_AXIS_tid;
  wire [2:0]M08_AXIS_tkeep;
  wire M08_AXIS_tlast;
  wire M08_AXIS_tready;
  wire [2:0]M08_AXIS_tstrb;
  wire [2:0]M08_AXIS_tuser;
  wire M08_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [2:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_m08_regslice_0 m08_regslice
       (.aclk(M08_AXIS_ACLK),
        .aresetn(M08_AXIS_ARESETN),
        .m_axis_tdata(M08_AXIS_tdata),
        .m_axis_tdest(M08_AXIS_tdest),
        .m_axis_tid(M08_AXIS_tid),
        .m_axis_tkeep(M08_AXIS_tkeep),
        .m_axis_tlast(M08_AXIS_tlast),
        .m_axis_tready(M08_AXIS_tready),
        .m_axis_tstrb(M08_AXIS_tstrb),
        .m_axis_tuser(M08_AXIS_tuser),
        .m_axis_tvalid(M08_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module system_v_proc_ss_0_0_m08_couplers_imp_3V6SLZ
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M08_AXI_awaddr,
    M08_AXI_awvalid,
    M08_AXI_wdata,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M08_AXI_bready,
    M08_AXI_araddr,
    M08_AXI_arvalid,
    M08_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_awready,
    M08_AXI_wready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_arready,
    M08_AXI_rdata,
    M08_AXI_rresp,
    M08_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [8:0]M08_AXI_awaddr;
  output M08_AXI_awvalid;
  output [31:0]M08_AXI_wdata;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  output M08_AXI_bready;
  output [8:0]M08_AXI_araddr;
  output M08_AXI_arvalid;
  output M08_AXI_rready;
  input ACLK;
  input ARESETN;
  input [8:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [8:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M08_ACLK;
  input M08_ARESETN;
  input M08_AXI_awready;
  input M08_AXI_wready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input M08_AXI_arready;
  input [31:0]M08_AXI_rdata;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M08_ACLK;
  wire M08_ARESETN;
  wire [8:0]M08_AXI_araddr;
  wire M08_AXI_arready;
  wire M08_AXI_arvalid;
  wire [8:0]M08_AXI_awaddr;
  wire M08_AXI_awready;
  wire M08_AXI_awvalid;
  wire M08_AXI_bready;
  wire [1:0]M08_AXI_bresp;
  wire M08_AXI_bvalid;
  wire [31:0]M08_AXI_rdata;
  wire M08_AXI_rready;
  wire [1:0]M08_AXI_rresp;
  wire M08_AXI_rvalid;
  wire [31:0]M08_AXI_wdata;
  wire M08_AXI_wready;
  wire [3:0]M08_AXI_wstrb;
  wire M08_AXI_wvalid;
  wire [8:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [8:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_7 auto_cc
       (.m_axi_aclk(M08_ACLK),
        .m_axi_araddr(M08_AXI_araddr),
        .m_axi_aresetn(M08_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M08_AXI_arready),
        .m_axi_arvalid(M08_AXI_arvalid),
        .m_axi_awaddr(M08_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M08_AXI_awready),
        .m_axi_awvalid(M08_AXI_awvalid),
        .m_axi_bready(M08_AXI_bready),
        .m_axi_bresp(M08_AXI_bresp),
        .m_axi_bvalid(M08_AXI_bvalid),
        .m_axi_rdata(M08_AXI_rdata),
        .m_axi_rready(M08_AXI_rready),
        .m_axi_rresp(M08_AXI_rresp),
        .m_axi_rvalid(M08_AXI_rvalid),
        .m_axi_wdata(M08_AXI_wdata),
        .m_axi_wready(M08_AXI_wready),
        .m_axi_wstrb(M08_AXI_wstrb),
        .m_axi_wvalid(M08_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m09_couplers_imp_12DB9JO
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M09_AXI_awaddr,
    M09_AXI_awvalid,
    M09_AXI_wdata,
    M09_AXI_wvalid,
    M09_AXI_bready,
    M09_AXI_araddr,
    M09_AXI_arvalid,
    M09_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_awready,
    M09_AXI_wready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_arready,
    M09_AXI_rdata,
    M09_AXI_rresp,
    M09_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [8:0]M09_AXI_awaddr;
  output M09_AXI_awvalid;
  output [31:0]M09_AXI_wdata;
  output M09_AXI_wvalid;
  output M09_AXI_bready;
  output [8:0]M09_AXI_araddr;
  output M09_AXI_arvalid;
  output M09_AXI_rready;
  input ACLK;
  input ARESETN;
  input [8:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [8:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M09_ACLK;
  input M09_ARESETN;
  input M09_AXI_awready;
  input M09_AXI_wready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input M09_AXI_arready;
  input [31:0]M09_AXI_rdata;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M09_ACLK;
  wire M09_ARESETN;
  wire [8:0]M09_AXI_araddr;
  wire M09_AXI_arready;
  wire M09_AXI_arvalid;
  wire [8:0]M09_AXI_awaddr;
  wire M09_AXI_awready;
  wire M09_AXI_awvalid;
  wire M09_AXI_bready;
  wire [1:0]M09_AXI_bresp;
  wire M09_AXI_bvalid;
  wire [31:0]M09_AXI_rdata;
  wire M09_AXI_rready;
  wire [1:0]M09_AXI_rresp;
  wire M09_AXI_rvalid;
  wire [31:0]M09_AXI_wdata;
  wire M09_AXI_wready;
  wire M09_AXI_wvalid;
  wire [8:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [8:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_auto_cc_m_axi_wstrb_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_8 auto_cc
       (.m_axi_aclk(M09_ACLK),
        .m_axi_araddr(M09_AXI_araddr),
        .m_axi_aresetn(M09_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M09_AXI_arready),
        .m_axi_arvalid(M09_AXI_arvalid),
        .m_axi_awaddr(M09_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M09_AXI_awready),
        .m_axi_awvalid(M09_AXI_awvalid),
        .m_axi_bready(M09_AXI_bready),
        .m_axi_bresp(M09_AXI_bresp),
        .m_axi_bvalid(M09_AXI_bvalid),
        .m_axi_rdata(M09_AXI_rdata),
        .m_axi_rready(M09_AXI_rready),
        .m_axi_rresp(M09_AXI_rresp),
        .m_axi_rvalid(M09_AXI_rvalid),
        .m_axi_wdata(M09_AXI_wdata),
        .m_axi_wready(M09_AXI_wready),
        .m_axi_wstrb(NLW_auto_cc_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wvalid(M09_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m10_couplers_imp_1AQE5K
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M10_AXI_awaddr,
    M10_AXI_awvalid,
    M10_AXI_wdata,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M10_AXI_bready,
    M10_AXI_araddr,
    M10_AXI_arvalid,
    M10_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_awready,
    M10_AXI_wready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_arready,
    M10_AXI_rdata,
    M10_AXI_rresp,
    M10_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [6:0]M10_AXI_awaddr;
  output M10_AXI_awvalid;
  output [31:0]M10_AXI_wdata;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  output M10_AXI_bready;
  output [6:0]M10_AXI_araddr;
  output M10_AXI_arvalid;
  output M10_AXI_rready;
  input ACLK;
  input ARESETN;
  input [6:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [6:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M10_ACLK;
  input M10_ARESETN;
  input M10_AXI_awready;
  input M10_AXI_wready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input M10_AXI_arready;
  input [31:0]M10_AXI_rdata;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M10_ACLK;
  wire M10_ARESETN;
  wire [6:0]M10_AXI_araddr;
  wire M10_AXI_arready;
  wire M10_AXI_arvalid;
  wire [6:0]M10_AXI_awaddr;
  wire M10_AXI_awready;
  wire M10_AXI_awvalid;
  wire M10_AXI_bready;
  wire [1:0]M10_AXI_bresp;
  wire M10_AXI_bvalid;
  wire [31:0]M10_AXI_rdata;
  wire M10_AXI_rready;
  wire [1:0]M10_AXI_rresp;
  wire M10_AXI_rvalid;
  wire [31:0]M10_AXI_wdata;
  wire M10_AXI_wready;
  wire [3:0]M10_AXI_wstrb;
  wire M10_AXI_wvalid;
  wire [6:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [6:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_9 auto_cc
       (.m_axi_aclk(M10_ACLK),
        .m_axi_araddr(M10_AXI_araddr),
        .m_axi_aresetn(M10_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M10_AXI_arready),
        .m_axi_arvalid(M10_AXI_arvalid),
        .m_axi_awaddr(M10_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M10_AXI_awready),
        .m_axi_awvalid(M10_AXI_awvalid),
        .m_axi_bready(M10_AXI_bready),
        .m_axi_bresp(M10_AXI_bresp),
        .m_axi_bvalid(M10_AXI_bvalid),
        .m_axi_rdata(M10_AXI_rdata),
        .m_axi_rready(M10_AXI_rready),
        .m_axi_rresp(M10_AXI_rresp),
        .m_axi_rvalid(M10_AXI_rvalid),
        .m_axi_wdata(M10_AXI_wdata),
        .m_axi_wready(M10_AXI_wready),
        .m_axi_wstrb(M10_AXI_wstrb),
        .m_axi_wvalid(M10_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_m11_couplers_imp_10CYW6J
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M11_AXI_awaddr,
    M11_AXI_awvalid,
    M11_AXI_wdata,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M11_AXI_bready,
    M11_AXI_araddr,
    M11_AXI_arvalid,
    M11_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_awready,
    M11_AXI_wready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_arready,
    M11_AXI_rdata,
    M11_AXI_rresp,
    M11_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [8:0]M11_AXI_awaddr;
  output M11_AXI_awvalid;
  output [31:0]M11_AXI_wdata;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  output M11_AXI_bready;
  output [8:0]M11_AXI_araddr;
  output M11_AXI_arvalid;
  output M11_AXI_rready;
  input ACLK;
  input ARESETN;
  input [8:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [8:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M11_ACLK;
  input M11_ARESETN;
  input M11_AXI_awready;
  input M11_AXI_wready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input M11_AXI_arready;
  input [31:0]M11_AXI_rdata;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M11_ACLK;
  wire M11_ARESETN;
  wire [8:0]M11_AXI_araddr;
  wire M11_AXI_arready;
  wire M11_AXI_arvalid;
  wire [8:0]M11_AXI_awaddr;
  wire M11_AXI_awready;
  wire M11_AXI_awvalid;
  wire M11_AXI_bready;
  wire [1:0]M11_AXI_bresp;
  wire M11_AXI_bvalid;
  wire [31:0]M11_AXI_rdata;
  wire M11_AXI_rready;
  wire [1:0]M11_AXI_rresp;
  wire M11_AXI_rvalid;
  wire [31:0]M11_AXI_wdata;
  wire M11_AXI_wready;
  wire [3:0]M11_AXI_wstrb;
  wire M11_AXI_wvalid;
  wire [8:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [8:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_auto_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_auto_cc_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_10 auto_cc
       (.m_axi_aclk(M11_ACLK),
        .m_axi_araddr(M11_AXI_araddr),
        .m_axi_aresetn(M11_ARESETN),
        .m_axi_arprot(NLW_auto_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M11_AXI_arready),
        .m_axi_arvalid(M11_AXI_arvalid),
        .m_axi_awaddr(M11_AXI_awaddr),
        .m_axi_awprot(NLW_auto_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M11_AXI_awready),
        .m_axi_awvalid(M11_AXI_awvalid),
        .m_axi_bready(M11_AXI_bready),
        .m_axi_bresp(M11_AXI_bresp),
        .m_axi_bvalid(M11_AXI_bvalid),
        .m_axi_rdata(M11_AXI_rdata),
        .m_axi_rready(M11_AXI_rready),
        .m_axi_rresp(M11_AXI_rresp),
        .m_axi_rvalid(M11_AXI_rvalid),
        .m_axi_wdata(M11_AXI_wdata),
        .m_axi_wready(M11_AXI_wready),
        .m_axi_wstrb(M11_AXI_wstrb),
        .m_axi_wvalid(M11_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

module system_v_proc_ss_0_0_s00_couplers_imp_1VGAQIZ
   (S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    ACLK,
    ARESETN,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_rready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid);
  output S00_AXI_arready;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  output m_axi_rready;
  input ACLK;
  input ARESETN;
  input [31:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input [0:0]s_axi_arready;
  input [255:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rlast;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [127:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rready;
  wire [0:0]s_axi_arready;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [3:0]NLW_auto_us_df_m_axi_arregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_us_df_0 auto_us_df
       (.m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(s_axi_arready),
        .m_axi_arregion(NLW_auto_us_df_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rlast(s_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_aresetn(ARESETN),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid));
endmodule

module system_v_proc_ss_0_0_s01_couplers_imp_WE1KEG
   (S01_AXI_awready,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    ACLK,
    ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awvalid,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_bready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid);
  output S01_AXI_awready;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  input ACLK;
  input ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input S01_AXI_awvalid;
  input [63:0]S01_AXI_wdata;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  input S01_AXI_bready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [7:0]S01_AXI_awlen;
  wire [2:0]S01_AXI_awprot;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [63:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [7:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire [31:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [0:0]s_axi_wready;
  wire [3:0]NLW_auto_us_df_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_us_df_1 auto_us_df
       (.m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(s_axi_awready),
        .m_axi_awregion(NLW_auto_us_df_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_aresetn(ARESETN),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S01_AXI_awsize),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
endmodule

module system_v_proc_ss_0_0_s02_couplers_imp_AV1SZW
   (S02_AXI_awready,
    S02_AXI_wready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_arready,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    ACLK,
    ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awregion,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_bready,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arregion,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_rready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid);
  output S02_AXI_awready;
  output S02_AXI_wready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output S02_AXI_arready;
  output [31:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  output m_axi_rready;
  input ACLK;
  input ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awsize;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awregion;
  input [3:0]S02_AXI_awqos;
  input S02_AXI_awvalid;
  input [31:0]S02_AXI_wdata;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  input S02_AXI_bready;
  input [31:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arregion;
  input [3:0]S02_AXI_arqos;
  input S02_AXI_arvalid;
  input S02_AXI_rready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [255:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rlast;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [31:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [31:0]S02_AXI_rdata;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [3:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire [31:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;
  wire [3:0]NLW_auto_us_df_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_auto_us_df_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_us_df_2 auto_us_df
       (.m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(s_axi_arready),
        .m_axi_arregion(NLW_auto_us_df_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(s_axi_awready),
        .m_axi_awregion(NLW_auto_us_df_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rlast(s_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(S02_AXI_araddr),
        .s_axi_arburst(S02_AXI_arburst),
        .s_axi_arcache(S02_AXI_arcache),
        .s_axi_aresetn(ARESETN),
        .s_axi_arlen(S02_AXI_arlen),
        .s_axi_arlock(S02_AXI_arlock),
        .s_axi_arprot(S02_AXI_arprot),
        .s_axi_arqos(S02_AXI_arqos),
        .s_axi_arready(S02_AXI_arready),
        .s_axi_arregion(S02_AXI_arregion),
        .s_axi_arsize(S02_AXI_arsize),
        .s_axi_arvalid(S02_AXI_arvalid),
        .s_axi_awaddr(S02_AXI_awaddr),
        .s_axi_awburst(S02_AXI_awburst),
        .s_axi_awcache(S02_AXI_awcache),
        .s_axi_awlen(S02_AXI_awlen),
        .s_axi_awlock(S02_AXI_awlock),
        .s_axi_awprot(S02_AXI_awprot),
        .s_axi_awqos(S02_AXI_awqos),
        .s_axi_awready(S02_AXI_awready),
        .s_axi_awregion(S02_AXI_awregion),
        .s_axi_awsize(S02_AXI_awsize),
        .s_axi_awvalid(S02_AXI_awvalid),
        .s_axi_bready(S02_AXI_bready),
        .s_axi_bresp(S02_AXI_bresp),
        .s_axi_bvalid(S02_AXI_bvalid),
        .s_axi_rdata(S02_AXI_rdata),
        .s_axi_rlast(S02_AXI_rlast),
        .s_axi_rready(S02_AXI_rready),
        .s_axi_rresp(S02_AXI_rresp),
        .s_axi_rvalid(S02_AXI_rvalid),
        .s_axi_wdata(S02_AXI_wdata),
        .s_axi_wlast(S02_AXI_wlast),
        .s_axi_wready(S02_AXI_wready),
        .s_axi_wstrb(S02_AXI_wstrb),
        .s_axi_wvalid(S02_AXI_wvalid));
endmodule

module system_v_proc_ss_0_0_s03_couplers_imp_1XMVDZ8
   (S03_AXIS_tready,
    M_AXIS_tvalid,
    M_AXIS_tdata,
    M_AXIS_tstrb,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tid,
    M_AXIS_tdest,
    M_AXIS_tuser,
    S03_AXIS_ARESETN,
    ARESETN,
    S03_AXIS_ACLK,
    S03_AXIS_tvalid,
    S03_AXIS_tdata,
    S03_AXIS_tkeep,
    S03_AXIS_tlast,
    S03_AXIS_tuser,
    ACLK,
    M_AXIS_tready);
  output S03_AXIS_tready;
  output M_AXIS_tvalid;
  output [23:0]M_AXIS_tdata;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  output [0:0]M_AXIS_tid;
  output [0:0]M_AXIS_tdest;
  output [2:0]M_AXIS_tuser;
  input S03_AXIS_ARESETN;
  input ARESETN;
  input S03_AXIS_ACLK;
  input S03_AXIS_tvalid;
  input [47:0]S03_AXIS_tdata;
  input [5:0]S03_AXIS_tkeep;
  input S03_AXIS_tlast;
  input [5:0]S03_AXIS_tuser;
  input ACLK;
  input M_AXIS_tready;

  wire ACLK;
  wire ARESETN;
  wire [23:0]M_AXIS_tdata;
  wire [0:0]M_AXIS_tdest;
  wire [0:0]M_AXIS_tid;
  wire [2:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire [2:0]M_AXIS_tstrb;
  wire [2:0]M_AXIS_tuser;
  wire M_AXIS_tvalid;
  wire S03_AXIS_ACLK;
  wire S03_AXIS_ARESETN;
  wire [47:0]S03_AXIS_tdata;
  wire [5:0]S03_AXIS_tkeep;
  wire S03_AXIS_tlast;
  wire S03_AXIS_tready;
  wire [5:0]S03_AXIS_tuser;
  wire S03_AXIS_tvalid;
  wire [47:0]auto_cc_to_auto_ds_TDATA;
  wire [5:0]auto_cc_to_auto_ds_TKEEP;
  wire auto_cc_to_auto_ds_TLAST;
  wire auto_cc_to_auto_ds_TREADY;
  wire [5:0]auto_cc_to_auto_ds_TUSER;
  wire auto_cc_to_auto_ds_TVALID;
  wire [23:0]auto_ds_to_auto_ss_slid_TDATA;
  wire [2:0]auto_ds_to_auto_ss_slid_TKEEP;
  wire auto_ds_to_auto_ss_slid_TLAST;
  wire auto_ds_to_auto_ss_slid_TREADY;
  wire [2:0]auto_ds_to_auto_ss_slid_TUSER;
  wire auto_ds_to_auto_ss_slid_TVALID;

  (* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_12 auto_cc
       (.m_axis_aclk(ACLK),
        .m_axis_aresetn(ARESETN),
        .m_axis_tdata(auto_cc_to_auto_ds_TDATA),
        .m_axis_tkeep(auto_cc_to_auto_ds_TKEEP),
        .m_axis_tlast(auto_cc_to_auto_ds_TLAST),
        .m_axis_tready(auto_cc_to_auto_ds_TREADY),
        .m_axis_tuser(auto_cc_to_auto_ds_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ds_TVALID),
        .s_axis_aclk(S03_AXIS_ACLK),
        .s_axis_aresetn(S03_AXIS_ARESETN),
        .s_axis_tdata(S03_AXIS_tdata),
        .s_axis_tkeep(S03_AXIS_tkeep),
        .s_axis_tlast(S03_AXIS_tlast),
        .s_axis_tready(S03_AXIS_tready),
        .s_axis_tuser(S03_AXIS_tuser),
        .s_axis_tvalid(S03_AXIS_tvalid));
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_ds_0 auto_ds
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(auto_ds_to_auto_ss_slid_TDATA),
        .m_axis_tkeep(auto_ds_to_auto_ss_slid_TKEEP),
        .m_axis_tlast(auto_ds_to_auto_ss_slid_TLAST),
        .m_axis_tready(auto_ds_to_auto_ss_slid_TREADY),
        .m_axis_tuser(auto_ds_to_auto_ss_slid_TUSER),
        .m_axis_tvalid(auto_ds_to_auto_ss_slid_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ds_TDATA),
        .s_axis_tkeep(auto_cc_to_auto_ds_TKEEP),
        .s_axis_tlast(auto_cc_to_auto_ds_TLAST),
        .s_axis_tready(auto_cc_to_auto_ds_TREADY),
        .s_axis_tuser(auto_cc_to_auto_ds_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ds_TVALID));
  (* X_CORE_INFO = "top_bd_2d50_auto_ss_slid_0,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_ss_slid_0 auto_ss_slid
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tdest(M_AXIS_tdest),
        .m_axis_tid(M_AXIS_tid),
        .m_axis_tkeep(M_AXIS_tkeep),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tready(M_AXIS_tready),
        .m_axis_tstrb(M_AXIS_tstrb),
        .m_axis_tuser(M_AXIS_tuser),
        .m_axis_tvalid(M_AXIS_tvalid),
        .s_axis_tdata(auto_ds_to_auto_ss_slid_TDATA),
        .s_axis_tkeep(auto_ds_to_auto_ss_slid_TKEEP),
        .s_axis_tlast(auto_ds_to_auto_ss_slid_TLAST),
        .s_axis_tready(auto_ds_to_auto_ss_slid_TREADY),
        .s_axis_tuser(auto_ds_to_auto_ss_slid_TUSER),
        .s_axis_tvalid(auto_ds_to_auto_ss_slid_TVALID));
endmodule

module system_v_proc_ss_0_0_s09_couplers_imp_1JQ1MFX
   (S09_AXIS_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    S09_AXIS_ARESETN,
    ARESETN,
    S09_AXIS_ACLK,
    S09_AXIS_tvalid,
    S09_AXIS_tdata,
    S09_AXIS_tstrb,
    S09_AXIS_tkeep,
    S09_AXIS_tlast,
    S09_AXIS_tid,
    S09_AXIS_tdest,
    S09_AXIS_tuser,
    ACLK,
    s_axis_tready);
  output S09_AXIS_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input S09_AXIS_ARESETN;
  input ARESETN;
  input S09_AXIS_ACLK;
  input S09_AXIS_tvalid;
  input [23:0]S09_AXIS_tdata;
  input [2:0]S09_AXIS_tstrb;
  input [2:0]S09_AXIS_tkeep;
  input S09_AXIS_tlast;
  input S09_AXIS_tid;
  input S09_AXIS_tdest;
  input S09_AXIS_tuser;
  input ACLK;
  input [0:0]s_axis_tready;

  wire ACLK;
  wire ARESETN;
  wire S09_AXIS_ACLK;
  wire S09_AXIS_ARESETN;
  wire [23:0]S09_AXIS_tdata;
  wire S09_AXIS_tdest;
  wire S09_AXIS_tid;
  wire [2:0]S09_AXIS_tkeep;
  wire S09_AXIS_tlast;
  wire S09_AXIS_tready;
  wire [2:0]S09_AXIS_tstrb;
  wire S09_AXIS_tuser;
  wire S09_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [0:0]s_axis_tready;

  (* X_CORE_INFO = "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3" *) 
  system_v_proc_ss_0_0_bd_2d50_auto_cc_13 auto_cc
       (.m_axis_aclk(ACLK),
        .m_axis_aresetn(ARESETN),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(s_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(S09_AXIS_ACLK),
        .s_axis_aresetn(S09_AXIS_ARESETN),
        .s_axis_tdata(S09_AXIS_tdata),
        .s_axis_tdest(S09_AXIS_tdest),
        .s_axis_tid(S09_AXIS_tid),
        .s_axis_tkeep(S09_AXIS_tkeep),
        .s_axis_tlast(S09_AXIS_tlast),
        .s_axis_tready(S09_AXIS_tready),
        .s_axis_tstrb(S09_AXIS_tstrb),
        .s_axis_tuser(S09_AXIS_tuser),
        .s_axis_tvalid(S09_AXIS_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "system_v_proc_ss_0_0,bd_2d50,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_2d50,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_v_proc_ss_0_0
   (aclk_axis,
    aclk_ctrl,
    aclk_axi_mm,
    aresetn_ctrl,
    aresetn_io_axis,
    deint_field_id,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axis_tdata,
    s_axis_tdest,
    s_axis_tid,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid,
    m_axi_mm_awaddr,
    m_axi_mm_awlen,
    m_axi_mm_awsize,
    m_axi_mm_awburst,
    m_axi_mm_awlock,
    m_axi_mm_awcache,
    m_axi_mm_awprot,
    m_axi_mm_awregion,
    m_axi_mm_awqos,
    m_axi_mm_awvalid,
    m_axi_mm_awready,
    m_axi_mm_wdata,
    m_axi_mm_wstrb,
    m_axi_mm_wlast,
    m_axi_mm_wvalid,
    m_axi_mm_wready,
    m_axi_mm_bresp,
    m_axi_mm_bvalid,
    m_axi_mm_bready,
    m_axi_mm_araddr,
    m_axi_mm_arlen,
    m_axi_mm_arsize,
    m_axi_mm_arburst,
    m_axi_mm_arlock,
    m_axi_mm_arcache,
    m_axi_mm_arprot,
    m_axi_mm_arregion,
    m_axi_mm_arqos,
    m_axi_mm_arvalid,
    m_axi_mm_arready,
    m_axi_mm_rdata,
    m_axi_mm_rresp,
    m_axi_mm_rlast,
    m_axi_mm_rvalid,
    m_axi_mm_rready,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axi_mm_arid,
    m_axi_mm_awid,
    m_axi_mm_bid,
    m_axi_mm_rid,
    m_axis_tdest,
    m_axis_tid,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tstrb,
    m_axis_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_axis CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_axis, ASSOCIATED_RESET aresetn_io_axis, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF m_axis:s_axis, INSERT_VIP 0, ASSOCIATED_CLKEN s_axis_aclken" *) input aclk_axis;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF s_axi_ctrl, INSERT_VIP 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_axi_mm CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_axi_mm, ASSOCIATED_RESET aresetn_axi_mm, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF m_axi_mm, INSERT_VIP 0, ASSOCIATED_CLKEN m_axis_aclken" *) input aclk_axi_mm;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_io_axis RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_io_axis, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_io_axis;
  input deint_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [19:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input [0:0]s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output [0:0]s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input [0:0]s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output [0:0]s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output [0:0]s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input [0:0]s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) input [19:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input [0:0]s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output [0:0]s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output [0:0]s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 133333344, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [0:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [0:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [2:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TSTRB" *) input [2:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [0:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWADDR" *) output [31:0]m_axi_mm_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWLEN" *) output [7:0]m_axi_mm_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWSIZE" *) output [2:0]m_axi_mm_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWBURST" *) output [1:0]m_axi_mm_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWLOCK" *) output [0:0]m_axi_mm_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWCACHE" *) output [3:0]m_axi_mm_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWPROT" *) output [2:0]m_axi_mm_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWREGION" *) output [3:0]m_axi_mm_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWQOS" *) output [3:0]m_axi_mm_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWVALID" *) output [0:0]m_axi_mm_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWREADY" *) input [0:0]m_axi_mm_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WDATA" *) output [255:0]m_axi_mm_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WSTRB" *) output [31:0]m_axi_mm_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WLAST" *) output [0:0]m_axi_mm_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WVALID" *) output [0:0]m_axi_mm_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm WREADY" *) input [0:0]m_axi_mm_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BRESP" *) input [1:0]m_axi_mm_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BVALID" *) input [0:0]m_axi_mm_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BREADY" *) output [0:0]m_axi_mm_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARADDR" *) output [31:0]m_axi_mm_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARLEN" *) output [7:0]m_axi_mm_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARSIZE" *) output [2:0]m_axi_mm_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARBURST" *) output [1:0]m_axi_mm_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARLOCK" *) output [0:0]m_axi_mm_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARCACHE" *) output [3:0]m_axi_mm_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARPROT" *) output [2:0]m_axi_mm_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARREGION" *) output [3:0]m_axi_mm_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARQOS" *) output [3:0]m_axi_mm_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARVALID" *) output [0:0]m_axi_mm_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARREADY" *) input [0:0]m_axi_mm_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RDATA" *) input [255:0]m_axi_mm_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RRESP" *) input [1:0]m_axi_mm_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RLAST" *) input [0:0]m_axi_mm_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RVALID" *) input [0:0]m_axi_mm_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RREADY" *) output [0:0]m_axi_mm_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm ARID" *) output [1:0]m_axi_mm_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm AWID" *) output [1:0]m_axi_mm_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm BID" *) input [1:0]m_axi_mm_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mm, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 133333344, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]m_axi_mm_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDEST" *) output [0:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [0:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [2:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [2:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 3, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [2:0]m_axis_tuser;

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

  (* HW_HANDOFF = "system_v_proc_ss_0_0.hwdef" *) 
  system_v_proc_ss_0_0_bd_2d50 inst
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
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
