//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_2d50.bd
//Design : bd_2d50
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_2d50,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2d50,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=95,numReposBlks=55,numNonXlnxBlks=0,numHierBlks=40,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system_v_proc_ss_0_0.hwdef" *) 
module bd_2d50
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
  wire [31:0]intf_net_axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]intf_net_axi_interconnect_1_M00_AXI_ARCACHE;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_ARID;
  wire [7:0]intf_net_axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]intf_net_axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]intf_net_axi_interconnect_1_M00_AXI_ARQOS;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_ARREADY;
  wire [3:0]intf_net_axi_interconnect_1_M00_AXI_ARREGION;
  wire [2:0]intf_net_axi_interconnect_1_M00_AXI_ARSIZE;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]intf_net_axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]intf_net_axi_interconnect_1_M00_AXI_AWCACHE;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_AWID;
  wire [7:0]intf_net_axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]intf_net_axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]intf_net_axi_interconnect_1_M00_AXI_AWQOS;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_AWREADY;
  wire [3:0]intf_net_axi_interconnect_1_M00_AXI_AWREGION;
  wire [2:0]intf_net_axi_interconnect_1_M00_AXI_AWSIZE;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_AWVALID;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_BID;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_BRESP;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_BVALID;
  wire [255:0]intf_net_axi_interconnect_1_M00_AXI_RDATA;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_RID;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_RLAST;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]intf_net_axi_interconnect_1_M00_AXI_RRESP;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_RVALID;
  wire [255:0]intf_net_axi_interconnect_1_M00_AXI_WDATA;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_WLAST;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_WREADY;
  wire [31:0]intf_net_axi_interconnect_1_M00_AXI_WSTRB;
  wire [0:0]intf_net_axi_interconnect_1_M00_AXI_WVALID;
  wire [47:0]intf_net_axi_vdma_M_AXIS_MM2S_TDATA;
  wire [5:0]intf_net_axi_vdma_M_AXIS_MM2S_TKEEP;
  wire intf_net_axi_vdma_M_AXIS_MM2S_TLAST;
  wire intf_net_axi_vdma_M_AXIS_MM2S_TREADY;
  wire [0:0]intf_net_axi_vdma_M_AXIS_MM2S_TUSER;
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
  wire [19:0]intf_net_bdry_in_s_axi_ctrl_ARADDR;
  wire [2:0]intf_net_bdry_in_s_axi_ctrl_ARPROT;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_ARREADY;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_ARVALID;
  wire [19:0]intf_net_bdry_in_s_axi_ctrl_AWADDR;
  wire [2:0]intf_net_bdry_in_s_axi_ctrl_AWPROT;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_AWREADY;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_AWVALID;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_BREADY;
  wire [1:0]intf_net_bdry_in_s_axi_ctrl_BRESP;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_BVALID;
  wire [31:0]intf_net_bdry_in_s_axi_ctrl_RDATA;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_RREADY;
  wire [1:0]intf_net_bdry_in_s_axi_ctrl_RRESP;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_RVALID;
  wire [31:0]intf_net_bdry_in_s_axi_ctrl_WDATA;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_WREADY;
  wire [3:0]intf_net_bdry_in_s_axi_ctrl_WSTRB;
  wire [0:0]intf_net_bdry_in_s_axi_ctrl_WVALID;
  wire [23:0]intf_net_bdry_in_s_axis_TDATA;
  wire [0:0]intf_net_bdry_in_s_axis_TDEST;
  wire [0:0]intf_net_bdry_in_s_axis_TID;
  wire [2:0]intf_net_bdry_in_s_axis_TKEEP;
  wire intf_net_bdry_in_s_axis_TLAST;
  wire intf_net_bdry_in_s_axis_TREADY;
  wire [2:0]intf_net_bdry_in_s_axis_TSTRB;
  wire [0:0]intf_net_bdry_in_s_axis_TUSER;
  wire intf_net_bdry_in_s_axis_TVALID;
  wire [23:0]intf_net_csc_m_axis_video_TDATA;
  wire [0:0]intf_net_csc_m_axis_video_TDEST;
  wire [0:0]intf_net_csc_m_axis_video_TID;
  wire [2:0]intf_net_csc_m_axis_video_TKEEP;
  wire [0:0]intf_net_csc_m_axis_video_TLAST;
  wire [0:0]intf_net_csc_m_axis_video_TREADY;
  wire [2:0]intf_net_csc_m_axis_video_TSTRB;
  wire [0:0]intf_net_csc_m_axis_video_TUSER;
  wire intf_net_csc_m_axis_video_TVALID;
  wire [23:0]intf_net_deint_cc_M_AXIS_TDATA;
  wire [0:0]intf_net_deint_cc_M_AXIS_TDEST;
  wire [0:0]intf_net_deint_cc_M_AXIS_TID;
  wire [2:0]intf_net_deint_cc_M_AXIS_TKEEP;
  wire intf_net_deint_cc_M_AXIS_TLAST;
  wire intf_net_deint_cc_M_AXIS_TREADY;
  wire [2:0]intf_net_deint_cc_M_AXIS_TSTRB;
  wire intf_net_deint_cc_M_AXIS_TVALID;
  wire [23:0]intf_net_deint_ss_M_AXIS_TDATA;
  wire [0:0]intf_net_deint_ss_M_AXIS_TDEST;
  wire [0:0]intf_net_deint_ss_M_AXIS_TID;
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
  wire [0:0]intf_net_hcr_m_axis_video_TDEST;
  wire [0:0]intf_net_hcr_m_axis_video_TID;
  wire [2:0]intf_net_hcr_m_axis_video_TKEEP;
  wire [0:0]intf_net_hcr_m_axis_video_TLAST;
  wire intf_net_hcr_m_axis_video_TREADY;
  wire [2:0]intf_net_hcr_m_axis_video_TSTRB;
  wire [0:0]intf_net_hcr_m_axis_video_TUSER;
  wire intf_net_hcr_m_axis_video_TVALID;
  wire [23:0]intf_net_hsc_m_axis_video_TDATA;
  wire [0:0]intf_net_hsc_m_axis_video_TDEST;
  wire [0:0]intf_net_hsc_m_axis_video_TID;
  wire [2:0]intf_net_hsc_m_axis_video_TKEEP;
  wire [0:0]intf_net_hsc_m_axis_video_TLAST;
  wire [0:0]intf_net_hsc_m_axis_video_TREADY;
  wire [2:0]intf_net_hsc_m_axis_video_TSTRB;
  wire [0:0]intf_net_hsc_m_axis_video_TUSER;
  wire intf_net_hsc_m_axis_video_TVALID;
  wire [23:0]intf_net_input_size_set_M_AXIS_TDATA;
  wire [0:0]intf_net_input_size_set_M_AXIS_TDEST;
  wire [0:0]intf_net_input_size_set_M_AXIS_TID;
  wire [2:0]intf_net_input_size_set_M_AXIS_TKEEP;
  wire intf_net_input_size_set_M_AXIS_TLAST;
  wire [0:0]intf_net_input_size_set_M_AXIS_TREADY;
  wire [2:0]intf_net_input_size_set_M_AXIS_TSTRB;
  wire [0:0]intf_net_input_size_set_M_AXIS_TUSER;
  wire intf_net_input_size_set_M_AXIS_TVALID;
  wire [23:0]intf_net_ltr_m_axis_video_TDATA;
  wire [0:0]intf_net_ltr_m_axis_video_TDEST;
  wire [0:0]intf_net_ltr_m_axis_video_TID;
  wire [2:0]intf_net_ltr_m_axis_video_TKEEP;
  wire [0:0]intf_net_ltr_m_axis_video_TLAST;
  wire [0:0]intf_net_ltr_m_axis_video_TREADY;
  wire [2:0]intf_net_ltr_m_axis_video_TSTRB;
  wire [0:0]intf_net_ltr_m_axis_video_TUSER;
  wire intf_net_ltr_m_axis_video_TVALID;
  wire [23:0]intf_net_vcr_i_m_axis_video_TDATA;
  wire [0:0]intf_net_vcr_i_m_axis_video_TDEST;
  wire [0:0]intf_net_vcr_i_m_axis_video_TID;
  wire [2:0]intf_net_vcr_i_m_axis_video_TKEEP;
  wire [0:0]intf_net_vcr_i_m_axis_video_TLAST;
  wire intf_net_vcr_i_m_axis_video_TREADY;
  wire [2:0]intf_net_vcr_i_m_axis_video_TSTRB;
  wire [0:0]intf_net_vcr_i_m_axis_video_TUSER;
  wire intf_net_vcr_i_m_axis_video_TVALID;
  wire [23:0]intf_net_vcr_o_m_axis_video_TDATA;
  wire [0:0]intf_net_vcr_o_m_axis_video_TDEST;
  wire [0:0]intf_net_vcr_o_m_axis_video_TID;
  wire [2:0]intf_net_vcr_o_m_axis_video_TKEEP;
  wire [0:0]intf_net_vcr_o_m_axis_video_TLAST;
  wire intf_net_vcr_o_m_axis_video_TREADY;
  wire [2:0]intf_net_vcr_o_m_axis_video_TSTRB;
  wire [0:0]intf_net_vcr_o_m_axis_video_TUSER;
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
  wire [5:0]intf_net_vdma_trunc_M_AXIS_TUSER;
  wire intf_net_vdma_trunc_M_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M00_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M00_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M00_AXIS_TID;
  wire [2:0]intf_net_video_router_M00_AXIS_TKEEP;
  wire intf_net_video_router_M00_AXIS_TLAST;
  wire intf_net_video_router_M00_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M00_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M00_AXIS_TUSER;
  wire intf_net_video_router_M00_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M01_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M01_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M01_AXIS_TID;
  wire [2:0]intf_net_video_router_M01_AXIS_TKEEP;
  wire intf_net_video_router_M01_AXIS_TLAST;
  wire intf_net_video_router_M01_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M01_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M01_AXIS_TUSER;
  wire intf_net_video_router_M01_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M02_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M02_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M02_AXIS_TID;
  wire [2:0]intf_net_video_router_M02_AXIS_TKEEP;
  wire intf_net_video_router_M02_AXIS_TLAST;
  wire intf_net_video_router_M02_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M02_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M02_AXIS_TUSER;
  wire intf_net_video_router_M02_AXIS_TVALID;
  wire [47:0]intf_net_video_router_M03_AXIS_TDATA;
  wire [5:0]intf_net_video_router_M03_AXIS_TKEEP;
  wire intf_net_video_router_M03_AXIS_TLAST;
  wire intf_net_video_router_M03_AXIS_TREADY;
  wire [5:0]intf_net_video_router_M03_AXIS_TUSER;
  wire intf_net_video_router_M03_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M04_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M04_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M04_AXIS_TID;
  wire [2:0]intf_net_video_router_M04_AXIS_TKEEP;
  wire intf_net_video_router_M04_AXIS_TLAST;
  wire intf_net_video_router_M04_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M04_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M04_AXIS_TUSER;
  wire intf_net_video_router_M04_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M05_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M05_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M05_AXIS_TID;
  wire [2:0]intf_net_video_router_M05_AXIS_TKEEP;
  wire [0:0]intf_net_video_router_M05_AXIS_TLAST;
  wire intf_net_video_router_M05_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M05_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M05_AXIS_TUSER;
  wire intf_net_video_router_M05_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M06_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M06_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M06_AXIS_TID;
  wire [2:0]intf_net_video_router_M06_AXIS_TKEEP;
  wire [0:0]intf_net_video_router_M06_AXIS_TLAST;
  wire intf_net_video_router_M06_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M06_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M06_AXIS_TUSER;
  wire intf_net_video_router_M06_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M07_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M07_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M07_AXIS_TID;
  wire [2:0]intf_net_video_router_M07_AXIS_TKEEP;
  wire [0:0]intf_net_video_router_M07_AXIS_TLAST;
  wire intf_net_video_router_M07_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M07_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M07_AXIS_TUSER;
  wire intf_net_video_router_M07_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M08_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M08_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M08_AXIS_TID;
  wire [2:0]intf_net_video_router_M08_AXIS_TKEEP;
  wire intf_net_video_router_M08_AXIS_TLAST;
  wire intf_net_video_router_M08_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M08_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M08_AXIS_TUSER;
  wire intf_net_video_router_M08_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M09_AXIS_TDATA;
  wire [0:0]intf_net_video_router_M09_AXIS_TDEST;
  wire [0:0]intf_net_video_router_M09_AXIS_TID;
  wire [2:0]intf_net_video_router_M09_AXIS_TKEEP;
  wire intf_net_video_router_M09_AXIS_TLAST;
  wire intf_net_video_router_M09_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M09_AXIS_TSTRB;
  wire [2:0]intf_net_video_router_M09_AXIS_TUSER;
  wire intf_net_video_router_M09_AXIS_TVALID;
  wire [23:0]intf_net_vsc_m_axis_video_TDATA;
  wire [0:0]intf_net_vsc_m_axis_video_TDEST;
  wire [0:0]intf_net_vsc_m_axis_video_TID;
  wire [2:0]intf_net_vsc_m_axis_video_TKEEP;
  wire [0:0]intf_net_vsc_m_axis_video_TLAST;
  wire [0:0]intf_net_vsc_m_axis_video_TREADY;
  wire [2:0]intf_net_vsc_m_axis_video_TSTRB;
  wire [0:0]intf_net_vsc_m_axis_video_TUSER;
  wire intf_net_vsc_m_axis_video_TVALID;
  wire net_bdry_in_aclk_axi_mm;
  wire net_bdry_in_aclk_axis;
  wire net_bdry_in_aclk_ctrl;
  wire net_bdry_in_aresetn_ctrl;
  wire net_bdry_in_deint_field_id;
  wire [1:0]net_deint_cc_m_axis_tuser;
  wire [1:0]net_deint_concat_dout;
  wire [0:0]net_deint_fid_tap_Dout;
  wire [0:0]net_deint_ss_m_axis_tuser;
  wire [0:0]net_deint_tuser_tap_Dout;
  wire [0:0]net_proc_ss_ip_aresetn_Dout;
  wire [0:0]net_reset_sel_axi_mm_gpio_io_o;
  wire [1:0]net_reset_sel_axis_gpio_io_o;
  wire [0:0]net_rst_axi_mm_peripheral_aresetn;
  wire [0:0]net_rst_axis_peripheral_aresetn;
  wire [0:0]net_vid_in_aresetn_Dout;

  assign aresetn_io_axis[0] = net_vid_in_aresetn_Dout;
  assign intf_net_axi_interconnect_1_M00_AXI_ARREADY = m_axi_mm_arready[0];
  assign intf_net_axi_interconnect_1_M00_AXI_AWREADY = m_axi_mm_awready[0];
  assign intf_net_axi_interconnect_1_M00_AXI_BID = m_axi_mm_bid[1:0];
  assign intf_net_axi_interconnect_1_M00_AXI_BRESP = m_axi_mm_bresp[1:0];
  assign intf_net_axi_interconnect_1_M00_AXI_BVALID = m_axi_mm_bvalid[0];
  assign intf_net_axi_interconnect_1_M00_AXI_RDATA = m_axi_mm_rdata[255:0];
  assign intf_net_axi_interconnect_1_M00_AXI_RID = m_axi_mm_rid[1:0];
  assign intf_net_axi_interconnect_1_M00_AXI_RLAST = m_axi_mm_rlast[0];
  assign intf_net_axi_interconnect_1_M00_AXI_RRESP = m_axi_mm_rresp[1:0];
  assign intf_net_axi_interconnect_1_M00_AXI_RVALID = m_axi_mm_rvalid[0];
  assign intf_net_axi_interconnect_1_M00_AXI_WREADY = m_axi_mm_wready[0];
  assign intf_net_bdry_in_s_axi_ctrl_ARADDR = s_axi_ctrl_araddr[19:0];
  assign intf_net_bdry_in_s_axi_ctrl_ARPROT = s_axi_ctrl_arprot[2:0];
  assign intf_net_bdry_in_s_axi_ctrl_ARVALID = s_axi_ctrl_arvalid[0];
  assign intf_net_bdry_in_s_axi_ctrl_AWADDR = s_axi_ctrl_awaddr[19:0];
  assign intf_net_bdry_in_s_axi_ctrl_AWPROT = s_axi_ctrl_awprot[2:0];
  assign intf_net_bdry_in_s_axi_ctrl_AWVALID = s_axi_ctrl_awvalid[0];
  assign intf_net_bdry_in_s_axi_ctrl_BREADY = s_axi_ctrl_bready[0];
  assign intf_net_bdry_in_s_axi_ctrl_RREADY = s_axi_ctrl_rready[0];
  assign intf_net_bdry_in_s_axi_ctrl_WDATA = s_axi_ctrl_wdata[31:0];
  assign intf_net_bdry_in_s_axi_ctrl_WSTRB = s_axi_ctrl_wstrb[3:0];
  assign intf_net_bdry_in_s_axi_ctrl_WVALID = s_axi_ctrl_wvalid[0];
  assign intf_net_bdry_in_s_axis_TDATA = s_axis_tdata[23:0];
  assign intf_net_bdry_in_s_axis_TDEST = s_axis_tdest[0];
  assign intf_net_bdry_in_s_axis_TID = s_axis_tid[0];
  assign intf_net_bdry_in_s_axis_TKEEP = s_axis_tkeep[2:0];
  assign intf_net_bdry_in_s_axis_TLAST = s_axis_tlast;
  assign intf_net_bdry_in_s_axis_TSTRB = s_axis_tstrb[2:0];
  assign intf_net_bdry_in_s_axis_TUSER = s_axis_tuser[0];
  assign intf_net_bdry_in_s_axis_TVALID = s_axis_tvalid;
  assign intf_net_video_router_M00_AXIS_TREADY = m_axis_tready;
  assign m_axi_mm_araddr[31:0] = intf_net_axi_interconnect_1_M00_AXI_ARADDR;
  assign m_axi_mm_arburst[1:0] = intf_net_axi_interconnect_1_M00_AXI_ARBURST;
  assign m_axi_mm_arcache[3:0] = intf_net_axi_interconnect_1_M00_AXI_ARCACHE;
  assign m_axi_mm_arid[1:0] = intf_net_axi_interconnect_1_M00_AXI_ARID;
  assign m_axi_mm_arlen[7:0] = intf_net_axi_interconnect_1_M00_AXI_ARLEN;
  assign m_axi_mm_arlock[0] = intf_net_axi_interconnect_1_M00_AXI_ARLOCK;
  assign m_axi_mm_arprot[2:0] = intf_net_axi_interconnect_1_M00_AXI_ARPROT;
  assign m_axi_mm_arqos[3:0] = intf_net_axi_interconnect_1_M00_AXI_ARQOS;
  assign m_axi_mm_arregion[3:0] = intf_net_axi_interconnect_1_M00_AXI_ARREGION;
  assign m_axi_mm_arsize[2:0] = intf_net_axi_interconnect_1_M00_AXI_ARSIZE;
  assign m_axi_mm_arvalid[0] = intf_net_axi_interconnect_1_M00_AXI_ARVALID;
  assign m_axi_mm_awaddr[31:0] = intf_net_axi_interconnect_1_M00_AXI_AWADDR;
  assign m_axi_mm_awburst[1:0] = intf_net_axi_interconnect_1_M00_AXI_AWBURST;
  assign m_axi_mm_awcache[3:0] = intf_net_axi_interconnect_1_M00_AXI_AWCACHE;
  assign m_axi_mm_awid[1:0] = intf_net_axi_interconnect_1_M00_AXI_AWID;
  assign m_axi_mm_awlen[7:0] = intf_net_axi_interconnect_1_M00_AXI_AWLEN;
  assign m_axi_mm_awlock[0] = intf_net_axi_interconnect_1_M00_AXI_AWLOCK;
  assign m_axi_mm_awprot[2:0] = intf_net_axi_interconnect_1_M00_AXI_AWPROT;
  assign m_axi_mm_awqos[3:0] = intf_net_axi_interconnect_1_M00_AXI_AWQOS;
  assign m_axi_mm_awregion[3:0] = intf_net_axi_interconnect_1_M00_AXI_AWREGION;
  assign m_axi_mm_awsize[2:0] = intf_net_axi_interconnect_1_M00_AXI_AWSIZE;
  assign m_axi_mm_awvalid[0] = intf_net_axi_interconnect_1_M00_AXI_AWVALID;
  assign m_axi_mm_bready[0] = intf_net_axi_interconnect_1_M00_AXI_BREADY;
  assign m_axi_mm_rready[0] = intf_net_axi_interconnect_1_M00_AXI_RREADY;
  assign m_axi_mm_wdata[255:0] = intf_net_axi_interconnect_1_M00_AXI_WDATA;
  assign m_axi_mm_wlast[0] = intf_net_axi_interconnect_1_M00_AXI_WLAST;
  assign m_axi_mm_wstrb[31:0] = intf_net_axi_interconnect_1_M00_AXI_WSTRB;
  assign m_axi_mm_wvalid[0] = intf_net_axi_interconnect_1_M00_AXI_WVALID;
  assign m_axis_tdata[23:0] = intf_net_video_router_M00_AXIS_TDATA;
  assign m_axis_tdest[0] = intf_net_video_router_M00_AXIS_TDEST;
  assign m_axis_tid[0] = intf_net_video_router_M00_AXIS_TID;
  assign m_axis_tkeep[2:0] = intf_net_video_router_M00_AXIS_TKEEP;
  assign m_axis_tlast = intf_net_video_router_M00_AXIS_TLAST;
  assign m_axis_tstrb[2:0] = intf_net_video_router_M00_AXIS_TSTRB;
  assign m_axis_tuser[2:0] = intf_net_video_router_M00_AXIS_TUSER;
  assign m_axis_tvalid = intf_net_video_router_M00_AXIS_TVALID;
  assign net_bdry_in_aclk_axi_mm = aclk_axi_mm;
  assign net_bdry_in_aclk_axis = aclk_axis;
  assign net_bdry_in_aclk_ctrl = aclk_ctrl;
  assign net_bdry_in_aresetn_ctrl = aresetn_ctrl;
  assign net_bdry_in_deint_field_id = deint_field_id;
  assign s_axi_ctrl_arready[0] = intf_net_bdry_in_s_axi_ctrl_ARREADY;
  assign s_axi_ctrl_awready[0] = intf_net_bdry_in_s_axi_ctrl_AWREADY;
  assign s_axi_ctrl_bresp[1:0] = intf_net_bdry_in_s_axi_ctrl_BRESP;
  assign s_axi_ctrl_bvalid[0] = intf_net_bdry_in_s_axi_ctrl_BVALID;
  assign s_axi_ctrl_rdata[31:0] = intf_net_bdry_in_s_axi_ctrl_RDATA;
  assign s_axi_ctrl_rresp[1:0] = intf_net_bdry_in_s_axi_ctrl_RRESP;
  assign s_axi_ctrl_rvalid[0] = intf_net_bdry_in_s_axi_ctrl_RVALID;
  assign s_axi_ctrl_wready[0] = intf_net_bdry_in_s_axi_ctrl_WREADY;
  assign s_axis_tready = intf_net_bdry_in_s_axis_TREADY;
  bd_2d50_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(net_bdry_in_aclk_ctrl),
        .ARESETN(net_bdry_in_aresetn_ctrl),
        .M00_ACLK(net_bdry_in_aclk_ctrl),
        .M00_ARESETN(net_bdry_in_aresetn_ctrl),
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
        .M01_ACLK(net_bdry_in_aclk_axis),
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
        .M02_ACLK(net_bdry_in_aclk_axis),
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
        .M03_ACLK(net_bdry_in_aclk_axis),
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
        .M04_ACLK(net_bdry_in_aclk_axis),
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
        .M05_ACLK(net_bdry_in_aclk_axis),
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
        .M06_ACLK(net_bdry_in_aclk_axis),
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
        .M07_ACLK(net_bdry_in_aclk_axis),
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
        .M08_ACLK(net_bdry_in_aclk_axis),
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
        .M09_ACLK(net_bdry_in_aclk_axi_mm),
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
        .M10_ACLK(net_bdry_in_aclk_axi_mm),
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
        .M11_ACLK(net_bdry_in_aclk_axi_mm),
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
        .S00_ACLK(net_bdry_in_aclk_ctrl),
        .S00_ARESETN(net_bdry_in_aresetn_ctrl),
        .S00_AXI_araddr(intf_net_bdry_in_s_axi_ctrl_ARADDR),
        .S00_AXI_arprot(intf_net_bdry_in_s_axi_ctrl_ARPROT),
        .S00_AXI_arready(intf_net_bdry_in_s_axi_ctrl_ARREADY),
        .S00_AXI_arvalid(intf_net_bdry_in_s_axi_ctrl_ARVALID),
        .S00_AXI_awaddr(intf_net_bdry_in_s_axi_ctrl_AWADDR),
        .S00_AXI_awprot(intf_net_bdry_in_s_axi_ctrl_AWPROT),
        .S00_AXI_awready(intf_net_bdry_in_s_axi_ctrl_AWREADY),
        .S00_AXI_awvalid(intf_net_bdry_in_s_axi_ctrl_AWVALID),
        .S00_AXI_bready(intf_net_bdry_in_s_axi_ctrl_BREADY),
        .S00_AXI_bresp(intf_net_bdry_in_s_axi_ctrl_BRESP),
        .S00_AXI_bvalid(intf_net_bdry_in_s_axi_ctrl_BVALID),
        .S00_AXI_rdata(intf_net_bdry_in_s_axi_ctrl_RDATA),
        .S00_AXI_rready(intf_net_bdry_in_s_axi_ctrl_RREADY),
        .S00_AXI_rresp(intf_net_bdry_in_s_axi_ctrl_RRESP),
        .S00_AXI_rvalid(intf_net_bdry_in_s_axi_ctrl_RVALID),
        .S00_AXI_wdata(intf_net_bdry_in_s_axi_ctrl_WDATA),
        .S00_AXI_wready(intf_net_bdry_in_s_axi_ctrl_WREADY),
        .S00_AXI_wstrb(intf_net_bdry_in_s_axi_ctrl_WSTRB),
        .S00_AXI_wvalid(intf_net_bdry_in_s_axi_ctrl_WVALID));
  bd_2d50_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(net_bdry_in_aclk_axi_mm),
        .ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .M00_ACLK(net_bdry_in_aclk_axi_mm),
        .M00_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .M00_AXI_araddr(intf_net_axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(intf_net_axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(intf_net_axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(intf_net_axi_interconnect_1_M00_AXI_ARID),
        .M00_AXI_arlen(intf_net_axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(intf_net_axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(intf_net_axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(intf_net_axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(intf_net_axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arregion(intf_net_axi_interconnect_1_M00_AXI_ARREGION),
        .M00_AXI_arsize(intf_net_axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(intf_net_axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(intf_net_axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(intf_net_axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(intf_net_axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(intf_net_axi_interconnect_1_M00_AXI_AWID),
        .M00_AXI_awlen(intf_net_axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(intf_net_axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(intf_net_axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(intf_net_axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(intf_net_axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awregion(intf_net_axi_interconnect_1_M00_AXI_AWREGION),
        .M00_AXI_awsize(intf_net_axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(intf_net_axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bid(intf_net_axi_interconnect_1_M00_AXI_BID),
        .M00_AXI_bready(intf_net_axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(intf_net_axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(intf_net_axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(intf_net_axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(intf_net_axi_interconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(intf_net_axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(intf_net_axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(intf_net_axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(intf_net_axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(intf_net_axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(intf_net_axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(intf_net_axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(intf_net_axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(intf_net_axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(net_bdry_in_aclk_axi_mm),
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
        .S01_ACLK(net_bdry_in_aclk_axi_mm),
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
        .S02_ACLK(net_bdry_in_aclk_axi_mm),
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
  bd_2d50_axi_vdma_0 axi_vdma
       (.axi_resetn(net_rst_axi_mm_peripheral_aresetn),
        .m_axi_mm2s_aclk(net_bdry_in_aclk_axi_mm),
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
        .m_axi_s2mm_aclk(net_bdry_in_aclk_axi_mm),
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
        .m_axis_mm2s_aclk(net_bdry_in_aclk_axi_mm),
        .m_axis_mm2s_tdata(intf_net_axi_vdma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(intf_net_axi_vdma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(intf_net_axi_vdma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(intf_net_axi_vdma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(intf_net_axi_vdma_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(intf_net_axi_vdma_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(net_bdry_in_aclk_axi_mm),
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
        .s_axis_s2mm_aclk(net_bdry_in_aclk_axi_mm),
        .s_axis_s2mm_tdata(intf_net_vdma_trunc_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(intf_net_vdma_trunc_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(intf_net_vdma_trunc_M_AXIS_TLAST),
        .s_axis_s2mm_tready(intf_net_vdma_trunc_M_AXIS_TREADY),
        .s_axis_s2mm_tuser(intf_net_vdma_trunc_M_AXIS_TUSER[0]),
        .s_axis_s2mm_tvalid(intf_net_vdma_trunc_M_AXIS_TVALID));
  bd_2d50_csc_0 csc
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M08_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M08_AXIS_TVALID));
  bd_2d50_deint_cc_0 deint_cc
       (.m_axis_aclk(net_bdry_in_aclk_axi_mm),
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
        .s_axis_aclk(net_bdry_in_aclk_axis),
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
  bd_2d50_deint_concat_0 deint_concat
       (.In0(net_deint_ss_m_axis_tuser),
        .In1(net_bdry_in_deint_field_id),
        .dout(net_deint_concat_dout));
  bd_2d50_deint_fid_tap_0 deint_fid_tap
       (.Din(net_deint_cc_m_axis_tuser),
        .Dout(net_deint_fid_tap_Dout));
  bd_2d50_deint_ss_0 deint_ss
       (.aclk(net_bdry_in_aclk_axis),
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
  bd_2d50_deint_tuser_tap_0 deint_tuser_tap
       (.Din(net_deint_cc_m_axis_tuser),
        .Dout(net_deint_tuser_tap_Dout));
  bd_2d50_dint_0 dint
       (.ap_clk(net_bdry_in_aclk_axi_mm),
        .ap_rst_n(net_reset_sel_axi_mm_gpio_io_o),
        .even(net_deint_fid_tap_Dout),
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
  bd_2d50_hcr_0 hcr
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M05_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M05_AXIS_TVALID));
  bd_2d50_hsc_0 hsc
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M02_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M02_AXIS_TVALID));
  bd_2d50_input_size_set_0 input_size_set
       (.aclk(net_bdry_in_aclk_axis),
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
        .s_axis_tdata(intf_net_bdry_in_s_axis_TDATA),
        .s_axis_tdest(intf_net_bdry_in_s_axis_TDEST),
        .s_axis_tid(intf_net_bdry_in_s_axis_TID),
        .s_axis_tkeep(intf_net_bdry_in_s_axis_TKEEP),
        .s_axis_tlast(intf_net_bdry_in_s_axis_TLAST),
        .s_axis_tready(intf_net_bdry_in_s_axis_TREADY),
        .s_axis_tstrb(intf_net_bdry_in_s_axis_TSTRB),
        .s_axis_tuser(intf_net_bdry_in_s_axis_TUSER),
        .s_axis_tvalid(intf_net_bdry_in_s_axis_TVALID));
  bd_2d50_ltr_0 ltr
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M04_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M04_AXIS_TVALID));
  bd_2d50_proc_ss_ip_aresetn_0 proc_ss_ip_aresetn
       (.Din(net_reset_sel_axis_gpio_io_o),
        .Dout(net_proc_ss_ip_aresetn_Dout));
  bd_2d50_reset_sel_axi_mm_0 reset_sel_axi_mm
       (.gpio_io_i(net_reset_sel_axi_mm_gpio_io_o),
        .gpio_io_o(net_reset_sel_axi_mm_gpio_io_o),
        .s_axi_aclk(net_bdry_in_aclk_axi_mm),
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
  bd_2d50_reset_sel_axis_0 reset_sel_axis
       (.gpio_io_i(net_reset_sel_axis_gpio_io_o),
        .gpio_io_o(net_reset_sel_axis_gpio_io_o),
        .s_axi_aclk(net_bdry_in_aclk_axis),
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
  bd_2d50_rst_axi_mm_0 rst_axi_mm
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(net_bdry_in_aresetn_ctrl),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(net_rst_axi_mm_peripheral_aresetn),
        .slowest_sync_clk(net_bdry_in_aclk_axi_mm));
  bd_2d50_rst_axis_0 rst_axis
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(net_bdry_in_aresetn_ctrl),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(net_rst_axis_peripheral_aresetn),
        .slowest_sync_clk(net_bdry_in_aclk_axis));
  bd_2d50_vcr_i_0 vcr_i
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M06_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M06_AXIS_TVALID));
  bd_2d50_vcr_o_0 vcr_o
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M07_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M07_AXIS_TVALID));
  bd_2d50_vdma_pad_0 vdma_pad
       (.aclk(net_bdry_in_aclk_axi_mm),
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
  bd_2d50_vdma_trunc_0 vdma_trunc
       (.aclk(net_bdry_in_aclk_axi_mm),
        .aresetn(net_reset_sel_axi_mm_gpio_io_o),
        .m_axis_tdata(intf_net_vdma_trunc_M_AXIS_TDATA),
        .m_axis_tkeep(intf_net_vdma_trunc_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_vdma_trunc_M_AXIS_TLAST),
        .m_axis_tready(intf_net_vdma_trunc_M_AXIS_TREADY),
        .m_axis_tuser(intf_net_vdma_trunc_M_AXIS_TUSER),
        .m_axis_tvalid(intf_net_vdma_trunc_M_AXIS_TVALID),
        .s_axis_tdata(intf_net_video_router_M03_AXIS_TDATA),
        .s_axis_tkeep(intf_net_video_router_M03_AXIS_TKEEP),
        .s_axis_tlast(intf_net_video_router_M03_AXIS_TLAST),
        .s_axis_tready(intf_net_video_router_M03_AXIS_TREADY),
        .s_axis_tuser(intf_net_video_router_M03_AXIS_TUSER),
        .s_axis_tvalid(intf_net_video_router_M03_AXIS_TVALID));
  bd_2d50_vid_in_aresetn_0 vid_in_aresetn
       (.Din(net_reset_sel_axis_gpio_io_o),
        .Dout(net_vid_in_aresetn_Dout));
  bd_2d50_video_router_0 video_router
       (.ACLK(net_bdry_in_aclk_axis),
        .ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M00_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M00_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M00_AXIS_tdata(intf_net_video_router_M00_AXIS_TDATA),
        .M00_AXIS_tdest(intf_net_video_router_M00_AXIS_TDEST),
        .M00_AXIS_tid(intf_net_video_router_M00_AXIS_TID),
        .M00_AXIS_tkeep(intf_net_video_router_M00_AXIS_TKEEP),
        .M00_AXIS_tlast(intf_net_video_router_M00_AXIS_TLAST),
        .M00_AXIS_tready(intf_net_video_router_M00_AXIS_TREADY),
        .M00_AXIS_tstrb(intf_net_video_router_M00_AXIS_TSTRB),
        .M00_AXIS_tuser(intf_net_video_router_M00_AXIS_TUSER),
        .M00_AXIS_tvalid(intf_net_video_router_M00_AXIS_TVALID),
        .M01_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M01_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M01_AXIS_tdata(intf_net_video_router_M01_AXIS_TDATA),
        .M01_AXIS_tdest(intf_net_video_router_M01_AXIS_TDEST),
        .M01_AXIS_tid(intf_net_video_router_M01_AXIS_TID),
        .M01_AXIS_tkeep(intf_net_video_router_M01_AXIS_TKEEP),
        .M01_AXIS_tlast(intf_net_video_router_M01_AXIS_TLAST),
        .M01_AXIS_tready(intf_net_video_router_M01_AXIS_TREADY),
        .M01_AXIS_tstrb(intf_net_video_router_M01_AXIS_TSTRB),
        .M01_AXIS_tuser(intf_net_video_router_M01_AXIS_TUSER),
        .M01_AXIS_tvalid(intf_net_video_router_M01_AXIS_TVALID),
        .M02_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M02_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M02_AXIS_tdata(intf_net_video_router_M02_AXIS_TDATA),
        .M02_AXIS_tdest(intf_net_video_router_M02_AXIS_TDEST),
        .M02_AXIS_tid(intf_net_video_router_M02_AXIS_TID),
        .M02_AXIS_tkeep(intf_net_video_router_M02_AXIS_TKEEP),
        .M02_AXIS_tlast(intf_net_video_router_M02_AXIS_TLAST),
        .M02_AXIS_tready(intf_net_video_router_M02_AXIS_TREADY),
        .M02_AXIS_tstrb(intf_net_video_router_M02_AXIS_TSTRB),
        .M02_AXIS_tuser(intf_net_video_router_M02_AXIS_TUSER),
        .M02_AXIS_tvalid(intf_net_video_router_M02_AXIS_TVALID),
        .M03_AXIS_ACLK(net_bdry_in_aclk_axi_mm),
        .M03_AXIS_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .M03_AXIS_tdata(intf_net_video_router_M03_AXIS_TDATA),
        .M03_AXIS_tkeep(intf_net_video_router_M03_AXIS_TKEEP),
        .M03_AXIS_tlast(intf_net_video_router_M03_AXIS_TLAST),
        .M03_AXIS_tready(intf_net_video_router_M03_AXIS_TREADY),
        .M03_AXIS_tuser(intf_net_video_router_M03_AXIS_TUSER),
        .M03_AXIS_tvalid(intf_net_video_router_M03_AXIS_TVALID),
        .M04_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M04_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M04_AXIS_tdata(intf_net_video_router_M04_AXIS_TDATA),
        .M04_AXIS_tdest(intf_net_video_router_M04_AXIS_TDEST),
        .M04_AXIS_tid(intf_net_video_router_M04_AXIS_TID),
        .M04_AXIS_tkeep(intf_net_video_router_M04_AXIS_TKEEP),
        .M04_AXIS_tlast(intf_net_video_router_M04_AXIS_TLAST),
        .M04_AXIS_tready(intf_net_video_router_M04_AXIS_TREADY),
        .M04_AXIS_tstrb(intf_net_video_router_M04_AXIS_TSTRB),
        .M04_AXIS_tuser(intf_net_video_router_M04_AXIS_TUSER),
        .M04_AXIS_tvalid(intf_net_video_router_M04_AXIS_TVALID),
        .M05_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M05_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M05_AXIS_tdata(intf_net_video_router_M05_AXIS_TDATA),
        .M05_AXIS_tdest(intf_net_video_router_M05_AXIS_TDEST),
        .M05_AXIS_tid(intf_net_video_router_M05_AXIS_TID),
        .M05_AXIS_tkeep(intf_net_video_router_M05_AXIS_TKEEP),
        .M05_AXIS_tlast(intf_net_video_router_M05_AXIS_TLAST),
        .M05_AXIS_tready(intf_net_video_router_M05_AXIS_TREADY),
        .M05_AXIS_tstrb(intf_net_video_router_M05_AXIS_TSTRB),
        .M05_AXIS_tuser(intf_net_video_router_M05_AXIS_TUSER),
        .M05_AXIS_tvalid(intf_net_video_router_M05_AXIS_TVALID),
        .M06_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M06_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M06_AXIS_tdata(intf_net_video_router_M06_AXIS_TDATA),
        .M06_AXIS_tdest(intf_net_video_router_M06_AXIS_TDEST),
        .M06_AXIS_tid(intf_net_video_router_M06_AXIS_TID),
        .M06_AXIS_tkeep(intf_net_video_router_M06_AXIS_TKEEP),
        .M06_AXIS_tlast(intf_net_video_router_M06_AXIS_TLAST),
        .M06_AXIS_tready(intf_net_video_router_M06_AXIS_TREADY),
        .M06_AXIS_tstrb(intf_net_video_router_M06_AXIS_TSTRB),
        .M06_AXIS_tuser(intf_net_video_router_M06_AXIS_TUSER),
        .M06_AXIS_tvalid(intf_net_video_router_M06_AXIS_TVALID),
        .M07_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M07_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M07_AXIS_tdata(intf_net_video_router_M07_AXIS_TDATA),
        .M07_AXIS_tdest(intf_net_video_router_M07_AXIS_TDEST),
        .M07_AXIS_tid(intf_net_video_router_M07_AXIS_TID),
        .M07_AXIS_tkeep(intf_net_video_router_M07_AXIS_TKEEP),
        .M07_AXIS_tlast(intf_net_video_router_M07_AXIS_TLAST),
        .M07_AXIS_tready(intf_net_video_router_M07_AXIS_TREADY),
        .M07_AXIS_tstrb(intf_net_video_router_M07_AXIS_TSTRB),
        .M07_AXIS_tuser(intf_net_video_router_M07_AXIS_TUSER),
        .M07_AXIS_tvalid(intf_net_video_router_M07_AXIS_TVALID),
        .M08_AXIS_ACLK(net_bdry_in_aclk_axis),
        .M08_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M08_AXIS_tdata(intf_net_video_router_M08_AXIS_TDATA),
        .M08_AXIS_tdest(intf_net_video_router_M08_AXIS_TDEST),
        .M08_AXIS_tid(intf_net_video_router_M08_AXIS_TID),
        .M08_AXIS_tkeep(intf_net_video_router_M08_AXIS_TKEEP),
        .M08_AXIS_tlast(intf_net_video_router_M08_AXIS_TLAST),
        .M08_AXIS_tready(intf_net_video_router_M08_AXIS_TREADY),
        .M08_AXIS_tstrb(intf_net_video_router_M08_AXIS_TSTRB),
        .M08_AXIS_tuser(intf_net_video_router_M08_AXIS_TUSER),
        .M08_AXIS_tvalid(intf_net_video_router_M08_AXIS_TVALID),
        .M09_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S00_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S01_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S02_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S03_AXIS_ACLK(net_bdry_in_aclk_axi_mm),
        .S03_AXIS_ARESETN(net_reset_sel_axi_mm_gpio_io_o),
        .S03_AXIS_tdata(intf_net_vdma_pad_M_AXIS_TDATA),
        .S03_AXIS_tkeep(intf_net_vdma_pad_M_AXIS_TKEEP),
        .S03_AXIS_tlast(intf_net_vdma_pad_M_AXIS_TLAST),
        .S03_AXIS_tready(intf_net_vdma_pad_M_AXIS_TREADY),
        .S03_AXIS_tuser(intf_net_vdma_pad_M_AXIS_TUSER),
        .S03_AXIS_tvalid(intf_net_vdma_pad_M_AXIS_TVALID),
        .S04_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S05_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S06_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S07_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S08_AXIS_ACLK(net_bdry_in_aclk_axis),
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
        .S09_AXIS_ACLK(net_bdry_in_aclk_axi_mm),
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
        .S_AXI_CTRL_ACLK(net_bdry_in_aclk_ctrl),
        .S_AXI_CTRL_ARESETN(net_bdry_in_aresetn_ctrl),
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
  bd_2d50_vsc_0 vsc
       (.ap_clk(net_bdry_in_aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
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
        .s_axis_video_TUSER(intf_net_video_router_M01_AXIS_TUSER[0]),
        .s_axis_video_TVALID(intf_net_video_router_M01_AXIS_TVALID));
endmodule

module bd_2d50_axi_interconnect_0_0
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

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire M10_ACLK_1;
  wire M10_ARESETN_1;
  wire M11_ACLK_1;
  wire M11_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [19:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [19:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WVALID;
  wire [19:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [19:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [11:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [11:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [13:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [13:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire m03_couplers_to_axi_interconnect_0_AWREADY;
  wire m03_couplers_to_axi_interconnect_0_AWVALID;
  wire m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire m03_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire m03_couplers_to_axi_interconnect_0_WVALID;
  wire [6:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire m04_couplers_to_axi_interconnect_0_ARREADY;
  wire m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire m04_couplers_to_axi_interconnect_0_AWREADY;
  wire m04_couplers_to_axi_interconnect_0_AWVALID;
  wire m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire m04_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire m04_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire m04_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire m04_couplers_to_axi_interconnect_0_WVALID;
  wire [10:0]m05_couplers_to_axi_interconnect_0_ARADDR;
  wire m05_couplers_to_axi_interconnect_0_ARREADY;
  wire m05_couplers_to_axi_interconnect_0_ARVALID;
  wire [10:0]m05_couplers_to_axi_interconnect_0_AWADDR;
  wire m05_couplers_to_axi_interconnect_0_AWREADY;
  wire m05_couplers_to_axi_interconnect_0_AWVALID;
  wire m05_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_BRESP;
  wire m05_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_RDATA;
  wire m05_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_RRESP;
  wire m05_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_WDATA;
  wire m05_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_WSTRB;
  wire m05_couplers_to_axi_interconnect_0_WVALID;
  wire [10:0]m06_couplers_to_axi_interconnect_0_ARADDR;
  wire m06_couplers_to_axi_interconnect_0_ARREADY;
  wire m06_couplers_to_axi_interconnect_0_ARVALID;
  wire [10:0]m06_couplers_to_axi_interconnect_0_AWADDR;
  wire m06_couplers_to_axi_interconnect_0_AWREADY;
  wire m06_couplers_to_axi_interconnect_0_AWVALID;
  wire m06_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_BRESP;
  wire m06_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_RDATA;
  wire m06_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_RRESP;
  wire m06_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_WDATA;
  wire m06_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m06_couplers_to_axi_interconnect_0_WSTRB;
  wire m06_couplers_to_axi_interconnect_0_WVALID;
  wire [10:0]m07_couplers_to_axi_interconnect_0_ARADDR;
  wire m07_couplers_to_axi_interconnect_0_ARREADY;
  wire m07_couplers_to_axi_interconnect_0_ARVALID;
  wire [10:0]m07_couplers_to_axi_interconnect_0_AWADDR;
  wire m07_couplers_to_axi_interconnect_0_AWREADY;
  wire m07_couplers_to_axi_interconnect_0_AWVALID;
  wire m07_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_BRESP;
  wire m07_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_RDATA;
  wire m07_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_RRESP;
  wire m07_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_WDATA;
  wire m07_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m07_couplers_to_axi_interconnect_0_WSTRB;
  wire m07_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m08_couplers_to_axi_interconnect_0_ARADDR;
  wire m08_couplers_to_axi_interconnect_0_ARREADY;
  wire m08_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m08_couplers_to_axi_interconnect_0_AWADDR;
  wire m08_couplers_to_axi_interconnect_0_AWREADY;
  wire m08_couplers_to_axi_interconnect_0_AWVALID;
  wire m08_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_BRESP;
  wire m08_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_RDATA;
  wire m08_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_RRESP;
  wire m08_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_WDATA;
  wire m08_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m08_couplers_to_axi_interconnect_0_WSTRB;
  wire m08_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m09_couplers_to_axi_interconnect_0_ARADDR;
  wire m09_couplers_to_axi_interconnect_0_ARREADY;
  wire m09_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m09_couplers_to_axi_interconnect_0_AWADDR;
  wire m09_couplers_to_axi_interconnect_0_AWREADY;
  wire m09_couplers_to_axi_interconnect_0_AWVALID;
  wire m09_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_BRESP;
  wire m09_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_RDATA;
  wire m09_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_RRESP;
  wire m09_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_WDATA;
  wire m09_couplers_to_axi_interconnect_0_WREADY;
  wire m09_couplers_to_axi_interconnect_0_WVALID;
  wire [6:0]m10_couplers_to_axi_interconnect_0_ARADDR;
  wire m10_couplers_to_axi_interconnect_0_ARREADY;
  wire m10_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m10_couplers_to_axi_interconnect_0_AWADDR;
  wire m10_couplers_to_axi_interconnect_0_AWREADY;
  wire m10_couplers_to_axi_interconnect_0_AWVALID;
  wire m10_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_BRESP;
  wire m10_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_RDATA;
  wire m10_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_RRESP;
  wire m10_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_WDATA;
  wire m10_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m10_couplers_to_axi_interconnect_0_WSTRB;
  wire m10_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m11_couplers_to_axi_interconnect_0_ARADDR;
  wire m11_couplers_to_axi_interconnect_0_ARREADY;
  wire m11_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m11_couplers_to_axi_interconnect_0_AWADDR;
  wire m11_couplers_to_axi_interconnect_0_AWREADY;
  wire m11_couplers_to_axi_interconnect_0_AWVALID;
  wire m11_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m11_couplers_to_axi_interconnect_0_BRESP;
  wire m11_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m11_couplers_to_axi_interconnect_0_RDATA;
  wire m11_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m11_couplers_to_axi_interconnect_0_RRESP;
  wire m11_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m11_couplers_to_axi_interconnect_0_WDATA;
  wire m11_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m11_couplers_to_axi_interconnect_0_WSTRB;
  wire m11_couplers_to_axi_interconnect_0_WVALID;
  wire [19:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [19:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [19:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [19:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [39:20]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [39:20]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [59:40]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [59:40]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [79:60]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [79:60]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [99:80]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [99:80]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [119:100]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [119:100]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [139:120]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [139:120]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [159:140]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [159:140]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [179:160]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [179:160]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [199:180]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [199:180]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [219:200]xbar_to_m10_couplers_ARADDR;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [219:200]xbar_to_m10_couplers_AWADDR;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [239:220]xbar_to_m11_couplers_ARADDR;
  wire [35:33]xbar_to_m11_couplers_ARPROT;
  wire xbar_to_m11_couplers_ARREADY;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [239:220]xbar_to_m11_couplers_AWADDR;
  wire [35:33]xbar_to_m11_couplers_AWPROT;
  wire xbar_to_m11_couplers_AWREADY;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [35:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [35:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [47:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[19:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[19:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[8:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[8:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[11:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[11:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[13:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[13:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[6:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[6:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_0_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[10:0] = m05_couplers_to_axi_interconnect_0_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_0_ARVALID;
  assign M05_AXI_awaddr[10:0] = m05_couplers_to_axi_interconnect_0_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_0_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_0_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_0_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_0_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_0_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[10:0] = m06_couplers_to_axi_interconnect_0_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_0_ARVALID;
  assign M06_AXI_awaddr[10:0] = m06_couplers_to_axi_interconnect_0_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_interconnect_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_0_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[10:0] = m07_couplers_to_axi_interconnect_0_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_interconnect_0_ARVALID;
  assign M07_AXI_awaddr[10:0] = m07_couplers_to_axi_interconnect_0_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_interconnect_0_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_interconnect_0_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_interconnect_0_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_interconnect_0_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_interconnect_0_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_interconnect_0_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[8:0] = m08_couplers_to_axi_interconnect_0_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_axi_interconnect_0_ARVALID;
  assign M08_AXI_awaddr[8:0] = m08_couplers_to_axi_interconnect_0_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_axi_interconnect_0_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_axi_interconnect_0_BREADY;
  assign M08_AXI_rready = m08_couplers_to_axi_interconnect_0_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_interconnect_0_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_interconnect_0_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_axi_interconnect_0_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[8:0] = m09_couplers_to_axi_interconnect_0_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_axi_interconnect_0_ARVALID;
  assign M09_AXI_awaddr[8:0] = m09_couplers_to_axi_interconnect_0_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_axi_interconnect_0_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_axi_interconnect_0_BREADY;
  assign M09_AXI_rready = m09_couplers_to_axi_interconnect_0_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_interconnect_0_WDATA;
  assign M09_AXI_wvalid = m09_couplers_to_axi_interconnect_0_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[6:0] = m10_couplers_to_axi_interconnect_0_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_axi_interconnect_0_ARVALID;
  assign M10_AXI_awaddr[6:0] = m10_couplers_to_axi_interconnect_0_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_axi_interconnect_0_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_interconnect_0_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_interconnect_0_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_interconnect_0_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_interconnect_0_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_interconnect_0_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN;
  assign M11_AXI_araddr[8:0] = m11_couplers_to_axi_interconnect_0_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_axi_interconnect_0_ARVALID;
  assign M11_AXI_awaddr[8:0] = m11_couplers_to_axi_interconnect_0_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_axi_interconnect_0_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_axi_interconnect_0_BREADY;
  assign M11_AXI_rready = m11_couplers_to_axi_interconnect_0_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_interconnect_0_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_interconnect_0_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[19:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[19:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_interconnect_0_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_0_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_0_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_interconnect_0_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_interconnect_0_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_interconnect_0_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_interconnect_0_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_interconnect_0_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_interconnect_0_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_interconnect_0_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_interconnect_0_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_interconnect_0_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_interconnect_0_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_interconnect_0_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_interconnect_0_WREADY = M07_AXI_wready;
  assign m08_couplers_to_axi_interconnect_0_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_axi_interconnect_0_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_axi_interconnect_0_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_axi_interconnect_0_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_interconnect_0_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_axi_interconnect_0_WREADY = M08_AXI_wready;
  assign m09_couplers_to_axi_interconnect_0_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_axi_interconnect_0_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_axi_interconnect_0_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_axi_interconnect_0_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_interconnect_0_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_axi_interconnect_0_WREADY = M09_AXI_wready;
  assign m10_couplers_to_axi_interconnect_0_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_interconnect_0_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_interconnect_0_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_interconnect_0_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_interconnect_0_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_interconnect_0_WREADY = M10_AXI_wready;
  assign m11_couplers_to_axi_interconnect_0_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_axi_interconnect_0_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_axi_interconnect_0_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_axi_interconnect_0_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_axi_interconnect_0_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_axi_interconnect_0_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_axi_interconnect_0_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_axi_interconnect_0_WREADY = M11_AXI_wready;
  m00_couplers_imp_1THAUO9 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_U2A8WA m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_HOX72M m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1F5VMML m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_16FXGJQ m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_8OUFK5 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_LB3B29 m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1KFZB7M m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_3V6SLZ m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_12DB9JO m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m09_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m09_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_1AQE5K m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m10_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m10_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m10_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m10_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_10CYW6J m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m11_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m11_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m11_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m11_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m11_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m11_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m11_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m11_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m11_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m11_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m11_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m11_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m11_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m11_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  s00_couplers_imp_U6A1CL s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  bd_2d50_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m11_couplers_ARPROT,xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m11_couplers_AWPROT,xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module bd_2d50_axi_interconnect_1_0
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

  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [127:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s01_couplers_AWCACHE;
  wire [7:0]axi_interconnect_1_to_s01_couplers_AWLEN;
  wire [2:0]axi_interconnect_1_to_s01_couplers_AWPROT;
  wire axi_interconnect_1_to_s01_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s01_couplers_AWSIZE;
  wire axi_interconnect_1_to_s01_couplers_AWVALID;
  wire axi_interconnect_1_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s01_couplers_BRESP;
  wire axi_interconnect_1_to_s01_couplers_BVALID;
  wire [63:0]axi_interconnect_1_to_s01_couplers_WDATA;
  wire axi_interconnect_1_to_s01_couplers_WLAST;
  wire axi_interconnect_1_to_s01_couplers_WREADY;
  wire [7:0]axi_interconnect_1_to_s01_couplers_WSTRB;
  wire axi_interconnect_1_to_s01_couplers_WVALID;
  wire [31:0]axi_interconnect_1_to_s02_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s02_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s02_couplers_ARCACHE;
  wire [7:0]axi_interconnect_1_to_s02_couplers_ARLEN;
  wire [1:0]axi_interconnect_1_to_s02_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s02_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s02_couplers_ARQOS;
  wire axi_interconnect_1_to_s02_couplers_ARREADY;
  wire [3:0]axi_interconnect_1_to_s02_couplers_ARREGION;
  wire [2:0]axi_interconnect_1_to_s02_couplers_ARSIZE;
  wire axi_interconnect_1_to_s02_couplers_ARVALID;
  wire [31:0]axi_interconnect_1_to_s02_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s02_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s02_couplers_AWCACHE;
  wire [7:0]axi_interconnect_1_to_s02_couplers_AWLEN;
  wire [1:0]axi_interconnect_1_to_s02_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s02_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s02_couplers_AWQOS;
  wire axi_interconnect_1_to_s02_couplers_AWREADY;
  wire [3:0]axi_interconnect_1_to_s02_couplers_AWREGION;
  wire [2:0]axi_interconnect_1_to_s02_couplers_AWSIZE;
  wire axi_interconnect_1_to_s02_couplers_AWVALID;
  wire axi_interconnect_1_to_s02_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s02_couplers_BRESP;
  wire axi_interconnect_1_to_s02_couplers_BVALID;
  wire [31:0]axi_interconnect_1_to_s02_couplers_RDATA;
  wire axi_interconnect_1_to_s02_couplers_RLAST;
  wire axi_interconnect_1_to_s02_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s02_couplers_RRESP;
  wire axi_interconnect_1_to_s02_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s02_couplers_WDATA;
  wire axi_interconnect_1_to_s02_couplers_WLAST;
  wire axi_interconnect_1_to_s02_couplers_WREADY;
  wire [3:0]axi_interconnect_1_to_s02_couplers_WSTRB;
  wire axi_interconnect_1_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARCACHE;
  wire [1:0]m00_couplers_to_axi_interconnect_1_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_1_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_1_ARSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWCACHE;
  wire [1:0]m00_couplers_to_axi_interconnect_1_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_1_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWQOS;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_1_AWSIZE;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWVALID;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BID;
  wire [0:0]m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_1_BVALID;
  wire [255:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RID;
  wire [0:0]m00_couplers_to_axi_interconnect_1_RLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_1_RVALID;
  wire [255:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_1_WLAST;
  wire [0:0]m00_couplers_to_axi_interconnect_1_WREADY;
  wire [31:0]m00_couplers_to_axi_interconnect_1_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [255:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [31:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [767:512]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [255:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [31:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [255:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [255:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [31:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [767:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_1_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_interconnect_1_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_1_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_1_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_interconnect_1_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_1_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_1_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_interconnect_1_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_1_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_1_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_interconnect_1_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_1_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[255:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_axi_interconnect_1_WLAST;
  assign M00_AXI_wstrb[31:0] = m00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_1_WVALID;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[127:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S01_AXI_awready = axi_interconnect_1_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_1_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_1_to_s01_couplers_BVALID;
  assign S01_AXI_wready = axi_interconnect_1_to_s01_couplers_WREADY;
  assign S02_AXI_arready = axi_interconnect_1_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_interconnect_1_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_interconnect_1_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_interconnect_1_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = axi_interconnect_1_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_interconnect_1_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_interconnect_1_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_interconnect_1_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_interconnect_1_to_s02_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_1_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_1_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_interconnect_1_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_1_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_interconnect_1_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign axi_interconnect_1_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign axi_interconnect_1_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign axi_interconnect_1_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_interconnect_1_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s02_couplers_AWLOCK = S02_AXI_awlock[1:0];
  assign axi_interconnect_1_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s02_couplers_AWREGION = S02_AXI_awregion[3:0];
  assign axi_interconnect_1_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_1_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_1_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_interconnect_1_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign axi_interconnect_1_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_1_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign axi_interconnect_1_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_1_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[255:0];
  assign m00_couplers_to_axi_interconnect_1_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_axi_interconnect_1_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_W85NBR m00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_1_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_1_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_1_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_1_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_1_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_1_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1VGAQIZ s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID));
  s01_couplers_imp_WE1KEG s01_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_awaddr(axi_interconnect_1_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_1_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_1_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_1_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_1_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_1_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s01_couplers_WVALID));
  s02_couplers_imp_AV1SZW s02_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_1_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_1_to_s02_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s02_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s02_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s02_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_1_to_s02_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_1_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_1_to_s02_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s02_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s02_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s02_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_1_to_s02_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_1_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_1_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_1_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s02_couplers_WVALID));
  bd_2d50_xbar_2 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
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
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[511:256],s00_couplers_to_xbar_RDATA}),
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

module bd_2d50_video_router_0
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

  wire M00_AXIS_ACLK_1;
  wire M00_AXIS_ARESETN_1;
  wire M01_AXIS_ACLK_1;
  wire M01_AXIS_ARESETN_1;
  wire M02_AXIS_ACLK_1;
  wire M02_AXIS_ARESETN_1;
  wire M03_AXIS_ACLK_1;
  wire M03_AXIS_ARESETN_1;
  wire M04_AXIS_ACLK_1;
  wire M04_AXIS_ARESETN_1;
  wire M05_AXIS_ACLK_1;
  wire M05_AXIS_ARESETN_1;
  wire M06_AXIS_ACLK_1;
  wire M06_AXIS_ARESETN_1;
  wire M07_AXIS_ACLK_1;
  wire M07_AXIS_ARESETN_1;
  wire M08_AXIS_ACLK_1;
  wire M08_AXIS_ARESETN_1;
  wire M09_AXIS_ACLK_1;
  wire M09_AXIS_ARESETN_1;
  wire S00_AXIS_ACLK_1;
  wire S00_AXIS_ARESETN_1;
  wire S01_AXIS_ACLK_1;
  wire S01_AXIS_ARESETN_1;
  wire S02_AXIS_ACLK_1;
  wire S02_AXIS_ARESETN_1;
  wire S03_AXIS_ACLK_1;
  wire S03_AXIS_ARESETN_1;
  wire S04_AXIS_ACLK_1;
  wire S04_AXIS_ARESETN_1;
  wire S05_AXIS_ACLK_1;
  wire S05_AXIS_ARESETN_1;
  wire S06_AXIS_ACLK_1;
  wire S06_AXIS_ARESETN_1;
  wire S07_AXIS_ACLK_1;
  wire S07_AXIS_ARESETN_1;
  wire S08_AXIS_ACLK_1;
  wire S08_AXIS_ARESETN_1;
  wire S09_AXIS_ACLK_1;
  wire S09_AXIS_ARESETN_1;
  wire S_AXI_CTRL_ACLK_1;
  wire S_AXI_CTRL_ARESETN_1;
  wire [23:0]m00_couplers_to_video_router_TDATA;
  wire [0:0]m00_couplers_to_video_router_TDEST;
  wire [0:0]m00_couplers_to_video_router_TID;
  wire [2:0]m00_couplers_to_video_router_TKEEP;
  wire m00_couplers_to_video_router_TLAST;
  wire m00_couplers_to_video_router_TREADY;
  wire [2:0]m00_couplers_to_video_router_TSTRB;
  wire [2:0]m00_couplers_to_video_router_TUSER;
  wire m00_couplers_to_video_router_TVALID;
  wire [23:0]m01_couplers_to_video_router_TDATA;
  wire [0:0]m01_couplers_to_video_router_TDEST;
  wire [0:0]m01_couplers_to_video_router_TID;
  wire [2:0]m01_couplers_to_video_router_TKEEP;
  wire m01_couplers_to_video_router_TLAST;
  wire m01_couplers_to_video_router_TREADY;
  wire [2:0]m01_couplers_to_video_router_TSTRB;
  wire [2:0]m01_couplers_to_video_router_TUSER;
  wire m01_couplers_to_video_router_TVALID;
  wire [23:0]m02_couplers_to_video_router_TDATA;
  wire [0:0]m02_couplers_to_video_router_TDEST;
  wire [0:0]m02_couplers_to_video_router_TID;
  wire [2:0]m02_couplers_to_video_router_TKEEP;
  wire m02_couplers_to_video_router_TLAST;
  wire m02_couplers_to_video_router_TREADY;
  wire [2:0]m02_couplers_to_video_router_TSTRB;
  wire [2:0]m02_couplers_to_video_router_TUSER;
  wire m02_couplers_to_video_router_TVALID;
  wire [47:0]m03_couplers_to_video_router_TDATA;
  wire [5:0]m03_couplers_to_video_router_TKEEP;
  wire m03_couplers_to_video_router_TLAST;
  wire m03_couplers_to_video_router_TREADY;
  wire [5:0]m03_couplers_to_video_router_TUSER;
  wire m03_couplers_to_video_router_TVALID;
  wire [23:0]m04_couplers_to_video_router_TDATA;
  wire [0:0]m04_couplers_to_video_router_TDEST;
  wire [0:0]m04_couplers_to_video_router_TID;
  wire [2:0]m04_couplers_to_video_router_TKEEP;
  wire m04_couplers_to_video_router_TLAST;
  wire m04_couplers_to_video_router_TREADY;
  wire [2:0]m04_couplers_to_video_router_TSTRB;
  wire [2:0]m04_couplers_to_video_router_TUSER;
  wire m04_couplers_to_video_router_TVALID;
  wire [23:0]m05_couplers_to_video_router_TDATA;
  wire [0:0]m05_couplers_to_video_router_TDEST;
  wire [0:0]m05_couplers_to_video_router_TID;
  wire [2:0]m05_couplers_to_video_router_TKEEP;
  wire [0:0]m05_couplers_to_video_router_TLAST;
  wire m05_couplers_to_video_router_TREADY;
  wire [2:0]m05_couplers_to_video_router_TSTRB;
  wire [2:0]m05_couplers_to_video_router_TUSER;
  wire m05_couplers_to_video_router_TVALID;
  wire [23:0]m06_couplers_to_video_router_TDATA;
  wire [0:0]m06_couplers_to_video_router_TDEST;
  wire [0:0]m06_couplers_to_video_router_TID;
  wire [2:0]m06_couplers_to_video_router_TKEEP;
  wire [0:0]m06_couplers_to_video_router_TLAST;
  wire m06_couplers_to_video_router_TREADY;
  wire [2:0]m06_couplers_to_video_router_TSTRB;
  wire [2:0]m06_couplers_to_video_router_TUSER;
  wire m06_couplers_to_video_router_TVALID;
  wire [23:0]m07_couplers_to_video_router_TDATA;
  wire [0:0]m07_couplers_to_video_router_TDEST;
  wire [0:0]m07_couplers_to_video_router_TID;
  wire [2:0]m07_couplers_to_video_router_TKEEP;
  wire [0:0]m07_couplers_to_video_router_TLAST;
  wire m07_couplers_to_video_router_TREADY;
  wire [2:0]m07_couplers_to_video_router_TSTRB;
  wire [2:0]m07_couplers_to_video_router_TUSER;
  wire m07_couplers_to_video_router_TVALID;
  wire [23:0]m08_couplers_to_video_router_TDATA;
  wire [0:0]m08_couplers_to_video_router_TDEST;
  wire [0:0]m08_couplers_to_video_router_TID;
  wire [2:0]m08_couplers_to_video_router_TKEEP;
  wire m08_couplers_to_video_router_TLAST;
  wire m08_couplers_to_video_router_TREADY;
  wire [2:0]m08_couplers_to_video_router_TSTRB;
  wire [2:0]m08_couplers_to_video_router_TUSER;
  wire m08_couplers_to_video_router_TVALID;
  wire [23:0]m09_couplers_to_video_router_TDATA;
  wire [0:0]m09_couplers_to_video_router_TDEST;
  wire [0:0]m09_couplers_to_video_router_TID;
  wire [2:0]m09_couplers_to_video_router_TKEEP;
  wire m09_couplers_to_video_router_TLAST;
  wire m09_couplers_to_video_router_TREADY;
  wire [2:0]m09_couplers_to_video_router_TSTRB;
  wire [2:0]m09_couplers_to_video_router_TUSER;
  wire m09_couplers_to_video_router_TVALID;
  wire [23:0]s00_couplers_to_xbar_TDATA;
  wire [0:0]s00_couplers_to_xbar_TDEST;
  wire [0:0]s00_couplers_to_xbar_TID;
  wire [2:0]s00_couplers_to_xbar_TKEEP;
  wire [0:0]s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire [2:0]s00_couplers_to_xbar_TSTRB;
  wire [0:0]s00_couplers_to_xbar_TUSER;
  wire [0:0]s00_couplers_to_xbar_TVALID;
  wire [23:0]s01_couplers_to_xbar_TDATA;
  wire [0:0]s01_couplers_to_xbar_TDEST;
  wire [0:0]s01_couplers_to_xbar_TID;
  wire [2:0]s01_couplers_to_xbar_TKEEP;
  wire [0:0]s01_couplers_to_xbar_TLAST;
  wire [1:1]s01_couplers_to_xbar_TREADY;
  wire [2:0]s01_couplers_to_xbar_TSTRB;
  wire [0:0]s01_couplers_to_xbar_TUSER;
  wire [0:0]s01_couplers_to_xbar_TVALID;
  wire [23:0]s02_couplers_to_xbar_TDATA;
  wire [0:0]s02_couplers_to_xbar_TDEST;
  wire [0:0]s02_couplers_to_xbar_TID;
  wire [2:0]s02_couplers_to_xbar_TKEEP;
  wire [0:0]s02_couplers_to_xbar_TLAST;
  wire [2:2]s02_couplers_to_xbar_TREADY;
  wire [2:0]s02_couplers_to_xbar_TSTRB;
  wire [0:0]s02_couplers_to_xbar_TUSER;
  wire [0:0]s02_couplers_to_xbar_TVALID;
  wire [23:0]s03_couplers_to_xbar_TDATA;
  wire [0:0]s03_couplers_to_xbar_TDEST;
  wire [0:0]s03_couplers_to_xbar_TID;
  wire [2:0]s03_couplers_to_xbar_TKEEP;
  wire s03_couplers_to_xbar_TLAST;
  wire [3:3]s03_couplers_to_xbar_TREADY;
  wire [2:0]s03_couplers_to_xbar_TSTRB;
  wire [2:0]s03_couplers_to_xbar_TUSER;
  wire s03_couplers_to_xbar_TVALID;
  wire [23:0]s04_couplers_to_xbar_TDATA;
  wire [0:0]s04_couplers_to_xbar_TDEST;
  wire [0:0]s04_couplers_to_xbar_TID;
  wire [2:0]s04_couplers_to_xbar_TKEEP;
  wire [0:0]s04_couplers_to_xbar_TLAST;
  wire [4:4]s04_couplers_to_xbar_TREADY;
  wire [2:0]s04_couplers_to_xbar_TSTRB;
  wire [0:0]s04_couplers_to_xbar_TUSER;
  wire [0:0]s04_couplers_to_xbar_TVALID;
  wire [23:0]s05_couplers_to_xbar_TDATA;
  wire [0:0]s05_couplers_to_xbar_TDEST;
  wire [0:0]s05_couplers_to_xbar_TID;
  wire [2:0]s05_couplers_to_xbar_TKEEP;
  wire [0:0]s05_couplers_to_xbar_TLAST;
  wire [5:5]s05_couplers_to_xbar_TREADY;
  wire [2:0]s05_couplers_to_xbar_TSTRB;
  wire [0:0]s05_couplers_to_xbar_TUSER;
  wire s05_couplers_to_xbar_TVALID;
  wire [23:0]s06_couplers_to_xbar_TDATA;
  wire [0:0]s06_couplers_to_xbar_TDEST;
  wire [0:0]s06_couplers_to_xbar_TID;
  wire [2:0]s06_couplers_to_xbar_TKEEP;
  wire [0:0]s06_couplers_to_xbar_TLAST;
  wire [6:6]s06_couplers_to_xbar_TREADY;
  wire [2:0]s06_couplers_to_xbar_TSTRB;
  wire [0:0]s06_couplers_to_xbar_TUSER;
  wire s06_couplers_to_xbar_TVALID;
  wire [23:0]s07_couplers_to_xbar_TDATA;
  wire [0:0]s07_couplers_to_xbar_TDEST;
  wire [0:0]s07_couplers_to_xbar_TID;
  wire [2:0]s07_couplers_to_xbar_TKEEP;
  wire [0:0]s07_couplers_to_xbar_TLAST;
  wire [7:7]s07_couplers_to_xbar_TREADY;
  wire [2:0]s07_couplers_to_xbar_TSTRB;
  wire [0:0]s07_couplers_to_xbar_TUSER;
  wire s07_couplers_to_xbar_TVALID;
  wire [23:0]s08_couplers_to_xbar_TDATA;
  wire [0:0]s08_couplers_to_xbar_TDEST;
  wire [0:0]s08_couplers_to_xbar_TID;
  wire [2:0]s08_couplers_to_xbar_TKEEP;
  wire [0:0]s08_couplers_to_xbar_TLAST;
  wire [8:8]s08_couplers_to_xbar_TREADY;
  wire [2:0]s08_couplers_to_xbar_TSTRB;
  wire [0:0]s08_couplers_to_xbar_TUSER;
  wire [0:0]s08_couplers_to_xbar_TVALID;
  wire [23:0]s09_couplers_to_xbar_TDATA;
  wire [0:0]s09_couplers_to_xbar_TDEST;
  wire [0:0]s09_couplers_to_xbar_TID;
  wire [2:0]s09_couplers_to_xbar_TKEEP;
  wire s09_couplers_to_xbar_TLAST;
  wire [9:9]s09_couplers_to_xbar_TREADY;
  wire [2:0]s09_couplers_to_xbar_TSTRB;
  wire [0:0]s09_couplers_to_xbar_TUSER;
  wire s09_couplers_to_xbar_TVALID;
  wire video_router_ACLK_net;
  wire video_router_ARESETN_net;
  wire [23:0]video_router_to_s00_couplers_TDATA;
  wire [0:0]video_router_to_s00_couplers_TDEST;
  wire [0:0]video_router_to_s00_couplers_TID;
  wire [2:0]video_router_to_s00_couplers_TKEEP;
  wire [0:0]video_router_to_s00_couplers_TLAST;
  wire [0:0]video_router_to_s00_couplers_TREADY;
  wire [2:0]video_router_to_s00_couplers_TSTRB;
  wire [0:0]video_router_to_s00_couplers_TUSER;
  wire [0:0]video_router_to_s00_couplers_TVALID;
  wire [23:0]video_router_to_s01_couplers_TDATA;
  wire [0:0]video_router_to_s01_couplers_TDEST;
  wire [0:0]video_router_to_s01_couplers_TID;
  wire [2:0]video_router_to_s01_couplers_TKEEP;
  wire [0:0]video_router_to_s01_couplers_TLAST;
  wire [0:0]video_router_to_s01_couplers_TREADY;
  wire [2:0]video_router_to_s01_couplers_TSTRB;
  wire [0:0]video_router_to_s01_couplers_TUSER;
  wire [0:0]video_router_to_s01_couplers_TVALID;
  wire [23:0]video_router_to_s02_couplers_TDATA;
  wire [0:0]video_router_to_s02_couplers_TDEST;
  wire [0:0]video_router_to_s02_couplers_TID;
  wire [2:0]video_router_to_s02_couplers_TKEEP;
  wire [0:0]video_router_to_s02_couplers_TLAST;
  wire [0:0]video_router_to_s02_couplers_TREADY;
  wire [2:0]video_router_to_s02_couplers_TSTRB;
  wire [0:0]video_router_to_s02_couplers_TUSER;
  wire [0:0]video_router_to_s02_couplers_TVALID;
  wire [47:0]video_router_to_s03_couplers_TDATA;
  wire [5:0]video_router_to_s03_couplers_TKEEP;
  wire video_router_to_s03_couplers_TLAST;
  wire video_router_to_s03_couplers_TREADY;
  wire [5:0]video_router_to_s03_couplers_TUSER;
  wire video_router_to_s03_couplers_TVALID;
  wire [23:0]video_router_to_s04_couplers_TDATA;
  wire [0:0]video_router_to_s04_couplers_TDEST;
  wire [0:0]video_router_to_s04_couplers_TID;
  wire [2:0]video_router_to_s04_couplers_TKEEP;
  wire [0:0]video_router_to_s04_couplers_TLAST;
  wire [0:0]video_router_to_s04_couplers_TREADY;
  wire [2:0]video_router_to_s04_couplers_TSTRB;
  wire [0:0]video_router_to_s04_couplers_TUSER;
  wire [0:0]video_router_to_s04_couplers_TVALID;
  wire [23:0]video_router_to_s05_couplers_TDATA;
  wire [0:0]video_router_to_s05_couplers_TDEST;
  wire [0:0]video_router_to_s05_couplers_TID;
  wire [2:0]video_router_to_s05_couplers_TKEEP;
  wire [0:0]video_router_to_s05_couplers_TLAST;
  wire video_router_to_s05_couplers_TREADY;
  wire [2:0]video_router_to_s05_couplers_TSTRB;
  wire [0:0]video_router_to_s05_couplers_TUSER;
  wire video_router_to_s05_couplers_TVALID;
  wire [23:0]video_router_to_s06_couplers_TDATA;
  wire [0:0]video_router_to_s06_couplers_TDEST;
  wire [0:0]video_router_to_s06_couplers_TID;
  wire [2:0]video_router_to_s06_couplers_TKEEP;
  wire [0:0]video_router_to_s06_couplers_TLAST;
  wire video_router_to_s06_couplers_TREADY;
  wire [2:0]video_router_to_s06_couplers_TSTRB;
  wire [0:0]video_router_to_s06_couplers_TUSER;
  wire video_router_to_s06_couplers_TVALID;
  wire [23:0]video_router_to_s07_couplers_TDATA;
  wire [0:0]video_router_to_s07_couplers_TDEST;
  wire [0:0]video_router_to_s07_couplers_TID;
  wire [2:0]video_router_to_s07_couplers_TKEEP;
  wire [0:0]video_router_to_s07_couplers_TLAST;
  wire video_router_to_s07_couplers_TREADY;
  wire [2:0]video_router_to_s07_couplers_TSTRB;
  wire [0:0]video_router_to_s07_couplers_TUSER;
  wire video_router_to_s07_couplers_TVALID;
  wire [23:0]video_router_to_s08_couplers_TDATA;
  wire [0:0]video_router_to_s08_couplers_TDEST;
  wire [0:0]video_router_to_s08_couplers_TID;
  wire [2:0]video_router_to_s08_couplers_TKEEP;
  wire [0:0]video_router_to_s08_couplers_TLAST;
  wire [0:0]video_router_to_s08_couplers_TREADY;
  wire [2:0]video_router_to_s08_couplers_TSTRB;
  wire [0:0]video_router_to_s08_couplers_TUSER;
  wire [0:0]video_router_to_s08_couplers_TVALID;
  wire [23:0]video_router_to_s09_couplers_TDATA;
  wire video_router_to_s09_couplers_TDEST;
  wire video_router_to_s09_couplers_TID;
  wire [2:0]video_router_to_s09_couplers_TKEEP;
  wire video_router_to_s09_couplers_TLAST;
  wire video_router_to_s09_couplers_TREADY;
  wire [2:0]video_router_to_s09_couplers_TSTRB;
  wire video_router_to_s09_couplers_TUSER;
  wire video_router_to_s09_couplers_TVALID;
  wire [19:0]video_router_to_xbar_ARADDR;
  wire video_router_to_xbar_ARREADY;
  wire video_router_to_xbar_ARVALID;
  wire [19:0]video_router_to_xbar_AWADDR;
  wire video_router_to_xbar_AWREADY;
  wire video_router_to_xbar_AWVALID;
  wire video_router_to_xbar_BREADY;
  wire [1:0]video_router_to_xbar_BRESP;
  wire video_router_to_xbar_BVALID;
  wire [31:0]video_router_to_xbar_RDATA;
  wire video_router_to_xbar_RREADY;
  wire [1:0]video_router_to_xbar_RRESP;
  wire video_router_to_xbar_RVALID;
  wire [31:0]video_router_to_xbar_WDATA;
  wire video_router_to_xbar_WREADY;
  wire video_router_to_xbar_WVALID;
  wire [23:0]xbar_to_m00_couplers_TDATA;
  wire [0:0]xbar_to_m00_couplers_TDEST;
  wire [0:0]xbar_to_m00_couplers_TID;
  wire [2:0]xbar_to_m00_couplers_TKEEP;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [2:0]xbar_to_m00_couplers_TSTRB;
  wire [2:0]xbar_to_m00_couplers_TUSER;
  wire [0:0]xbar_to_m00_couplers_TVALID;
  wire [47:24]xbar_to_m01_couplers_TDATA;
  wire [1:1]xbar_to_m01_couplers_TDEST;
  wire [1:1]xbar_to_m01_couplers_TID;
  wire [5:3]xbar_to_m01_couplers_TKEEP;
  wire [1:1]xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [5:3]xbar_to_m01_couplers_TSTRB;
  wire [5:3]xbar_to_m01_couplers_TUSER;
  wire [1:1]xbar_to_m01_couplers_TVALID;
  wire [71:48]xbar_to_m02_couplers_TDATA;
  wire [2:2]xbar_to_m02_couplers_TDEST;
  wire [2:2]xbar_to_m02_couplers_TID;
  wire [8:6]xbar_to_m02_couplers_TKEEP;
  wire [2:2]xbar_to_m02_couplers_TLAST;
  wire xbar_to_m02_couplers_TREADY;
  wire [8:6]xbar_to_m02_couplers_TSTRB;
  wire [8:6]xbar_to_m02_couplers_TUSER;
  wire [2:2]xbar_to_m02_couplers_TVALID;
  wire [95:72]xbar_to_m03_couplers_TDATA;
  wire [3:3]xbar_to_m03_couplers_TDEST;
  wire [3:3]xbar_to_m03_couplers_TID;
  wire [11:9]xbar_to_m03_couplers_TKEEP;
  wire [3:3]xbar_to_m03_couplers_TLAST;
  wire xbar_to_m03_couplers_TREADY;
  wire [11:9]xbar_to_m03_couplers_TSTRB;
  wire [11:9]xbar_to_m03_couplers_TUSER;
  wire [3:3]xbar_to_m03_couplers_TVALID;
  wire [119:96]xbar_to_m04_couplers_TDATA;
  wire [4:4]xbar_to_m04_couplers_TDEST;
  wire [4:4]xbar_to_m04_couplers_TID;
  wire [14:12]xbar_to_m04_couplers_TKEEP;
  wire [4:4]xbar_to_m04_couplers_TLAST;
  wire xbar_to_m04_couplers_TREADY;
  wire [14:12]xbar_to_m04_couplers_TSTRB;
  wire [14:12]xbar_to_m04_couplers_TUSER;
  wire [4:4]xbar_to_m04_couplers_TVALID;
  wire [143:120]xbar_to_m05_couplers_TDATA;
  wire [5:5]xbar_to_m05_couplers_TDEST;
  wire [5:5]xbar_to_m05_couplers_TID;
  wire [17:15]xbar_to_m05_couplers_TKEEP;
  wire [5:5]xbar_to_m05_couplers_TLAST;
  wire xbar_to_m05_couplers_TREADY;
  wire [17:15]xbar_to_m05_couplers_TSTRB;
  wire [17:15]xbar_to_m05_couplers_TUSER;
  wire [5:5]xbar_to_m05_couplers_TVALID;
  wire [167:144]xbar_to_m06_couplers_TDATA;
  wire [6:6]xbar_to_m06_couplers_TDEST;
  wire [6:6]xbar_to_m06_couplers_TID;
  wire [20:18]xbar_to_m06_couplers_TKEEP;
  wire [6:6]xbar_to_m06_couplers_TLAST;
  wire xbar_to_m06_couplers_TREADY;
  wire [20:18]xbar_to_m06_couplers_TSTRB;
  wire [20:18]xbar_to_m06_couplers_TUSER;
  wire [6:6]xbar_to_m06_couplers_TVALID;
  wire [191:168]xbar_to_m07_couplers_TDATA;
  wire [7:7]xbar_to_m07_couplers_TDEST;
  wire [7:7]xbar_to_m07_couplers_TID;
  wire [23:21]xbar_to_m07_couplers_TKEEP;
  wire [7:7]xbar_to_m07_couplers_TLAST;
  wire xbar_to_m07_couplers_TREADY;
  wire [23:21]xbar_to_m07_couplers_TSTRB;
  wire [23:21]xbar_to_m07_couplers_TUSER;
  wire [7:7]xbar_to_m07_couplers_TVALID;
  wire [215:192]xbar_to_m08_couplers_TDATA;
  wire [8:8]xbar_to_m08_couplers_TDEST;
  wire [8:8]xbar_to_m08_couplers_TID;
  wire [26:24]xbar_to_m08_couplers_TKEEP;
  wire [8:8]xbar_to_m08_couplers_TLAST;
  wire xbar_to_m08_couplers_TREADY;
  wire [26:24]xbar_to_m08_couplers_TSTRB;
  wire [26:24]xbar_to_m08_couplers_TUSER;
  wire [8:8]xbar_to_m08_couplers_TVALID;
  wire [239:216]xbar_to_m09_couplers_TDATA;
  wire [9:9]xbar_to_m09_couplers_TDEST;
  wire [9:9]xbar_to_m09_couplers_TID;
  wire [29:27]xbar_to_m09_couplers_TKEEP;
  wire [9:9]xbar_to_m09_couplers_TLAST;
  wire xbar_to_m09_couplers_TREADY;
  wire [29:27]xbar_to_m09_couplers_TSTRB;
  wire [29:27]xbar_to_m09_couplers_TUSER;
  wire [9:9]xbar_to_m09_couplers_TVALID;

  assign M00_AXIS_ACLK_1 = M00_AXIS_ACLK;
  assign M00_AXIS_ARESETN_1 = M00_AXIS_ARESETN;
  assign M00_AXIS_tdata[23:0] = m00_couplers_to_video_router_TDATA;
  assign M00_AXIS_tdest[0] = m00_couplers_to_video_router_TDEST;
  assign M00_AXIS_tid[0] = m00_couplers_to_video_router_TID;
  assign M00_AXIS_tkeep[2:0] = m00_couplers_to_video_router_TKEEP;
  assign M00_AXIS_tlast = m00_couplers_to_video_router_TLAST;
  assign M00_AXIS_tstrb[2:0] = m00_couplers_to_video_router_TSTRB;
  assign M00_AXIS_tuser[2:0] = m00_couplers_to_video_router_TUSER;
  assign M00_AXIS_tvalid = m00_couplers_to_video_router_TVALID;
  assign M01_AXIS_ACLK_1 = M01_AXIS_ACLK;
  assign M01_AXIS_ARESETN_1 = M01_AXIS_ARESETN;
  assign M01_AXIS_tdata[23:0] = m01_couplers_to_video_router_TDATA;
  assign M01_AXIS_tdest[0] = m01_couplers_to_video_router_TDEST;
  assign M01_AXIS_tid[0] = m01_couplers_to_video_router_TID;
  assign M01_AXIS_tkeep[2:0] = m01_couplers_to_video_router_TKEEP;
  assign M01_AXIS_tlast = m01_couplers_to_video_router_TLAST;
  assign M01_AXIS_tstrb[2:0] = m01_couplers_to_video_router_TSTRB;
  assign M01_AXIS_tuser[2:0] = m01_couplers_to_video_router_TUSER;
  assign M01_AXIS_tvalid = m01_couplers_to_video_router_TVALID;
  assign M02_AXIS_ACLK_1 = M02_AXIS_ACLK;
  assign M02_AXIS_ARESETN_1 = M02_AXIS_ARESETN;
  assign M02_AXIS_tdata[23:0] = m02_couplers_to_video_router_TDATA;
  assign M02_AXIS_tdest[0] = m02_couplers_to_video_router_TDEST;
  assign M02_AXIS_tid[0] = m02_couplers_to_video_router_TID;
  assign M02_AXIS_tkeep[2:0] = m02_couplers_to_video_router_TKEEP;
  assign M02_AXIS_tlast = m02_couplers_to_video_router_TLAST;
  assign M02_AXIS_tstrb[2:0] = m02_couplers_to_video_router_TSTRB;
  assign M02_AXIS_tuser[2:0] = m02_couplers_to_video_router_TUSER;
  assign M02_AXIS_tvalid = m02_couplers_to_video_router_TVALID;
  assign M03_AXIS_ACLK_1 = M03_AXIS_ACLK;
  assign M03_AXIS_ARESETN_1 = M03_AXIS_ARESETN;
  assign M03_AXIS_tdata[47:0] = m03_couplers_to_video_router_TDATA;
  assign M03_AXIS_tkeep[5:0] = m03_couplers_to_video_router_TKEEP;
  assign M03_AXIS_tlast = m03_couplers_to_video_router_TLAST;
  assign M03_AXIS_tuser[5:0] = m03_couplers_to_video_router_TUSER;
  assign M03_AXIS_tvalid = m03_couplers_to_video_router_TVALID;
  assign M04_AXIS_ACLK_1 = M04_AXIS_ACLK;
  assign M04_AXIS_ARESETN_1 = M04_AXIS_ARESETN;
  assign M04_AXIS_tdata[23:0] = m04_couplers_to_video_router_TDATA;
  assign M04_AXIS_tdest[0] = m04_couplers_to_video_router_TDEST;
  assign M04_AXIS_tid[0] = m04_couplers_to_video_router_TID;
  assign M04_AXIS_tkeep[2:0] = m04_couplers_to_video_router_TKEEP;
  assign M04_AXIS_tlast = m04_couplers_to_video_router_TLAST;
  assign M04_AXIS_tstrb[2:0] = m04_couplers_to_video_router_TSTRB;
  assign M04_AXIS_tuser[2:0] = m04_couplers_to_video_router_TUSER;
  assign M04_AXIS_tvalid = m04_couplers_to_video_router_TVALID;
  assign M05_AXIS_ACLK_1 = M05_AXIS_ACLK;
  assign M05_AXIS_ARESETN_1 = M05_AXIS_ARESETN;
  assign M05_AXIS_tdata[23:0] = m05_couplers_to_video_router_TDATA;
  assign M05_AXIS_tdest[0] = m05_couplers_to_video_router_TDEST;
  assign M05_AXIS_tid[0] = m05_couplers_to_video_router_TID;
  assign M05_AXIS_tkeep[2:0] = m05_couplers_to_video_router_TKEEP;
  assign M05_AXIS_tlast[0] = m05_couplers_to_video_router_TLAST;
  assign M05_AXIS_tstrb[2:0] = m05_couplers_to_video_router_TSTRB;
  assign M05_AXIS_tuser[2:0] = m05_couplers_to_video_router_TUSER;
  assign M05_AXIS_tvalid = m05_couplers_to_video_router_TVALID;
  assign M06_AXIS_ACLK_1 = M06_AXIS_ACLK;
  assign M06_AXIS_ARESETN_1 = M06_AXIS_ARESETN;
  assign M06_AXIS_tdata[23:0] = m06_couplers_to_video_router_TDATA;
  assign M06_AXIS_tdest[0] = m06_couplers_to_video_router_TDEST;
  assign M06_AXIS_tid[0] = m06_couplers_to_video_router_TID;
  assign M06_AXIS_tkeep[2:0] = m06_couplers_to_video_router_TKEEP;
  assign M06_AXIS_tlast[0] = m06_couplers_to_video_router_TLAST;
  assign M06_AXIS_tstrb[2:0] = m06_couplers_to_video_router_TSTRB;
  assign M06_AXIS_tuser[2:0] = m06_couplers_to_video_router_TUSER;
  assign M06_AXIS_tvalid = m06_couplers_to_video_router_TVALID;
  assign M07_AXIS_ACLK_1 = M07_AXIS_ACLK;
  assign M07_AXIS_ARESETN_1 = M07_AXIS_ARESETN;
  assign M07_AXIS_tdata[23:0] = m07_couplers_to_video_router_TDATA;
  assign M07_AXIS_tdest[0] = m07_couplers_to_video_router_TDEST;
  assign M07_AXIS_tid[0] = m07_couplers_to_video_router_TID;
  assign M07_AXIS_tkeep[2:0] = m07_couplers_to_video_router_TKEEP;
  assign M07_AXIS_tlast[0] = m07_couplers_to_video_router_TLAST;
  assign M07_AXIS_tstrb[2:0] = m07_couplers_to_video_router_TSTRB;
  assign M07_AXIS_tuser[2:0] = m07_couplers_to_video_router_TUSER;
  assign M07_AXIS_tvalid = m07_couplers_to_video_router_TVALID;
  assign M08_AXIS_ACLK_1 = M08_AXIS_ACLK;
  assign M08_AXIS_ARESETN_1 = M08_AXIS_ARESETN;
  assign M08_AXIS_tdata[23:0] = m08_couplers_to_video_router_TDATA;
  assign M08_AXIS_tdest[0] = m08_couplers_to_video_router_TDEST;
  assign M08_AXIS_tid[0] = m08_couplers_to_video_router_TID;
  assign M08_AXIS_tkeep[2:0] = m08_couplers_to_video_router_TKEEP;
  assign M08_AXIS_tlast = m08_couplers_to_video_router_TLAST;
  assign M08_AXIS_tstrb[2:0] = m08_couplers_to_video_router_TSTRB;
  assign M08_AXIS_tuser[2:0] = m08_couplers_to_video_router_TUSER;
  assign M08_AXIS_tvalid = m08_couplers_to_video_router_TVALID;
  assign M09_AXIS_ACLK_1 = M09_AXIS_ACLK;
  assign M09_AXIS_ARESETN_1 = M09_AXIS_ARESETN;
  assign M09_AXIS_tdata[23:0] = m09_couplers_to_video_router_TDATA;
  assign M09_AXIS_tdest[0] = m09_couplers_to_video_router_TDEST;
  assign M09_AXIS_tid[0] = m09_couplers_to_video_router_TID;
  assign M09_AXIS_tkeep[2:0] = m09_couplers_to_video_router_TKEEP;
  assign M09_AXIS_tlast = m09_couplers_to_video_router_TLAST;
  assign M09_AXIS_tstrb[2:0] = m09_couplers_to_video_router_TSTRB;
  assign M09_AXIS_tuser[2:0] = m09_couplers_to_video_router_TUSER;
  assign M09_AXIS_tvalid = m09_couplers_to_video_router_TVALID;
  assign S00_AXIS_ACLK_1 = S00_AXIS_ACLK;
  assign S00_AXIS_ARESETN_1 = S00_AXIS_ARESETN;
  assign S00_AXIS_tready[0] = video_router_to_s00_couplers_TREADY;
  assign S01_AXIS_ACLK_1 = S01_AXIS_ACLK;
  assign S01_AXIS_ARESETN_1 = S01_AXIS_ARESETN;
  assign S01_AXIS_tready[0] = video_router_to_s01_couplers_TREADY;
  assign S02_AXIS_ACLK_1 = S02_AXIS_ACLK;
  assign S02_AXIS_ARESETN_1 = S02_AXIS_ARESETN;
  assign S02_AXIS_tready[0] = video_router_to_s02_couplers_TREADY;
  assign S03_AXIS_ACLK_1 = S03_AXIS_ACLK;
  assign S03_AXIS_ARESETN_1 = S03_AXIS_ARESETN;
  assign S03_AXIS_tready = video_router_to_s03_couplers_TREADY;
  assign S04_AXIS_ACLK_1 = S04_AXIS_ACLK;
  assign S04_AXIS_ARESETN_1 = S04_AXIS_ARESETN;
  assign S04_AXIS_tready[0] = video_router_to_s04_couplers_TREADY;
  assign S05_AXIS_ACLK_1 = S05_AXIS_ACLK;
  assign S05_AXIS_ARESETN_1 = S05_AXIS_ARESETN;
  assign S05_AXIS_tready = video_router_to_s05_couplers_TREADY;
  assign S06_AXIS_ACLK_1 = S06_AXIS_ACLK;
  assign S06_AXIS_ARESETN_1 = S06_AXIS_ARESETN;
  assign S06_AXIS_tready = video_router_to_s06_couplers_TREADY;
  assign S07_AXIS_ACLK_1 = S07_AXIS_ACLK;
  assign S07_AXIS_ARESETN_1 = S07_AXIS_ARESETN;
  assign S07_AXIS_tready = video_router_to_s07_couplers_TREADY;
  assign S08_AXIS_ACLK_1 = S08_AXIS_ACLK;
  assign S08_AXIS_ARESETN_1 = S08_AXIS_ARESETN;
  assign S08_AXIS_tready[0] = video_router_to_s08_couplers_TREADY;
  assign S09_AXIS_ACLK_1 = S09_AXIS_ACLK;
  assign S09_AXIS_ARESETN_1 = S09_AXIS_ARESETN;
  assign S09_AXIS_tready = video_router_to_s09_couplers_TREADY;
  assign S_AXI_CTRL_ACLK_1 = S_AXI_CTRL_ACLK;
  assign S_AXI_CTRL_ARESETN_1 = S_AXI_CTRL_ARESETN;
  assign S_AXI_CTRL_arready = video_router_to_xbar_ARREADY;
  assign S_AXI_CTRL_awready = video_router_to_xbar_AWREADY;
  assign S_AXI_CTRL_bresp[1:0] = video_router_to_xbar_BRESP;
  assign S_AXI_CTRL_bvalid = video_router_to_xbar_BVALID;
  assign S_AXI_CTRL_rdata[31:0] = video_router_to_xbar_RDATA;
  assign S_AXI_CTRL_rresp[1:0] = video_router_to_xbar_RRESP;
  assign S_AXI_CTRL_rvalid = video_router_to_xbar_RVALID;
  assign S_AXI_CTRL_wready = video_router_to_xbar_WREADY;
  assign m00_couplers_to_video_router_TREADY = M00_AXIS_tready;
  assign m01_couplers_to_video_router_TREADY = M01_AXIS_tready;
  assign m02_couplers_to_video_router_TREADY = M02_AXIS_tready;
  assign m03_couplers_to_video_router_TREADY = M03_AXIS_tready;
  assign m04_couplers_to_video_router_TREADY = M04_AXIS_tready;
  assign m05_couplers_to_video_router_TREADY = M05_AXIS_tready;
  assign m06_couplers_to_video_router_TREADY = M06_AXIS_tready;
  assign m07_couplers_to_video_router_TREADY = M07_AXIS_tready;
  assign m08_couplers_to_video_router_TREADY = M08_AXIS_tready;
  assign m09_couplers_to_video_router_TREADY = M09_AXIS_tready;
  assign video_router_ACLK_net = ACLK;
  assign video_router_ARESETN_net = ARESETN;
  assign video_router_to_s00_couplers_TDATA = S00_AXIS_tdata[23:0];
  assign video_router_to_s00_couplers_TDEST = S00_AXIS_tdest[0];
  assign video_router_to_s00_couplers_TID = S00_AXIS_tid[0];
  assign video_router_to_s00_couplers_TKEEP = S00_AXIS_tkeep[2:0];
  assign video_router_to_s00_couplers_TLAST = S00_AXIS_tlast[0];
  assign video_router_to_s00_couplers_TSTRB = S00_AXIS_tstrb[2:0];
  assign video_router_to_s00_couplers_TUSER = S00_AXIS_tuser[0];
  assign video_router_to_s00_couplers_TVALID = S00_AXIS_tvalid[0];
  assign video_router_to_s01_couplers_TDATA = S01_AXIS_tdata[23:0];
  assign video_router_to_s01_couplers_TDEST = S01_AXIS_tdest[0];
  assign video_router_to_s01_couplers_TID = S01_AXIS_tid[0];
  assign video_router_to_s01_couplers_TKEEP = S01_AXIS_tkeep[2:0];
  assign video_router_to_s01_couplers_TLAST = S01_AXIS_tlast[0];
  assign video_router_to_s01_couplers_TSTRB = S01_AXIS_tstrb[2:0];
  assign video_router_to_s01_couplers_TUSER = S01_AXIS_tuser[0];
  assign video_router_to_s01_couplers_TVALID = S01_AXIS_tvalid[0];
  assign video_router_to_s02_couplers_TDATA = S02_AXIS_tdata[23:0];
  assign video_router_to_s02_couplers_TDEST = S02_AXIS_tdest[0];
  assign video_router_to_s02_couplers_TID = S02_AXIS_tid[0];
  assign video_router_to_s02_couplers_TKEEP = S02_AXIS_tkeep[2:0];
  assign video_router_to_s02_couplers_TLAST = S02_AXIS_tlast[0];
  assign video_router_to_s02_couplers_TSTRB = S02_AXIS_tstrb[2:0];
  assign video_router_to_s02_couplers_TUSER = S02_AXIS_tuser[0];
  assign video_router_to_s02_couplers_TVALID = S02_AXIS_tvalid[0];
  assign video_router_to_s03_couplers_TDATA = S03_AXIS_tdata[47:0];
  assign video_router_to_s03_couplers_TKEEP = S03_AXIS_tkeep[5:0];
  assign video_router_to_s03_couplers_TLAST = S03_AXIS_tlast;
  assign video_router_to_s03_couplers_TUSER = S03_AXIS_tuser[5:0];
  assign video_router_to_s03_couplers_TVALID = S03_AXIS_tvalid;
  assign video_router_to_s04_couplers_TDATA = S04_AXIS_tdata[23:0];
  assign video_router_to_s04_couplers_TDEST = S04_AXIS_tdest[0];
  assign video_router_to_s04_couplers_TID = S04_AXIS_tid[0];
  assign video_router_to_s04_couplers_TKEEP = S04_AXIS_tkeep[2:0];
  assign video_router_to_s04_couplers_TLAST = S04_AXIS_tlast[0];
  assign video_router_to_s04_couplers_TSTRB = S04_AXIS_tstrb[2:0];
  assign video_router_to_s04_couplers_TUSER = S04_AXIS_tuser[0];
  assign video_router_to_s04_couplers_TVALID = S04_AXIS_tvalid[0];
  assign video_router_to_s05_couplers_TDATA = S05_AXIS_tdata[23:0];
  assign video_router_to_s05_couplers_TDEST = S05_AXIS_tdest[0];
  assign video_router_to_s05_couplers_TID = S05_AXIS_tid[0];
  assign video_router_to_s05_couplers_TKEEP = S05_AXIS_tkeep[2:0];
  assign video_router_to_s05_couplers_TLAST = S05_AXIS_tlast[0];
  assign video_router_to_s05_couplers_TSTRB = S05_AXIS_tstrb[2:0];
  assign video_router_to_s05_couplers_TUSER = S05_AXIS_tuser[0];
  assign video_router_to_s05_couplers_TVALID = S05_AXIS_tvalid;
  assign video_router_to_s06_couplers_TDATA = S06_AXIS_tdata[23:0];
  assign video_router_to_s06_couplers_TDEST = S06_AXIS_tdest[0];
  assign video_router_to_s06_couplers_TID = S06_AXIS_tid[0];
  assign video_router_to_s06_couplers_TKEEP = S06_AXIS_tkeep[2:0];
  assign video_router_to_s06_couplers_TLAST = S06_AXIS_tlast[0];
  assign video_router_to_s06_couplers_TSTRB = S06_AXIS_tstrb[2:0];
  assign video_router_to_s06_couplers_TUSER = S06_AXIS_tuser[0];
  assign video_router_to_s06_couplers_TVALID = S06_AXIS_tvalid;
  assign video_router_to_s07_couplers_TDATA = S07_AXIS_tdata[23:0];
  assign video_router_to_s07_couplers_TDEST = S07_AXIS_tdest[0];
  assign video_router_to_s07_couplers_TID = S07_AXIS_tid[0];
  assign video_router_to_s07_couplers_TKEEP = S07_AXIS_tkeep[2:0];
  assign video_router_to_s07_couplers_TLAST = S07_AXIS_tlast[0];
  assign video_router_to_s07_couplers_TSTRB = S07_AXIS_tstrb[2:0];
  assign video_router_to_s07_couplers_TUSER = S07_AXIS_tuser[0];
  assign video_router_to_s07_couplers_TVALID = S07_AXIS_tvalid;
  assign video_router_to_s08_couplers_TDATA = S08_AXIS_tdata[23:0];
  assign video_router_to_s08_couplers_TDEST = S08_AXIS_tdest[0];
  assign video_router_to_s08_couplers_TID = S08_AXIS_tid[0];
  assign video_router_to_s08_couplers_TKEEP = S08_AXIS_tkeep[2:0];
  assign video_router_to_s08_couplers_TLAST = S08_AXIS_tlast[0];
  assign video_router_to_s08_couplers_TSTRB = S08_AXIS_tstrb[2:0];
  assign video_router_to_s08_couplers_TUSER = S08_AXIS_tuser[0];
  assign video_router_to_s08_couplers_TVALID = S08_AXIS_tvalid[0];
  assign video_router_to_s09_couplers_TDATA = S09_AXIS_tdata[23:0];
  assign video_router_to_s09_couplers_TDEST = S09_AXIS_tdest;
  assign video_router_to_s09_couplers_TID = S09_AXIS_tid;
  assign video_router_to_s09_couplers_TKEEP = S09_AXIS_tkeep[2:0];
  assign video_router_to_s09_couplers_TLAST = S09_AXIS_tlast;
  assign video_router_to_s09_couplers_TSTRB = S09_AXIS_tstrb[2:0];
  assign video_router_to_s09_couplers_TUSER = S09_AXIS_tuser;
  assign video_router_to_s09_couplers_TVALID = S09_AXIS_tvalid;
  assign video_router_to_xbar_ARADDR = S_AXI_CTRL_araddr[19:0];
  assign video_router_to_xbar_ARVALID = S_AXI_CTRL_arvalid;
  assign video_router_to_xbar_AWADDR = S_AXI_CTRL_awaddr[19:0];
  assign video_router_to_xbar_AWVALID = S_AXI_CTRL_awvalid;
  assign video_router_to_xbar_BREADY = S_AXI_CTRL_bready;
  assign video_router_to_xbar_RREADY = S_AXI_CTRL_rready;
  assign video_router_to_xbar_WDATA = S_AXI_CTRL_wdata[31:0];
  assign video_router_to_xbar_WVALID = S_AXI_CTRL_wvalid;
  m00_couplers_imp_CV42HO m00_couplers
       (.M_AXIS_ACLK(M00_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M00_AXIS_ARESETN_1),
        .M_AXIS_tdata(m00_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m00_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m00_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m00_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m00_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m00_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m00_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m00_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m00_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m00_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m00_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m00_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m00_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  m01_couplers_imp_1B5X6FZ m01_couplers
       (.M_AXIS_ACLK(M01_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M01_AXIS_ARESETN_1),
        .M_AXIS_tdata(m01_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m01_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m01_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m01_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m01_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m01_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m01_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m01_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m01_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m01_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m01_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m01_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m01_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m01_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m01_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m01_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m01_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m01_couplers_TVALID));
  m02_couplers_imp_1XGZGWR m02_couplers
       (.M_AXIS_ACLK(M02_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M02_AXIS_ARESETN_1),
        .M_AXIS_tdata(m02_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m02_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m02_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m02_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m02_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m02_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m02_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m02_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m02_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m02_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m02_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m02_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m02_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m02_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m02_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m02_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m02_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m02_couplers_TVALID));
  m03_couplers_imp_YWD7H4 m03_couplers
       (.M_AXIS_ACLK(M03_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M03_AXIS_ARESETN_1),
        .M_AXIS_tdata(m03_couplers_to_video_router_TDATA),
        .M_AXIS_tkeep(m03_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m03_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m03_couplers_to_video_router_TREADY),
        .M_AXIS_tuser(m03_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m03_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m03_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m03_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m03_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m03_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m03_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m03_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m03_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m03_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m03_couplers_TVALID));
  m04_couplers_imp_PW9X03 m04_couplers
       (.M_AXIS_ACLK(M04_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M04_AXIS_ARESETN_1),
        .M_AXIS_tdata(m04_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m04_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m04_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m04_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m04_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m04_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m04_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m04_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m04_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m04_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m04_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m04_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m04_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m04_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m04_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m04_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m04_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m04_couplers_TVALID));
  m05_couplers_imp_1OR26FK m05_couplers
       (.M_AXIS_ACLK(M05_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M05_AXIS_ARESETN_1),
        .M_AXIS_tdata(m05_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m05_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m05_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m05_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m05_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m05_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m05_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m05_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m05_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m05_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m05_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m05_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m05_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m05_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m05_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m05_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m05_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m05_couplers_TVALID));
  m06_couplers_imp_124KRDG m06_couplers
       (.M_AXIS_ACLK(M06_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M06_AXIS_ARESETN_1),
        .M_AXIS_tdata(m06_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m06_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m06_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m06_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m06_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m06_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m06_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m06_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m06_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m06_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m06_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m06_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m06_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m06_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m06_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m06_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m06_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m06_couplers_TVALID));
  m07_couplers_imp_43XNMF m07_couplers
       (.M_AXIS_ACLK(M07_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M07_AXIS_ARESETN_1),
        .M_AXIS_tdata(m07_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m07_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m07_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m07_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m07_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m07_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m07_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m07_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m07_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m07_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m07_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m07_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m07_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m07_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m07_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m07_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m07_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m07_couplers_TVALID));
  m08_couplers_imp_1JKRG8Y m08_couplers
       (.M_AXIS_ACLK(M08_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M08_AXIS_ARESETN_1),
        .M_AXIS_tdata(m08_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m08_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m08_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m08_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m08_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m08_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m08_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m08_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m08_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m08_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m08_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m08_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m08_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m08_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m08_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m08_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m08_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m08_couplers_TVALID));
  m09_couplers_imp_M6AT6P m09_couplers
       (.M_AXIS_ACLK(M09_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M09_AXIS_ARESETN_1),
        .M_AXIS_tdata(m09_couplers_to_video_router_TDATA),
        .M_AXIS_tdest(m09_couplers_to_video_router_TDEST),
        .M_AXIS_tid(m09_couplers_to_video_router_TID),
        .M_AXIS_tkeep(m09_couplers_to_video_router_TKEEP),
        .M_AXIS_tlast(m09_couplers_to_video_router_TLAST),
        .M_AXIS_tready(m09_couplers_to_video_router_TREADY),
        .M_AXIS_tstrb(m09_couplers_to_video_router_TSTRB),
        .M_AXIS_tuser(m09_couplers_to_video_router_TUSER),
        .M_AXIS_tvalid(m09_couplers_to_video_router_TVALID),
        .S_AXIS_ACLK(video_router_ACLK_net),
        .S_AXIS_ARESETN(video_router_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m09_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m09_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m09_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m09_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m09_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m09_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m09_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m09_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m09_couplers_TVALID));
  s00_couplers_imp_1AZXCLC s00_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s00_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s00_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s00_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s00_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S00_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S00_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s00_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s00_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s00_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s00_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s00_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s00_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s00_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s00_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s00_couplers_TVALID));
  s01_couplers_imp_CZ5YRN s01_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s01_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s01_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s01_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s01_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s01_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s01_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s01_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s01_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s01_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S01_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S01_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s01_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s01_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s01_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s01_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s01_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s01_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s01_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s01_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s01_couplers_TVALID));
  s02_couplers_imp_YSA7RB s02_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s02_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s02_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s02_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s02_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s02_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s02_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s02_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s02_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s02_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S02_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S02_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s02_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s02_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s02_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s02_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s02_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s02_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s02_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s02_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s02_couplers_TVALID));
  s03_couplers_imp_1XMVDZ8 s03_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s03_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s03_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s03_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s03_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s03_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s03_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s03_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s03_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s03_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S03_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S03_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s03_couplers_TDATA),
        .S_AXIS_tkeep(video_router_to_s03_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s03_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s03_couplers_TREADY),
        .S_AXIS_tuser(video_router_to_s03_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s03_couplers_TVALID));
  s04_couplers_imp_1OLOJPR s04_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s04_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s04_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s04_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s04_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s04_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s04_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s04_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s04_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s04_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S04_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S04_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s04_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s04_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s04_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s04_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s04_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s04_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s04_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s04_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s04_couplers_TVALID));
  s05_couplers_imp_Q0XYMK s05_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s05_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s05_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s05_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s05_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s05_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s05_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s05_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s05_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s05_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S05_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S05_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s05_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s05_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s05_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s05_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s05_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s05_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s05_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s05_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s05_couplers_TVALID));
  s06_couplers_imp_3Z7W94 s06_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s06_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s06_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s06_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s06_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s06_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s06_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s06_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s06_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s06_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S06_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S06_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s06_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s06_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s06_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s06_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s06_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s06_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s06_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s06_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s06_couplers_TVALID));
  s07_couplers_imp_129TVEZ s07_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s07_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s07_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s07_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s07_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s07_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s07_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s07_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s07_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s07_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S07_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S07_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s07_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s07_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s07_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s07_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s07_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s07_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s07_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s07_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s07_couplers_TVALID));
  s08_couplers_imp_M1KPEM s08_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s08_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s08_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s08_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s08_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s08_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s08_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s08_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s08_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s08_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S08_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S08_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s08_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s08_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s08_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s08_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s08_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s08_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s08_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s08_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s08_couplers_TVALID));
  s09_couplers_imp_1JQ1MFX s09_couplers
       (.M_AXIS_ACLK(video_router_ACLK_net),
        .M_AXIS_ARESETN(video_router_ARESETN_net),
        .M_AXIS_tdata(s09_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s09_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s09_couplers_to_xbar_TID),
        .M_AXIS_tkeep(s09_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s09_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s09_couplers_to_xbar_TREADY),
        .M_AXIS_tstrb(s09_couplers_to_xbar_TSTRB),
        .M_AXIS_tuser(s09_couplers_to_xbar_TUSER),
        .M_AXIS_tvalid(s09_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(S09_AXIS_ACLK_1),
        .S_AXIS_ARESETN(S09_AXIS_ARESETN_1),
        .S_AXIS_tdata(video_router_to_s09_couplers_TDATA),
        .S_AXIS_tdest(video_router_to_s09_couplers_TDEST),
        .S_AXIS_tid(video_router_to_s09_couplers_TID),
        .S_AXIS_tkeep(video_router_to_s09_couplers_TKEEP),
        .S_AXIS_tlast(video_router_to_s09_couplers_TLAST),
        .S_AXIS_tready(video_router_to_s09_couplers_TREADY),
        .S_AXIS_tstrb(video_router_to_s09_couplers_TSTRB),
        .S_AXIS_tuser(video_router_to_s09_couplers_TUSER),
        .S_AXIS_tvalid(video_router_to_s09_couplers_TVALID));
  bd_2d50_xbar_1 xbar
       (.aclk(video_router_ACLK_net),
        .aresetn(video_router_ARESETN_net),
        .m_axis_tdata({xbar_to_m09_couplers_TDATA,xbar_to_m08_couplers_TDATA,xbar_to_m07_couplers_TDATA,xbar_to_m06_couplers_TDATA,xbar_to_m05_couplers_TDATA,xbar_to_m04_couplers_TDATA,xbar_to_m03_couplers_TDATA,xbar_to_m02_couplers_TDATA,xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({xbar_to_m09_couplers_TDEST,xbar_to_m08_couplers_TDEST,xbar_to_m07_couplers_TDEST,xbar_to_m06_couplers_TDEST,xbar_to_m05_couplers_TDEST,xbar_to_m04_couplers_TDEST,xbar_to_m03_couplers_TDEST,xbar_to_m02_couplers_TDEST,xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tid({xbar_to_m09_couplers_TID,xbar_to_m08_couplers_TID,xbar_to_m07_couplers_TID,xbar_to_m06_couplers_TID,xbar_to_m05_couplers_TID,xbar_to_m04_couplers_TID,xbar_to_m03_couplers_TID,xbar_to_m02_couplers_TID,xbar_to_m01_couplers_TID,xbar_to_m00_couplers_TID}),
        .m_axis_tkeep({xbar_to_m09_couplers_TKEEP,xbar_to_m08_couplers_TKEEP,xbar_to_m07_couplers_TKEEP,xbar_to_m06_couplers_TKEEP,xbar_to_m05_couplers_TKEEP,xbar_to_m04_couplers_TKEEP,xbar_to_m03_couplers_TKEEP,xbar_to_m02_couplers_TKEEP,xbar_to_m01_couplers_TKEEP,xbar_to_m00_couplers_TKEEP}),
        .m_axis_tlast({xbar_to_m09_couplers_TLAST,xbar_to_m08_couplers_TLAST,xbar_to_m07_couplers_TLAST,xbar_to_m06_couplers_TLAST,xbar_to_m05_couplers_TLAST,xbar_to_m04_couplers_TLAST,xbar_to_m03_couplers_TLAST,xbar_to_m02_couplers_TLAST,xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({xbar_to_m09_couplers_TREADY,xbar_to_m08_couplers_TREADY,xbar_to_m07_couplers_TREADY,xbar_to_m06_couplers_TREADY,xbar_to_m05_couplers_TREADY,xbar_to_m04_couplers_TREADY,xbar_to_m03_couplers_TREADY,xbar_to_m02_couplers_TREADY,xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tstrb({xbar_to_m09_couplers_TSTRB,xbar_to_m08_couplers_TSTRB,xbar_to_m07_couplers_TSTRB,xbar_to_m06_couplers_TSTRB,xbar_to_m05_couplers_TSTRB,xbar_to_m04_couplers_TSTRB,xbar_to_m03_couplers_TSTRB,xbar_to_m02_couplers_TSTRB,xbar_to_m01_couplers_TSTRB,xbar_to_m00_couplers_TSTRB}),
        .m_axis_tuser({xbar_to_m09_couplers_TUSER,xbar_to_m08_couplers_TUSER,xbar_to_m07_couplers_TUSER,xbar_to_m06_couplers_TUSER,xbar_to_m05_couplers_TUSER,xbar_to_m04_couplers_TUSER,xbar_to_m03_couplers_TUSER,xbar_to_m02_couplers_TUSER,xbar_to_m01_couplers_TUSER,xbar_to_m00_couplers_TUSER}),
        .m_axis_tvalid({xbar_to_m09_couplers_TVALID,xbar_to_m08_couplers_TVALID,xbar_to_m07_couplers_TVALID,xbar_to_m06_couplers_TVALID,xbar_to_m05_couplers_TVALID,xbar_to_m04_couplers_TVALID,xbar_to_m03_couplers_TVALID,xbar_to_m02_couplers_TVALID,xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axi_ctrl_aclk(S_AXI_CTRL_ACLK_1),
        .s_axi_ctrl_araddr(video_router_to_xbar_ARADDR[6:0]),
        .s_axi_ctrl_aresetn(S_AXI_CTRL_ARESETN_1),
        .s_axi_ctrl_arready(video_router_to_xbar_ARREADY),
        .s_axi_ctrl_arvalid(video_router_to_xbar_ARVALID),
        .s_axi_ctrl_awaddr(video_router_to_xbar_AWADDR[6:0]),
        .s_axi_ctrl_awready(video_router_to_xbar_AWREADY),
        .s_axi_ctrl_awvalid(video_router_to_xbar_AWVALID),
        .s_axi_ctrl_bready(video_router_to_xbar_BREADY),
        .s_axi_ctrl_bresp(video_router_to_xbar_BRESP),
        .s_axi_ctrl_bvalid(video_router_to_xbar_BVALID),
        .s_axi_ctrl_rdata(video_router_to_xbar_RDATA),
        .s_axi_ctrl_rready(video_router_to_xbar_RREADY),
        .s_axi_ctrl_rresp(video_router_to_xbar_RRESP),
        .s_axi_ctrl_rvalid(video_router_to_xbar_RVALID),
        .s_axi_ctrl_wdata(video_router_to_xbar_WDATA),
        .s_axi_ctrl_wready(video_router_to_xbar_WREADY),
        .s_axi_ctrl_wvalid(video_router_to_xbar_WVALID),
        .s_axis_tdata({s09_couplers_to_xbar_TDATA,s08_couplers_to_xbar_TDATA,s07_couplers_to_xbar_TDATA,s06_couplers_to_xbar_TDATA,s05_couplers_to_xbar_TDATA,s04_couplers_to_xbar_TDATA,s03_couplers_to_xbar_TDATA,s02_couplers_to_xbar_TDATA,s01_couplers_to_xbar_TDATA,s00_couplers_to_xbar_TDATA}),
        .s_axis_tdest({s09_couplers_to_xbar_TDEST,s08_couplers_to_xbar_TDEST,s07_couplers_to_xbar_TDEST,s06_couplers_to_xbar_TDEST,s05_couplers_to_xbar_TDEST,s04_couplers_to_xbar_TDEST,s03_couplers_to_xbar_TDEST,s02_couplers_to_xbar_TDEST,s01_couplers_to_xbar_TDEST,s00_couplers_to_xbar_TDEST}),
        .s_axis_tid({s09_couplers_to_xbar_TID,s08_couplers_to_xbar_TID,s07_couplers_to_xbar_TID,s06_couplers_to_xbar_TID,s05_couplers_to_xbar_TID,s04_couplers_to_xbar_TID,s03_couplers_to_xbar_TID,s02_couplers_to_xbar_TID,s01_couplers_to_xbar_TID,s00_couplers_to_xbar_TID}),
        .s_axis_tkeep({s09_couplers_to_xbar_TKEEP,s08_couplers_to_xbar_TKEEP,s07_couplers_to_xbar_TKEEP,s06_couplers_to_xbar_TKEEP,s05_couplers_to_xbar_TKEEP,s04_couplers_to_xbar_TKEEP,s03_couplers_to_xbar_TKEEP,s02_couplers_to_xbar_TKEEP,s01_couplers_to_xbar_TKEEP,s00_couplers_to_xbar_TKEEP}),
        .s_axis_tlast({s09_couplers_to_xbar_TLAST,s08_couplers_to_xbar_TLAST,s07_couplers_to_xbar_TLAST,s06_couplers_to_xbar_TLAST,s05_couplers_to_xbar_TLAST,s04_couplers_to_xbar_TLAST,s03_couplers_to_xbar_TLAST,s02_couplers_to_xbar_TLAST,s01_couplers_to_xbar_TLAST,s00_couplers_to_xbar_TLAST}),
        .s_axis_tready({s09_couplers_to_xbar_TREADY,s08_couplers_to_xbar_TREADY,s07_couplers_to_xbar_TREADY,s06_couplers_to_xbar_TREADY,s05_couplers_to_xbar_TREADY,s04_couplers_to_xbar_TREADY,s03_couplers_to_xbar_TREADY,s02_couplers_to_xbar_TREADY,s01_couplers_to_xbar_TREADY,s00_couplers_to_xbar_TREADY}),
        .s_axis_tstrb({s09_couplers_to_xbar_TSTRB,s08_couplers_to_xbar_TSTRB,s07_couplers_to_xbar_TSTRB,s06_couplers_to_xbar_TSTRB,s05_couplers_to_xbar_TSTRB,s04_couplers_to_xbar_TSTRB,s03_couplers_to_xbar_TSTRB,s02_couplers_to_xbar_TSTRB,s01_couplers_to_xbar_TSTRB,s00_couplers_to_xbar_TSTRB}),
        .s_axis_tuser({1'b0,1'b0,s09_couplers_to_xbar_TUSER,1'b0,1'b0,s08_couplers_to_xbar_TUSER,1'b0,1'b0,s07_couplers_to_xbar_TUSER,1'b0,1'b0,s06_couplers_to_xbar_TUSER,1'b0,1'b0,s05_couplers_to_xbar_TUSER,1'b0,1'b0,s04_couplers_to_xbar_TUSER,s03_couplers_to_xbar_TUSER,1'b0,1'b0,s02_couplers_to_xbar_TUSER,1'b0,1'b0,s01_couplers_to_xbar_TUSER,1'b0,1'b0,s00_couplers_to_xbar_TUSER}),
        .s_axis_tvalid({s09_couplers_to_xbar_TVALID,s08_couplers_to_xbar_TVALID,s07_couplers_to_xbar_TVALID,s06_couplers_to_xbar_TVALID,s05_couplers_to_xbar_TVALID,s04_couplers_to_xbar_TVALID,s03_couplers_to_xbar_TVALID,s02_couplers_to_xbar_TVALID,s01_couplers_to_xbar_TVALID,s00_couplers_to_xbar_TVALID}));
endmodule

module m00_couplers_imp_1THAUO9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [19:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [19:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[19:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[19:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[19:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_CV42HO
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m00_couplers_to_m00_regslice_TDATA;
  wire [0:0]m00_couplers_to_m00_regslice_TDEST;
  wire [0:0]m00_couplers_to_m00_regslice_TID;
  wire [2:0]m00_couplers_to_m00_regslice_TKEEP;
  wire m00_couplers_to_m00_regslice_TLAST;
  wire m00_couplers_to_m00_regslice_TREADY;
  wire [2:0]m00_couplers_to_m00_regslice_TSTRB;
  wire [2:0]m00_couplers_to_m00_regslice_TUSER;
  wire m00_couplers_to_m00_regslice_TVALID;
  wire [23:0]m00_regslice_to_m00_couplers_TDATA;
  wire [0:0]m00_regslice_to_m00_couplers_TDEST;
  wire [0:0]m00_regslice_to_m00_couplers_TID;
  wire [2:0]m00_regslice_to_m00_couplers_TKEEP;
  wire m00_regslice_to_m00_couplers_TLAST;
  wire m00_regslice_to_m00_couplers_TREADY;
  wire [2:0]m00_regslice_to_m00_couplers_TSTRB;
  wire [2:0]m00_regslice_to_m00_couplers_TUSER;
  wire m00_regslice_to_m00_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m00_regslice_to_m00_couplers_TDATA;
  assign M_AXIS_tdest[0] = m00_regslice_to_m00_couplers_TDEST;
  assign M_AXIS_tid[0] = m00_regslice_to_m00_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m00_regslice_to_m00_couplers_TKEEP;
  assign M_AXIS_tlast = m00_regslice_to_m00_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m00_regslice_to_m00_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m00_regslice_to_m00_couplers_TUSER;
  assign M_AXIS_tvalid = m00_regslice_to_m00_couplers_TVALID;
  assign S_AXIS_tready = m00_couplers_to_m00_regslice_TREADY;
  assign m00_couplers_to_m00_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m00_couplers_to_m00_regslice_TDEST = S_AXIS_tdest[0];
  assign m00_couplers_to_m00_regslice_TID = S_AXIS_tid[0];
  assign m00_couplers_to_m00_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m00_couplers_to_m00_regslice_TLAST = S_AXIS_tlast;
  assign m00_couplers_to_m00_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m00_couplers_to_m00_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m00_couplers_to_m00_regslice_TVALID = S_AXIS_tvalid;
  assign m00_regslice_to_m00_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m00_regslice_0 m00_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m00_regslice_to_m00_couplers_TDATA),
        .m_axis_tdest(m00_regslice_to_m00_couplers_TDEST),
        .m_axis_tid(m00_regslice_to_m00_couplers_TID),
        .m_axis_tkeep(m00_regslice_to_m00_couplers_TKEEP),
        .m_axis_tlast(m00_regslice_to_m00_couplers_TLAST),
        .m_axis_tready(m00_regslice_to_m00_couplers_TREADY),
        .m_axis_tstrb(m00_regslice_to_m00_couplers_TSTRB),
        .m_axis_tuser(m00_regslice_to_m00_couplers_TUSER),
        .m_axis_tvalid(m00_regslice_to_m00_couplers_TVALID),
        .s_axis_tdata(m00_couplers_to_m00_regslice_TDATA),
        .s_axis_tdest(m00_couplers_to_m00_regslice_TDEST),
        .s_axis_tid(m00_couplers_to_m00_regslice_TID),
        .s_axis_tkeep(m00_couplers_to_m00_regslice_TKEEP),
        .s_axis_tlast(m00_couplers_to_m00_regslice_TLAST),
        .s_axis_tready(m00_couplers_to_m00_regslice_TREADY),
        .s_axis_tstrb(m00_couplers_to_m00_regslice_TSTRB),
        .s_axis_tuser(m00_couplers_to_m00_regslice_TUSER),
        .s_axis_tvalid(m00_couplers_to_m00_regslice_TVALID));
endmodule

module m00_couplers_imp_W85NBR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [1:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [255:0]m00_couplers_to_m00_couplers_RDATA;
  wire [1:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [255:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [31:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[255:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[255:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1B5X6FZ
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m01_couplers_to_m01_regslice_TDATA;
  wire [0:0]m01_couplers_to_m01_regslice_TDEST;
  wire [0:0]m01_couplers_to_m01_regslice_TID;
  wire [2:0]m01_couplers_to_m01_regslice_TKEEP;
  wire m01_couplers_to_m01_regslice_TLAST;
  wire m01_couplers_to_m01_regslice_TREADY;
  wire [2:0]m01_couplers_to_m01_regslice_TSTRB;
  wire [2:0]m01_couplers_to_m01_regslice_TUSER;
  wire m01_couplers_to_m01_regslice_TVALID;
  wire [23:0]m01_regslice_to_m01_couplers_TDATA;
  wire [0:0]m01_regslice_to_m01_couplers_TDEST;
  wire [0:0]m01_regslice_to_m01_couplers_TID;
  wire [2:0]m01_regslice_to_m01_couplers_TKEEP;
  wire m01_regslice_to_m01_couplers_TLAST;
  wire m01_regslice_to_m01_couplers_TREADY;
  wire [2:0]m01_regslice_to_m01_couplers_TSTRB;
  wire [2:0]m01_regslice_to_m01_couplers_TUSER;
  wire m01_regslice_to_m01_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m01_regslice_to_m01_couplers_TDATA;
  assign M_AXIS_tdest[0] = m01_regslice_to_m01_couplers_TDEST;
  assign M_AXIS_tid[0] = m01_regslice_to_m01_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m01_regslice_to_m01_couplers_TKEEP;
  assign M_AXIS_tlast = m01_regslice_to_m01_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m01_regslice_to_m01_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m01_regslice_to_m01_couplers_TUSER;
  assign M_AXIS_tvalid = m01_regslice_to_m01_couplers_TVALID;
  assign S_AXIS_tready = m01_couplers_to_m01_regslice_TREADY;
  assign m01_couplers_to_m01_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m01_couplers_to_m01_regslice_TDEST = S_AXIS_tdest[0];
  assign m01_couplers_to_m01_regslice_TID = S_AXIS_tid[0];
  assign m01_couplers_to_m01_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m01_couplers_to_m01_regslice_TLAST = S_AXIS_tlast;
  assign m01_couplers_to_m01_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m01_couplers_to_m01_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m01_couplers_to_m01_regslice_TVALID = S_AXIS_tvalid;
  assign m01_regslice_to_m01_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m01_regslice_0 m01_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m01_regslice_to_m01_couplers_TDATA),
        .m_axis_tdest(m01_regslice_to_m01_couplers_TDEST),
        .m_axis_tid(m01_regslice_to_m01_couplers_TID),
        .m_axis_tkeep(m01_regslice_to_m01_couplers_TKEEP),
        .m_axis_tlast(m01_regslice_to_m01_couplers_TLAST),
        .m_axis_tready(m01_regslice_to_m01_couplers_TREADY),
        .m_axis_tstrb(m01_regslice_to_m01_couplers_TSTRB),
        .m_axis_tuser(m01_regslice_to_m01_couplers_TUSER),
        .m_axis_tvalid(m01_regslice_to_m01_couplers_TVALID),
        .s_axis_tdata(m01_couplers_to_m01_regslice_TDATA),
        .s_axis_tdest(m01_couplers_to_m01_regslice_TDEST),
        .s_axis_tid(m01_couplers_to_m01_regslice_TID),
        .s_axis_tkeep(m01_couplers_to_m01_regslice_TKEEP),
        .s_axis_tlast(m01_couplers_to_m01_regslice_TLAST),
        .s_axis_tready(m01_couplers_to_m01_regslice_TREADY),
        .s_axis_tstrb(m01_couplers_to_m01_regslice_TSTRB),
        .s_axis_tuser(m01_couplers_to_m01_regslice_TUSER),
        .s_axis_tvalid(m01_couplers_to_m01_regslice_TVALID));
endmodule

module m01_couplers_imp_U2A8WA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [8:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [19:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [19:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_1XGZGWR
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m02_couplers_to_m02_regslice_TDATA;
  wire [0:0]m02_couplers_to_m02_regslice_TDEST;
  wire [0:0]m02_couplers_to_m02_regslice_TID;
  wire [2:0]m02_couplers_to_m02_regslice_TKEEP;
  wire m02_couplers_to_m02_regslice_TLAST;
  wire m02_couplers_to_m02_regslice_TREADY;
  wire [2:0]m02_couplers_to_m02_regslice_TSTRB;
  wire [2:0]m02_couplers_to_m02_regslice_TUSER;
  wire m02_couplers_to_m02_regslice_TVALID;
  wire [23:0]m02_regslice_to_m02_couplers_TDATA;
  wire [0:0]m02_regslice_to_m02_couplers_TDEST;
  wire [0:0]m02_regslice_to_m02_couplers_TID;
  wire [2:0]m02_regslice_to_m02_couplers_TKEEP;
  wire m02_regslice_to_m02_couplers_TLAST;
  wire m02_regslice_to_m02_couplers_TREADY;
  wire [2:0]m02_regslice_to_m02_couplers_TSTRB;
  wire [2:0]m02_regslice_to_m02_couplers_TUSER;
  wire m02_regslice_to_m02_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m02_regslice_to_m02_couplers_TDATA;
  assign M_AXIS_tdest[0] = m02_regslice_to_m02_couplers_TDEST;
  assign M_AXIS_tid[0] = m02_regslice_to_m02_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m02_regslice_to_m02_couplers_TKEEP;
  assign M_AXIS_tlast = m02_regslice_to_m02_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m02_regslice_to_m02_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m02_regslice_to_m02_couplers_TUSER;
  assign M_AXIS_tvalid = m02_regslice_to_m02_couplers_TVALID;
  assign S_AXIS_tready = m02_couplers_to_m02_regslice_TREADY;
  assign m02_couplers_to_m02_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m02_couplers_to_m02_regslice_TDEST = S_AXIS_tdest[0];
  assign m02_couplers_to_m02_regslice_TID = S_AXIS_tid[0];
  assign m02_couplers_to_m02_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m02_couplers_to_m02_regslice_TLAST = S_AXIS_tlast;
  assign m02_couplers_to_m02_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m02_couplers_to_m02_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m02_couplers_to_m02_regslice_TVALID = S_AXIS_tvalid;
  assign m02_regslice_to_m02_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m02_regslice_0 m02_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m02_regslice_to_m02_couplers_TDATA),
        .m_axis_tdest(m02_regslice_to_m02_couplers_TDEST),
        .m_axis_tid(m02_regslice_to_m02_couplers_TID),
        .m_axis_tkeep(m02_regslice_to_m02_couplers_TKEEP),
        .m_axis_tlast(m02_regslice_to_m02_couplers_TLAST),
        .m_axis_tready(m02_regslice_to_m02_couplers_TREADY),
        .m_axis_tstrb(m02_regslice_to_m02_couplers_TSTRB),
        .m_axis_tuser(m02_regslice_to_m02_couplers_TUSER),
        .m_axis_tvalid(m02_regslice_to_m02_couplers_TVALID),
        .s_axis_tdata(m02_couplers_to_m02_regslice_TDATA),
        .s_axis_tdest(m02_couplers_to_m02_regslice_TDEST),
        .s_axis_tid(m02_couplers_to_m02_regslice_TID),
        .s_axis_tkeep(m02_couplers_to_m02_regslice_TKEEP),
        .s_axis_tlast(m02_couplers_to_m02_regslice_TLAST),
        .s_axis_tready(m02_couplers_to_m02_regslice_TREADY),
        .s_axis_tstrb(m02_couplers_to_m02_regslice_TSTRB),
        .s_axis_tuser(m02_couplers_to_m02_regslice_TUSER),
        .s_axis_tvalid(m02_couplers_to_m02_regslice_TVALID));
endmodule

module m02_couplers_imp_HOX72M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [11:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [19:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [19:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[11:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[11:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[11:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_1F5VMML
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [13:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [13:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [13:0]auto_cc_to_m03_couplers_ARADDR;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [13:0]auto_cc_to_m03_couplers_AWADDR;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [3:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [19:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [19:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[13:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[13:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[13:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[13:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_YWD7H4
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [47:0]M_AXIS_tdata;
  output [5:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [5:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK_1;
  wire M_AXIS_ARESETN_1;
  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [47:0]auto_cc_to_auto_ss_slidr_TDATA;
  wire [0:0]auto_cc_to_auto_ss_slidr_TDEST;
  wire [0:0]auto_cc_to_auto_ss_slidr_TID;
  wire [5:0]auto_cc_to_auto_ss_slidr_TKEEP;
  wire auto_cc_to_auto_ss_slidr_TLAST;
  wire auto_cc_to_auto_ss_slidr_TREADY;
  wire [5:0]auto_cc_to_auto_ss_slidr_TSTRB;
  wire [5:0]auto_cc_to_auto_ss_slidr_TUSER;
  wire auto_cc_to_auto_ss_slidr_TVALID;
  wire [47:0]auto_ss_slidr_to_m03_couplers_TDATA;
  wire [5:0]auto_ss_slidr_to_m03_couplers_TKEEP;
  wire auto_ss_slidr_to_m03_couplers_TLAST;
  wire auto_ss_slidr_to_m03_couplers_TREADY;
  wire [5:0]auto_ss_slidr_to_m03_couplers_TUSER;
  wire auto_ss_slidr_to_m03_couplers_TVALID;
  wire [47:0]auto_us_to_auto_cc_TDATA;
  wire [0:0]auto_us_to_auto_cc_TDEST;
  wire [0:0]auto_us_to_auto_cc_TID;
  wire [5:0]auto_us_to_auto_cc_TKEEP;
  wire auto_us_to_auto_cc_TLAST;
  wire auto_us_to_auto_cc_TREADY;
  wire [5:0]auto_us_to_auto_cc_TSTRB;
  wire [5:0]auto_us_to_auto_cc_TUSER;
  wire auto_us_to_auto_cc_TVALID;
  wire [23:0]m03_couplers_to_auto_us_TDATA;
  wire [0:0]m03_couplers_to_auto_us_TDEST;
  wire [0:0]m03_couplers_to_auto_us_TID;
  wire [2:0]m03_couplers_to_auto_us_TKEEP;
  wire m03_couplers_to_auto_us_TLAST;
  wire m03_couplers_to_auto_us_TREADY;
  wire [2:0]m03_couplers_to_auto_us_TSTRB;
  wire [2:0]m03_couplers_to_auto_us_TUSER;
  wire m03_couplers_to_auto_us_TVALID;

  assign M_AXIS_ACLK_1 = M_AXIS_ACLK;
  assign M_AXIS_ARESETN_1 = M_AXIS_ARESETN;
  assign M_AXIS_tdata[47:0] = auto_ss_slidr_to_m03_couplers_TDATA;
  assign M_AXIS_tkeep[5:0] = auto_ss_slidr_to_m03_couplers_TKEEP;
  assign M_AXIS_tlast = auto_ss_slidr_to_m03_couplers_TLAST;
  assign M_AXIS_tuser[5:0] = auto_ss_slidr_to_m03_couplers_TUSER;
  assign M_AXIS_tvalid = auto_ss_slidr_to_m03_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = m03_couplers_to_auto_us_TREADY;
  assign auto_ss_slidr_to_m03_couplers_TREADY = M_AXIS_tready;
  assign m03_couplers_to_auto_us_TDATA = S_AXIS_tdata[23:0];
  assign m03_couplers_to_auto_us_TDEST = S_AXIS_tdest[0];
  assign m03_couplers_to_auto_us_TID = S_AXIS_tid[0];
  assign m03_couplers_to_auto_us_TKEEP = S_AXIS_tkeep[2:0];
  assign m03_couplers_to_auto_us_TLAST = S_AXIS_tlast;
  assign m03_couplers_to_auto_us_TSTRB = S_AXIS_tstrb[2:0];
  assign m03_couplers_to_auto_us_TUSER = S_AXIS_tuser[2:0];
  assign m03_couplers_to_auto_us_TVALID = S_AXIS_tvalid;
  bd_2d50_auto_cc_11 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK_1),
        .m_axis_aresetn(M_AXIS_ARESETN_1),
        .m_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .m_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .m_axis_tid(auto_cc_to_auto_ss_slidr_TID),
        .m_axis_tkeep(auto_cc_to_auto_ss_slidr_TKEEP),
        .m_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .m_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .m_axis_tstrb(auto_cc_to_auto_ss_slidr_TSTRB),
        .m_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID),
        .s_axis_aclk(S_AXIS_ACLK_1),
        .s_axis_aresetn(S_AXIS_ARESETN_1),
        .s_axis_tdata(auto_us_to_auto_cc_TDATA),
        .s_axis_tdest(auto_us_to_auto_cc_TDEST),
        .s_axis_tid(auto_us_to_auto_cc_TID),
        .s_axis_tkeep(auto_us_to_auto_cc_TKEEP),
        .s_axis_tlast(auto_us_to_auto_cc_TLAST),
        .s_axis_tready(auto_us_to_auto_cc_TREADY),
        .s_axis_tstrb(auto_us_to_auto_cc_TSTRB),
        .s_axis_tuser(auto_us_to_auto_cc_TUSER),
        .s_axis_tvalid(auto_us_to_auto_cc_TVALID));
  bd_2d50_auto_ss_slidr_0 auto_ss_slidr
       (.aclk(M_AXIS_ACLK_1),
        .aresetn(M_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slidr_to_m03_couplers_TDATA),
        .m_axis_tkeep(auto_ss_slidr_to_m03_couplers_TKEEP),
        .m_axis_tlast(auto_ss_slidr_to_m03_couplers_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m03_couplers_TREADY),
        .m_axis_tuser(auto_ss_slidr_to_m03_couplers_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m03_couplers_TVALID),
        .s_axis_tdata(auto_cc_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(auto_cc_to_auto_ss_slidr_TDEST),
        .s_axis_tid(auto_cc_to_auto_ss_slidr_TID),
        .s_axis_tkeep(auto_cc_to_auto_ss_slidr_TKEEP),
        .s_axis_tlast(auto_cc_to_auto_ss_slidr_TLAST),
        .s_axis_tready(auto_cc_to_auto_ss_slidr_TREADY),
        .s_axis_tstrb(auto_cc_to_auto_ss_slidr_TSTRB),
        .s_axis_tuser(auto_cc_to_auto_ss_slidr_TUSER),
        .s_axis_tvalid(auto_cc_to_auto_ss_slidr_TVALID));
  bd_2d50_auto_us_0 auto_us
       (.aclk(S_AXIS_ACLK_1),
        .aresetn(S_AXIS_ARESETN_1),
        .m_axis_tdata(auto_us_to_auto_cc_TDATA),
        .m_axis_tdest(auto_us_to_auto_cc_TDEST),
        .m_axis_tid(auto_us_to_auto_cc_TID),
        .m_axis_tkeep(auto_us_to_auto_cc_TKEEP),
        .m_axis_tlast(auto_us_to_auto_cc_TLAST),
        .m_axis_tready(auto_us_to_auto_cc_TREADY),
        .m_axis_tstrb(auto_us_to_auto_cc_TSTRB),
        .m_axis_tuser(auto_us_to_auto_cc_TUSER),
        .m_axis_tvalid(auto_us_to_auto_cc_TVALID),
        .s_axis_tdata(m03_couplers_to_auto_us_TDATA),
        .s_axis_tdest(m03_couplers_to_auto_us_TDEST),
        .s_axis_tid(m03_couplers_to_auto_us_TID),
        .s_axis_tkeep(m03_couplers_to_auto_us_TKEEP),
        .s_axis_tlast(m03_couplers_to_auto_us_TLAST),
        .s_axis_tready(m03_couplers_to_auto_us_TREADY),
        .s_axis_tstrb(m03_couplers_to_auto_us_TSTRB),
        .s_axis_tuser(m03_couplers_to_auto_us_TUSER),
        .s_axis_tvalid(m03_couplers_to_auto_us_TVALID));
endmodule

module m04_couplers_imp_16FXGJQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m04_couplers_ARADDR;
  wire auto_cc_to_m04_couplers_ARREADY;
  wire auto_cc_to_m04_couplers_ARVALID;
  wire [6:0]auto_cc_to_m04_couplers_AWADDR;
  wire auto_cc_to_m04_couplers_AWREADY;
  wire auto_cc_to_m04_couplers_AWVALID;
  wire auto_cc_to_m04_couplers_BREADY;
  wire [1:0]auto_cc_to_m04_couplers_BRESP;
  wire auto_cc_to_m04_couplers_BVALID;
  wire [31:0]auto_cc_to_m04_couplers_RDATA;
  wire auto_cc_to_m04_couplers_RREADY;
  wire [1:0]auto_cc_to_m04_couplers_RRESP;
  wire auto_cc_to_m04_couplers_RVALID;
  wire [31:0]auto_cc_to_m04_couplers_WDATA;
  wire auto_cc_to_m04_couplers_WREADY;
  wire [3:0]auto_cc_to_m04_couplers_WSTRB;
  wire auto_cc_to_m04_couplers_WVALID;
  wire [19:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [19:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
endmodule

module m04_couplers_imp_PW9X03
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m04_couplers_to_m04_regslice_TDATA;
  wire [0:0]m04_couplers_to_m04_regslice_TDEST;
  wire [0:0]m04_couplers_to_m04_regslice_TID;
  wire [2:0]m04_couplers_to_m04_regslice_TKEEP;
  wire m04_couplers_to_m04_regslice_TLAST;
  wire m04_couplers_to_m04_regslice_TREADY;
  wire [2:0]m04_couplers_to_m04_regslice_TSTRB;
  wire [2:0]m04_couplers_to_m04_regslice_TUSER;
  wire m04_couplers_to_m04_regslice_TVALID;
  wire [23:0]m04_regslice_to_m04_couplers_TDATA;
  wire [0:0]m04_regslice_to_m04_couplers_TDEST;
  wire [0:0]m04_regslice_to_m04_couplers_TID;
  wire [2:0]m04_regslice_to_m04_couplers_TKEEP;
  wire m04_regslice_to_m04_couplers_TLAST;
  wire m04_regslice_to_m04_couplers_TREADY;
  wire [2:0]m04_regslice_to_m04_couplers_TSTRB;
  wire [2:0]m04_regslice_to_m04_couplers_TUSER;
  wire m04_regslice_to_m04_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m04_regslice_to_m04_couplers_TDATA;
  assign M_AXIS_tdest[0] = m04_regslice_to_m04_couplers_TDEST;
  assign M_AXIS_tid[0] = m04_regslice_to_m04_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m04_regslice_to_m04_couplers_TKEEP;
  assign M_AXIS_tlast = m04_regslice_to_m04_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m04_regslice_to_m04_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m04_regslice_to_m04_couplers_TUSER;
  assign M_AXIS_tvalid = m04_regslice_to_m04_couplers_TVALID;
  assign S_AXIS_tready = m04_couplers_to_m04_regslice_TREADY;
  assign m04_couplers_to_m04_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m04_couplers_to_m04_regslice_TDEST = S_AXIS_tdest[0];
  assign m04_couplers_to_m04_regslice_TID = S_AXIS_tid[0];
  assign m04_couplers_to_m04_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m04_couplers_to_m04_regslice_TLAST = S_AXIS_tlast;
  assign m04_couplers_to_m04_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m04_couplers_to_m04_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m04_couplers_to_m04_regslice_TVALID = S_AXIS_tvalid;
  assign m04_regslice_to_m04_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m04_regslice_0 m04_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m04_regslice_to_m04_couplers_TDATA),
        .m_axis_tdest(m04_regslice_to_m04_couplers_TDEST),
        .m_axis_tid(m04_regslice_to_m04_couplers_TID),
        .m_axis_tkeep(m04_regslice_to_m04_couplers_TKEEP),
        .m_axis_tlast(m04_regslice_to_m04_couplers_TLAST),
        .m_axis_tready(m04_regslice_to_m04_couplers_TREADY),
        .m_axis_tstrb(m04_regslice_to_m04_couplers_TSTRB),
        .m_axis_tuser(m04_regslice_to_m04_couplers_TUSER),
        .m_axis_tvalid(m04_regslice_to_m04_couplers_TVALID),
        .s_axis_tdata(m04_couplers_to_m04_regslice_TDATA),
        .s_axis_tdest(m04_couplers_to_m04_regslice_TDEST),
        .s_axis_tid(m04_couplers_to_m04_regslice_TID),
        .s_axis_tkeep(m04_couplers_to_m04_regslice_TKEEP),
        .s_axis_tlast(m04_couplers_to_m04_regslice_TLAST),
        .s_axis_tready(m04_couplers_to_m04_regslice_TREADY),
        .s_axis_tstrb(m04_couplers_to_m04_regslice_TSTRB),
        .s_axis_tuser(m04_couplers_to_m04_regslice_TUSER),
        .s_axis_tvalid(m04_couplers_to_m04_regslice_TVALID));
endmodule

module m05_couplers_imp_1OR26FK
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m05_couplers_to_m05_regslice_TDATA;
  wire [0:0]m05_couplers_to_m05_regslice_TDEST;
  wire [0:0]m05_couplers_to_m05_regslice_TID;
  wire [2:0]m05_couplers_to_m05_regslice_TKEEP;
  wire m05_couplers_to_m05_regslice_TLAST;
  wire m05_couplers_to_m05_regslice_TREADY;
  wire [2:0]m05_couplers_to_m05_regslice_TSTRB;
  wire [2:0]m05_couplers_to_m05_regslice_TUSER;
  wire m05_couplers_to_m05_regslice_TVALID;
  wire [23:0]m05_regslice_to_m05_couplers_TDATA;
  wire [0:0]m05_regslice_to_m05_couplers_TDEST;
  wire [0:0]m05_regslice_to_m05_couplers_TID;
  wire [2:0]m05_regslice_to_m05_couplers_TKEEP;
  wire m05_regslice_to_m05_couplers_TLAST;
  wire m05_regslice_to_m05_couplers_TREADY;
  wire [2:0]m05_regslice_to_m05_couplers_TSTRB;
  wire [2:0]m05_regslice_to_m05_couplers_TUSER;
  wire m05_regslice_to_m05_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m05_regslice_to_m05_couplers_TDATA;
  assign M_AXIS_tdest[0] = m05_regslice_to_m05_couplers_TDEST;
  assign M_AXIS_tid[0] = m05_regslice_to_m05_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m05_regslice_to_m05_couplers_TKEEP;
  assign M_AXIS_tlast[0] = m05_regslice_to_m05_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m05_regslice_to_m05_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m05_regslice_to_m05_couplers_TUSER;
  assign M_AXIS_tvalid = m05_regslice_to_m05_couplers_TVALID;
  assign S_AXIS_tready = m05_couplers_to_m05_regslice_TREADY;
  assign m05_couplers_to_m05_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m05_couplers_to_m05_regslice_TDEST = S_AXIS_tdest[0];
  assign m05_couplers_to_m05_regslice_TID = S_AXIS_tid[0];
  assign m05_couplers_to_m05_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m05_couplers_to_m05_regslice_TLAST = S_AXIS_tlast;
  assign m05_couplers_to_m05_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m05_couplers_to_m05_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m05_couplers_to_m05_regslice_TVALID = S_AXIS_tvalid;
  assign m05_regslice_to_m05_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m05_regslice_0 m05_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m05_regslice_to_m05_couplers_TDATA),
        .m_axis_tdest(m05_regslice_to_m05_couplers_TDEST),
        .m_axis_tid(m05_regslice_to_m05_couplers_TID),
        .m_axis_tkeep(m05_regslice_to_m05_couplers_TKEEP),
        .m_axis_tlast(m05_regslice_to_m05_couplers_TLAST),
        .m_axis_tready(m05_regslice_to_m05_couplers_TREADY),
        .m_axis_tstrb(m05_regslice_to_m05_couplers_TSTRB),
        .m_axis_tuser(m05_regslice_to_m05_couplers_TUSER),
        .m_axis_tvalid(m05_regslice_to_m05_couplers_TVALID),
        .s_axis_tdata(m05_couplers_to_m05_regslice_TDATA),
        .s_axis_tdest(m05_couplers_to_m05_regslice_TDEST),
        .s_axis_tid(m05_couplers_to_m05_regslice_TID),
        .s_axis_tkeep(m05_couplers_to_m05_regslice_TKEEP),
        .s_axis_tlast(m05_couplers_to_m05_regslice_TLAST),
        .s_axis_tready(m05_couplers_to_m05_regslice_TREADY),
        .s_axis_tstrb(m05_couplers_to_m05_regslice_TSTRB),
        .s_axis_tuser(m05_couplers_to_m05_regslice_TUSER),
        .s_axis_tvalid(m05_couplers_to_m05_regslice_TVALID));
endmodule

module m05_couplers_imp_8OUFK5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [10:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [10:0]auto_cc_to_m05_couplers_ARADDR;
  wire auto_cc_to_m05_couplers_ARREADY;
  wire auto_cc_to_m05_couplers_ARVALID;
  wire [10:0]auto_cc_to_m05_couplers_AWADDR;
  wire auto_cc_to_m05_couplers_AWREADY;
  wire auto_cc_to_m05_couplers_AWVALID;
  wire auto_cc_to_m05_couplers_BREADY;
  wire [1:0]auto_cc_to_m05_couplers_BRESP;
  wire auto_cc_to_m05_couplers_BVALID;
  wire [31:0]auto_cc_to_m05_couplers_RDATA;
  wire auto_cc_to_m05_couplers_RREADY;
  wire [1:0]auto_cc_to_m05_couplers_RRESP;
  wire auto_cc_to_m05_couplers_RVALID;
  wire [31:0]auto_cc_to_m05_couplers_WDATA;
  wire auto_cc_to_m05_couplers_WREADY;
  wire [3:0]auto_cc_to_m05_couplers_WSTRB;
  wire auto_cc_to_m05_couplers_WVALID;
  wire [19:0]m05_couplers_to_auto_cc_ARADDR;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [19:0]m05_couplers_to_auto_cc_AWADDR;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [31:0]m05_couplers_to_auto_cc_RDATA;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [31:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [3:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = auto_cc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = auto_cc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m05_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[10:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[10:0]),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
endmodule

module m06_couplers_imp_124KRDG
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m06_couplers_to_m06_regslice_TDATA;
  wire [0:0]m06_couplers_to_m06_regslice_TDEST;
  wire [0:0]m06_couplers_to_m06_regslice_TID;
  wire [2:0]m06_couplers_to_m06_regslice_TKEEP;
  wire m06_couplers_to_m06_regslice_TLAST;
  wire m06_couplers_to_m06_regslice_TREADY;
  wire [2:0]m06_couplers_to_m06_regslice_TSTRB;
  wire [2:0]m06_couplers_to_m06_regslice_TUSER;
  wire m06_couplers_to_m06_regslice_TVALID;
  wire [23:0]m06_regslice_to_m06_couplers_TDATA;
  wire [0:0]m06_regslice_to_m06_couplers_TDEST;
  wire [0:0]m06_regslice_to_m06_couplers_TID;
  wire [2:0]m06_regslice_to_m06_couplers_TKEEP;
  wire m06_regslice_to_m06_couplers_TLAST;
  wire m06_regslice_to_m06_couplers_TREADY;
  wire [2:0]m06_regslice_to_m06_couplers_TSTRB;
  wire [2:0]m06_regslice_to_m06_couplers_TUSER;
  wire m06_regslice_to_m06_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m06_regslice_to_m06_couplers_TDATA;
  assign M_AXIS_tdest[0] = m06_regslice_to_m06_couplers_TDEST;
  assign M_AXIS_tid[0] = m06_regslice_to_m06_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m06_regslice_to_m06_couplers_TKEEP;
  assign M_AXIS_tlast[0] = m06_regslice_to_m06_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m06_regslice_to_m06_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m06_regslice_to_m06_couplers_TUSER;
  assign M_AXIS_tvalid = m06_regslice_to_m06_couplers_TVALID;
  assign S_AXIS_tready = m06_couplers_to_m06_regslice_TREADY;
  assign m06_couplers_to_m06_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m06_couplers_to_m06_regslice_TDEST = S_AXIS_tdest[0];
  assign m06_couplers_to_m06_regslice_TID = S_AXIS_tid[0];
  assign m06_couplers_to_m06_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m06_couplers_to_m06_regslice_TLAST = S_AXIS_tlast;
  assign m06_couplers_to_m06_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m06_couplers_to_m06_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m06_couplers_to_m06_regslice_TVALID = S_AXIS_tvalid;
  assign m06_regslice_to_m06_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m06_regslice_0 m06_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m06_regslice_to_m06_couplers_TDATA),
        .m_axis_tdest(m06_regslice_to_m06_couplers_TDEST),
        .m_axis_tid(m06_regslice_to_m06_couplers_TID),
        .m_axis_tkeep(m06_regslice_to_m06_couplers_TKEEP),
        .m_axis_tlast(m06_regslice_to_m06_couplers_TLAST),
        .m_axis_tready(m06_regslice_to_m06_couplers_TREADY),
        .m_axis_tstrb(m06_regslice_to_m06_couplers_TSTRB),
        .m_axis_tuser(m06_regslice_to_m06_couplers_TUSER),
        .m_axis_tvalid(m06_regslice_to_m06_couplers_TVALID),
        .s_axis_tdata(m06_couplers_to_m06_regslice_TDATA),
        .s_axis_tdest(m06_couplers_to_m06_regslice_TDEST),
        .s_axis_tid(m06_couplers_to_m06_regslice_TID),
        .s_axis_tkeep(m06_couplers_to_m06_regslice_TKEEP),
        .s_axis_tlast(m06_couplers_to_m06_regslice_TLAST),
        .s_axis_tready(m06_couplers_to_m06_regslice_TREADY),
        .s_axis_tstrb(m06_couplers_to_m06_regslice_TSTRB),
        .s_axis_tuser(m06_couplers_to_m06_regslice_TUSER),
        .s_axis_tvalid(m06_couplers_to_m06_regslice_TVALID));
endmodule

module m06_couplers_imp_LB3B29
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [10:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [10:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [10:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [19:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [19:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[10:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[10:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module m07_couplers_imp_1KFZB7M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [10:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [10:0]auto_cc_to_m07_couplers_ARADDR;
  wire auto_cc_to_m07_couplers_ARREADY;
  wire auto_cc_to_m07_couplers_ARVALID;
  wire [10:0]auto_cc_to_m07_couplers_AWADDR;
  wire auto_cc_to_m07_couplers_AWREADY;
  wire auto_cc_to_m07_couplers_AWVALID;
  wire auto_cc_to_m07_couplers_BREADY;
  wire [1:0]auto_cc_to_m07_couplers_BRESP;
  wire auto_cc_to_m07_couplers_BVALID;
  wire [31:0]auto_cc_to_m07_couplers_RDATA;
  wire auto_cc_to_m07_couplers_RREADY;
  wire [1:0]auto_cc_to_m07_couplers_RRESP;
  wire auto_cc_to_m07_couplers_RVALID;
  wire [31:0]auto_cc_to_m07_couplers_WDATA;
  wire auto_cc_to_m07_couplers_WREADY;
  wire [3:0]auto_cc_to_m07_couplers_WSTRB;
  wire auto_cc_to_m07_couplers_WVALID;
  wire [19:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [19:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = auto_cc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = auto_cc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m07_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[10:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[10:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
endmodule

module m07_couplers_imp_43XNMF
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m07_couplers_to_m07_regslice_TDATA;
  wire [0:0]m07_couplers_to_m07_regslice_TDEST;
  wire [0:0]m07_couplers_to_m07_regslice_TID;
  wire [2:0]m07_couplers_to_m07_regslice_TKEEP;
  wire m07_couplers_to_m07_regslice_TLAST;
  wire m07_couplers_to_m07_regslice_TREADY;
  wire [2:0]m07_couplers_to_m07_regslice_TSTRB;
  wire [2:0]m07_couplers_to_m07_regslice_TUSER;
  wire m07_couplers_to_m07_regslice_TVALID;
  wire [23:0]m07_regslice_to_m07_couplers_TDATA;
  wire [0:0]m07_regslice_to_m07_couplers_TDEST;
  wire [0:0]m07_regslice_to_m07_couplers_TID;
  wire [2:0]m07_regslice_to_m07_couplers_TKEEP;
  wire m07_regslice_to_m07_couplers_TLAST;
  wire m07_regslice_to_m07_couplers_TREADY;
  wire [2:0]m07_regslice_to_m07_couplers_TSTRB;
  wire [2:0]m07_regslice_to_m07_couplers_TUSER;
  wire m07_regslice_to_m07_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m07_regslice_to_m07_couplers_TDATA;
  assign M_AXIS_tdest[0] = m07_regslice_to_m07_couplers_TDEST;
  assign M_AXIS_tid[0] = m07_regslice_to_m07_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m07_regslice_to_m07_couplers_TKEEP;
  assign M_AXIS_tlast[0] = m07_regslice_to_m07_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m07_regslice_to_m07_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m07_regslice_to_m07_couplers_TUSER;
  assign M_AXIS_tvalid = m07_regslice_to_m07_couplers_TVALID;
  assign S_AXIS_tready = m07_couplers_to_m07_regslice_TREADY;
  assign m07_couplers_to_m07_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m07_couplers_to_m07_regslice_TDEST = S_AXIS_tdest[0];
  assign m07_couplers_to_m07_regslice_TID = S_AXIS_tid[0];
  assign m07_couplers_to_m07_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m07_couplers_to_m07_regslice_TLAST = S_AXIS_tlast;
  assign m07_couplers_to_m07_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m07_couplers_to_m07_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m07_couplers_to_m07_regslice_TVALID = S_AXIS_tvalid;
  assign m07_regslice_to_m07_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m07_regslice_0 m07_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m07_regslice_to_m07_couplers_TDATA),
        .m_axis_tdest(m07_regslice_to_m07_couplers_TDEST),
        .m_axis_tid(m07_regslice_to_m07_couplers_TID),
        .m_axis_tkeep(m07_regslice_to_m07_couplers_TKEEP),
        .m_axis_tlast(m07_regslice_to_m07_couplers_TLAST),
        .m_axis_tready(m07_regslice_to_m07_couplers_TREADY),
        .m_axis_tstrb(m07_regslice_to_m07_couplers_TSTRB),
        .m_axis_tuser(m07_regslice_to_m07_couplers_TUSER),
        .m_axis_tvalid(m07_regslice_to_m07_couplers_TVALID),
        .s_axis_tdata(m07_couplers_to_m07_regslice_TDATA),
        .s_axis_tdest(m07_couplers_to_m07_regslice_TDEST),
        .s_axis_tid(m07_couplers_to_m07_regslice_TID),
        .s_axis_tkeep(m07_couplers_to_m07_regslice_TKEEP),
        .s_axis_tlast(m07_couplers_to_m07_regslice_TLAST),
        .s_axis_tready(m07_couplers_to_m07_regslice_TREADY),
        .s_axis_tstrb(m07_couplers_to_m07_regslice_TSTRB),
        .s_axis_tuser(m07_couplers_to_m07_regslice_TUSER),
        .s_axis_tvalid(m07_couplers_to_m07_regslice_TVALID));
endmodule

module m08_couplers_imp_1JKRG8Y
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [23:0]m08_couplers_to_m08_regslice_TDATA;
  wire [0:0]m08_couplers_to_m08_regslice_TDEST;
  wire [0:0]m08_couplers_to_m08_regslice_TID;
  wire [2:0]m08_couplers_to_m08_regslice_TKEEP;
  wire m08_couplers_to_m08_regslice_TLAST;
  wire m08_couplers_to_m08_regslice_TREADY;
  wire [2:0]m08_couplers_to_m08_regslice_TSTRB;
  wire [2:0]m08_couplers_to_m08_regslice_TUSER;
  wire m08_couplers_to_m08_regslice_TVALID;
  wire [23:0]m08_regslice_to_m08_couplers_TDATA;
  wire [0:0]m08_regslice_to_m08_couplers_TDEST;
  wire [0:0]m08_regslice_to_m08_couplers_TID;
  wire [2:0]m08_regslice_to_m08_couplers_TKEEP;
  wire m08_regslice_to_m08_couplers_TLAST;
  wire m08_regslice_to_m08_couplers_TREADY;
  wire [2:0]m08_regslice_to_m08_couplers_TSTRB;
  wire [2:0]m08_regslice_to_m08_couplers_TUSER;
  wire m08_regslice_to_m08_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m08_regslice_to_m08_couplers_TDATA;
  assign M_AXIS_tdest[0] = m08_regslice_to_m08_couplers_TDEST;
  assign M_AXIS_tid[0] = m08_regslice_to_m08_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m08_regslice_to_m08_couplers_TKEEP;
  assign M_AXIS_tlast = m08_regslice_to_m08_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m08_regslice_to_m08_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m08_regslice_to_m08_couplers_TUSER;
  assign M_AXIS_tvalid = m08_regslice_to_m08_couplers_TVALID;
  assign S_AXIS_tready = m08_couplers_to_m08_regslice_TREADY;
  assign m08_couplers_to_m08_regslice_TDATA = S_AXIS_tdata[23:0];
  assign m08_couplers_to_m08_regslice_TDEST = S_AXIS_tdest[0];
  assign m08_couplers_to_m08_regslice_TID = S_AXIS_tid[0];
  assign m08_couplers_to_m08_regslice_TKEEP = S_AXIS_tkeep[2:0];
  assign m08_couplers_to_m08_regslice_TLAST = S_AXIS_tlast;
  assign m08_couplers_to_m08_regslice_TSTRB = S_AXIS_tstrb[2:0];
  assign m08_couplers_to_m08_regslice_TUSER = S_AXIS_tuser[2:0];
  assign m08_couplers_to_m08_regslice_TVALID = S_AXIS_tvalid;
  assign m08_regslice_to_m08_couplers_TREADY = M_AXIS_tready;
  bd_2d50_m08_regslice_0 m08_regslice
       (.aclk(M_AXIS_ACLK),
        .aresetn(M_AXIS_ARESETN),
        .m_axis_tdata(m08_regslice_to_m08_couplers_TDATA),
        .m_axis_tdest(m08_regslice_to_m08_couplers_TDEST),
        .m_axis_tid(m08_regslice_to_m08_couplers_TID),
        .m_axis_tkeep(m08_regslice_to_m08_couplers_TKEEP),
        .m_axis_tlast(m08_regslice_to_m08_couplers_TLAST),
        .m_axis_tready(m08_regslice_to_m08_couplers_TREADY),
        .m_axis_tstrb(m08_regslice_to_m08_couplers_TSTRB),
        .m_axis_tuser(m08_regslice_to_m08_couplers_TUSER),
        .m_axis_tvalid(m08_regslice_to_m08_couplers_TVALID),
        .s_axis_tdata(m08_couplers_to_m08_regslice_TDATA),
        .s_axis_tdest(m08_couplers_to_m08_regslice_TDEST),
        .s_axis_tid(m08_couplers_to_m08_regslice_TID),
        .s_axis_tkeep(m08_couplers_to_m08_regslice_TKEEP),
        .s_axis_tlast(m08_couplers_to_m08_regslice_TLAST),
        .s_axis_tready(m08_couplers_to_m08_regslice_TREADY),
        .s_axis_tstrb(m08_couplers_to_m08_regslice_TSTRB),
        .s_axis_tuser(m08_couplers_to_m08_regslice_TUSER),
        .s_axis_tvalid(m08_couplers_to_m08_regslice_TVALID));
endmodule

module m08_couplers_imp_3V6SLZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m08_couplers_ARADDR;
  wire auto_cc_to_m08_couplers_ARREADY;
  wire auto_cc_to_m08_couplers_ARVALID;
  wire [8:0]auto_cc_to_m08_couplers_AWADDR;
  wire auto_cc_to_m08_couplers_AWREADY;
  wire auto_cc_to_m08_couplers_AWVALID;
  wire auto_cc_to_m08_couplers_BREADY;
  wire [1:0]auto_cc_to_m08_couplers_BRESP;
  wire auto_cc_to_m08_couplers_BVALID;
  wire [31:0]auto_cc_to_m08_couplers_RDATA;
  wire auto_cc_to_m08_couplers_RREADY;
  wire [1:0]auto_cc_to_m08_couplers_RRESP;
  wire auto_cc_to_m08_couplers_RVALID;
  wire [31:0]auto_cc_to_m08_couplers_WDATA;
  wire auto_cc_to_m08_couplers_WREADY;
  wire [3:0]auto_cc_to_m08_couplers_WSTRB;
  wire auto_cc_to_m08_couplers_WVALID;
  wire [19:0]m08_couplers_to_auto_cc_ARADDR;
  wire [2:0]m08_couplers_to_auto_cc_ARPROT;
  wire m08_couplers_to_auto_cc_ARREADY;
  wire m08_couplers_to_auto_cc_ARVALID;
  wire [19:0]m08_couplers_to_auto_cc_AWADDR;
  wire [2:0]m08_couplers_to_auto_cc_AWPROT;
  wire m08_couplers_to_auto_cc_AWREADY;
  wire m08_couplers_to_auto_cc_AWVALID;
  wire m08_couplers_to_auto_cc_BREADY;
  wire [1:0]m08_couplers_to_auto_cc_BRESP;
  wire m08_couplers_to_auto_cc_BVALID;
  wire [31:0]m08_couplers_to_auto_cc_RDATA;
  wire m08_couplers_to_auto_cc_RREADY;
  wire [1:0]m08_couplers_to_auto_cc_RRESP;
  wire m08_couplers_to_auto_cc_RVALID;
  wire [31:0]m08_couplers_to_auto_cc_WDATA;
  wire m08_couplers_to_auto_cc_WREADY;
  wire [3:0]m08_couplers_to_auto_cc_WSTRB;
  wire m08_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m08_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m08_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m08_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m08_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m08_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m08_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m08_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m08_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m08_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m08_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m08_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m08_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m08_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_cc_WVALID));
endmodule

module m09_couplers_imp_12DB9JO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m09_couplers_ARADDR;
  wire auto_cc_to_m09_couplers_ARREADY;
  wire auto_cc_to_m09_couplers_ARVALID;
  wire [8:0]auto_cc_to_m09_couplers_AWADDR;
  wire auto_cc_to_m09_couplers_AWREADY;
  wire auto_cc_to_m09_couplers_AWVALID;
  wire auto_cc_to_m09_couplers_BREADY;
  wire [1:0]auto_cc_to_m09_couplers_BRESP;
  wire auto_cc_to_m09_couplers_BVALID;
  wire [31:0]auto_cc_to_m09_couplers_RDATA;
  wire auto_cc_to_m09_couplers_RREADY;
  wire [1:0]auto_cc_to_m09_couplers_RRESP;
  wire auto_cc_to_m09_couplers_RVALID;
  wire [31:0]auto_cc_to_m09_couplers_WDATA;
  wire auto_cc_to_m09_couplers_WREADY;
  wire auto_cc_to_m09_couplers_WVALID;
  wire [19:0]m09_couplers_to_auto_cc_ARADDR;
  wire [2:0]m09_couplers_to_auto_cc_ARPROT;
  wire m09_couplers_to_auto_cc_ARREADY;
  wire m09_couplers_to_auto_cc_ARVALID;
  wire [19:0]m09_couplers_to_auto_cc_AWADDR;
  wire [2:0]m09_couplers_to_auto_cc_AWPROT;
  wire m09_couplers_to_auto_cc_AWREADY;
  wire m09_couplers_to_auto_cc_AWVALID;
  wire m09_couplers_to_auto_cc_BREADY;
  wire [1:0]m09_couplers_to_auto_cc_BRESP;
  wire m09_couplers_to_auto_cc_BVALID;
  wire [31:0]m09_couplers_to_auto_cc_RDATA;
  wire m09_couplers_to_auto_cc_RREADY;
  wire [1:0]m09_couplers_to_auto_cc_RRESP;
  wire m09_couplers_to_auto_cc_RVALID;
  wire [31:0]m09_couplers_to_auto_cc_WDATA;
  wire m09_couplers_to_auto_cc_WREADY;
  wire [3:0]m09_couplers_to_auto_cc_WSTRB;
  wire m09_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m09_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m09_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m09_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_8 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m09_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m09_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m09_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m09_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m09_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m09_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m09_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m09_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m09_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m09_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m09_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m09_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m09_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_cc_WVALID));
endmodule

module m09_couplers_imp_M6AT6P
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [23:0]m09_couplers_to_m09_couplers_TDATA;
  wire [0:0]m09_couplers_to_m09_couplers_TDEST;
  wire [0:0]m09_couplers_to_m09_couplers_TID;
  wire [2:0]m09_couplers_to_m09_couplers_TKEEP;
  wire m09_couplers_to_m09_couplers_TLAST;
  wire m09_couplers_to_m09_couplers_TREADY;
  wire [2:0]m09_couplers_to_m09_couplers_TSTRB;
  wire [2:0]m09_couplers_to_m09_couplers_TUSER;
  wire m09_couplers_to_m09_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = m09_couplers_to_m09_couplers_TDATA;
  assign M_AXIS_tdest[0] = m09_couplers_to_m09_couplers_TDEST;
  assign M_AXIS_tid[0] = m09_couplers_to_m09_couplers_TID;
  assign M_AXIS_tkeep[2:0] = m09_couplers_to_m09_couplers_TKEEP;
  assign M_AXIS_tlast = m09_couplers_to_m09_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = m09_couplers_to_m09_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = m09_couplers_to_m09_couplers_TUSER;
  assign M_AXIS_tvalid = m09_couplers_to_m09_couplers_TVALID;
  assign S_AXIS_tready = m09_couplers_to_m09_couplers_TREADY;
  assign m09_couplers_to_m09_couplers_TDATA = S_AXIS_tdata[23:0];
  assign m09_couplers_to_m09_couplers_TDEST = S_AXIS_tdest[0];
  assign m09_couplers_to_m09_couplers_TID = S_AXIS_tid[0];
  assign m09_couplers_to_m09_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign m09_couplers_to_m09_couplers_TLAST = S_AXIS_tlast;
  assign m09_couplers_to_m09_couplers_TREADY = M_AXIS_tready;
  assign m09_couplers_to_m09_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign m09_couplers_to_m09_couplers_TUSER = S_AXIS_tuser[2:0];
  assign m09_couplers_to_m09_couplers_TVALID = S_AXIS_tvalid;
endmodule

module m10_couplers_imp_1AQE5K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m10_couplers_ARADDR;
  wire auto_cc_to_m10_couplers_ARREADY;
  wire auto_cc_to_m10_couplers_ARVALID;
  wire [6:0]auto_cc_to_m10_couplers_AWADDR;
  wire auto_cc_to_m10_couplers_AWREADY;
  wire auto_cc_to_m10_couplers_AWVALID;
  wire auto_cc_to_m10_couplers_BREADY;
  wire [1:0]auto_cc_to_m10_couplers_BRESP;
  wire auto_cc_to_m10_couplers_BVALID;
  wire [31:0]auto_cc_to_m10_couplers_RDATA;
  wire auto_cc_to_m10_couplers_RREADY;
  wire [1:0]auto_cc_to_m10_couplers_RRESP;
  wire auto_cc_to_m10_couplers_RVALID;
  wire [31:0]auto_cc_to_m10_couplers_WDATA;
  wire auto_cc_to_m10_couplers_WREADY;
  wire [3:0]auto_cc_to_m10_couplers_WSTRB;
  wire auto_cc_to_m10_couplers_WVALID;
  wire [19:0]m10_couplers_to_auto_cc_ARADDR;
  wire [2:0]m10_couplers_to_auto_cc_ARPROT;
  wire m10_couplers_to_auto_cc_ARREADY;
  wire m10_couplers_to_auto_cc_ARVALID;
  wire [19:0]m10_couplers_to_auto_cc_AWADDR;
  wire [2:0]m10_couplers_to_auto_cc_AWPROT;
  wire m10_couplers_to_auto_cc_AWREADY;
  wire m10_couplers_to_auto_cc_AWVALID;
  wire m10_couplers_to_auto_cc_BREADY;
  wire [1:0]m10_couplers_to_auto_cc_BRESP;
  wire m10_couplers_to_auto_cc_BVALID;
  wire [31:0]m10_couplers_to_auto_cc_RDATA;
  wire m10_couplers_to_auto_cc_RREADY;
  wire [1:0]m10_couplers_to_auto_cc_RRESP;
  wire m10_couplers_to_auto_cc_RVALID;
  wire [31:0]m10_couplers_to_auto_cc_WDATA;
  wire m10_couplers_to_auto_cc_WREADY;
  wire [3:0]m10_couplers_to_auto_cc_WSTRB;
  wire m10_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m10_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m10_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m10_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_9 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m10_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m10_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m10_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m10_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m10_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m10_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m10_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m10_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m10_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m10_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m10_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m10_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m10_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_cc_WVALID));
endmodule

module m11_couplers_imp_10CYW6J
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m11_couplers_ARADDR;
  wire auto_cc_to_m11_couplers_ARREADY;
  wire auto_cc_to_m11_couplers_ARVALID;
  wire [8:0]auto_cc_to_m11_couplers_AWADDR;
  wire auto_cc_to_m11_couplers_AWREADY;
  wire auto_cc_to_m11_couplers_AWVALID;
  wire auto_cc_to_m11_couplers_BREADY;
  wire [1:0]auto_cc_to_m11_couplers_BRESP;
  wire auto_cc_to_m11_couplers_BVALID;
  wire [31:0]auto_cc_to_m11_couplers_RDATA;
  wire auto_cc_to_m11_couplers_RREADY;
  wire [1:0]auto_cc_to_m11_couplers_RRESP;
  wire auto_cc_to_m11_couplers_RVALID;
  wire [31:0]auto_cc_to_m11_couplers_WDATA;
  wire auto_cc_to_m11_couplers_WREADY;
  wire [3:0]auto_cc_to_m11_couplers_WSTRB;
  wire auto_cc_to_m11_couplers_WVALID;
  wire [19:0]m11_couplers_to_auto_cc_ARADDR;
  wire [2:0]m11_couplers_to_auto_cc_ARPROT;
  wire m11_couplers_to_auto_cc_ARREADY;
  wire m11_couplers_to_auto_cc_ARVALID;
  wire [19:0]m11_couplers_to_auto_cc_AWADDR;
  wire [2:0]m11_couplers_to_auto_cc_AWPROT;
  wire m11_couplers_to_auto_cc_AWREADY;
  wire m11_couplers_to_auto_cc_AWVALID;
  wire m11_couplers_to_auto_cc_BREADY;
  wire [1:0]m11_couplers_to_auto_cc_BRESP;
  wire m11_couplers_to_auto_cc_BVALID;
  wire [31:0]m11_couplers_to_auto_cc_RDATA;
  wire m11_couplers_to_auto_cc_RREADY;
  wire [1:0]m11_couplers_to_auto_cc_RRESP;
  wire m11_couplers_to_auto_cc_RVALID;
  wire [31:0]m11_couplers_to_auto_cc_WDATA;
  wire m11_couplers_to_auto_cc_WREADY;
  wire [3:0]m11_couplers_to_auto_cc_WSTRB;
  wire m11_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m11_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m11_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m11_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m11_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m11_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m11_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m11_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m11_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_auto_cc_ARADDR = S_AXI_araddr[19:0];
  assign m11_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[19:0];
  assign m11_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m11_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m11_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  bd_2d50_auto_cc_10 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m11_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m11_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m11_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m11_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m11_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m11_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m11_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m11_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m11_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m11_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m11_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m11_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m11_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m11_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m11_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m11_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m11_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m11_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m11_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m11_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m11_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m11_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m11_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m11_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m11_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m11_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m11_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m11_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m11_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m11_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m11_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m11_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m11_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m11_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m11_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m11_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_1AZXCLC
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;

  wire [23:0]s00_couplers_to_s00_couplers_TDATA;
  wire [0:0]s00_couplers_to_s00_couplers_TDEST;
  wire [0:0]s00_couplers_to_s00_couplers_TID;
  wire [2:0]s00_couplers_to_s00_couplers_TKEEP;
  wire [0:0]s00_couplers_to_s00_couplers_TLAST;
  wire [0:0]s00_couplers_to_s00_couplers_TREADY;
  wire [2:0]s00_couplers_to_s00_couplers_TSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_TUSER;
  wire [0:0]s00_couplers_to_s00_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s00_couplers_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[0] = s00_couplers_to_s00_couplers_TDEST;
  assign M_AXIS_tid[0] = s00_couplers_to_s00_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s00_couplers_to_s00_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s00_couplers_to_s00_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s00_couplers_to_s00_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s00_couplers_to_s00_couplers_TUSER;
  assign M_AXIS_tvalid[0] = s00_couplers_to_s00_couplers_TVALID;
  assign S_AXIS_tready[0] = s00_couplers_to_s00_couplers_TREADY;
  assign s00_couplers_to_s00_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s00_couplers_to_s00_couplers_TDEST = S_AXIS_tdest[0];
  assign s00_couplers_to_s00_couplers_TID = S_AXIS_tid[0];
  assign s00_couplers_to_s00_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s00_couplers_to_s00_couplers_TLAST = S_AXIS_tlast[0];
  assign s00_couplers_to_s00_couplers_TREADY = M_AXIS_tready[0];
  assign s00_couplers_to_s00_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s00_couplers_to_s00_couplers_TUSER = S_AXIS_tuser[0];
  assign s00_couplers_to_s00_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s00_couplers_imp_1VGAQIZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s00_couplers_ARQOS;
  wire auto_us_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s00_couplers_ARSIZE;
  wire auto_us_df_to_s00_couplers_ARVALID;
  wire [255:0]auto_us_df_to_s00_couplers_RDATA;
  wire auto_us_df_to_s00_couplers_RLAST;
  wire auto_us_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_df_to_s00_couplers_RRESP;
  wire auto_us_df_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_df_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_df_ARLEN;
  wire [2:0]s00_couplers_to_auto_us_df_ARPROT;
  wire s00_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_df_ARSIZE;
  wire s00_couplers_to_auto_us_df_ARVALID;
  wire [127:0]s00_couplers_to_auto_us_df_RDATA;
  wire s00_couplers_to_auto_us_df_RLAST;
  wire s00_couplers_to_auto_us_df_RREADY;
  wire [1:0]s00_couplers_to_auto_us_df_RRESP;
  wire s00_couplers_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s00_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_df_RVALID;
  assign auto_us_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  bd_2d50_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s00_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s00_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_df_ARVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_df_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_df_RVALID));
endmodule

module s00_couplers_imp_U6A1CL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [19:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [19:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[19:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[19:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[19:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s01_couplers_imp_CZ5YRN
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;

  wire [23:0]s01_couplers_to_s01_couplers_TDATA;
  wire [0:0]s01_couplers_to_s01_couplers_TDEST;
  wire [0:0]s01_couplers_to_s01_couplers_TID;
  wire [2:0]s01_couplers_to_s01_couplers_TKEEP;
  wire [0:0]s01_couplers_to_s01_couplers_TLAST;
  wire [0:0]s01_couplers_to_s01_couplers_TREADY;
  wire [2:0]s01_couplers_to_s01_couplers_TSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_TUSER;
  wire [0:0]s01_couplers_to_s01_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s01_couplers_to_s01_couplers_TDATA;
  assign M_AXIS_tdest[0] = s01_couplers_to_s01_couplers_TDEST;
  assign M_AXIS_tid[0] = s01_couplers_to_s01_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s01_couplers_to_s01_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s01_couplers_to_s01_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s01_couplers_to_s01_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s01_couplers_to_s01_couplers_TUSER;
  assign M_AXIS_tvalid[0] = s01_couplers_to_s01_couplers_TVALID;
  assign S_AXIS_tready[0] = s01_couplers_to_s01_couplers_TREADY;
  assign s01_couplers_to_s01_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s01_couplers_to_s01_couplers_TDEST = S_AXIS_tdest[0];
  assign s01_couplers_to_s01_couplers_TID = S_AXIS_tid[0];
  assign s01_couplers_to_s01_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s01_couplers_to_s01_couplers_TLAST = S_AXIS_tlast[0];
  assign s01_couplers_to_s01_couplers_TREADY = M_AXIS_tready[0];
  assign s01_couplers_to_s01_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s01_couplers_to_s01_couplers_TUSER = S_AXIS_tuser[0];
  assign s01_couplers_to_s01_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s01_couplers_imp_WE1KEG
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s01_couplers_AWQOS;
  wire auto_us_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s01_couplers_AWSIZE;
  wire auto_us_df_to_s01_couplers_AWVALID;
  wire auto_us_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_df_to_s01_couplers_BRESP;
  wire auto_us_df_to_s01_couplers_BVALID;
  wire [255:0]auto_us_df_to_s01_couplers_WDATA;
  wire auto_us_df_to_s01_couplers_WLAST;
  wire auto_us_df_to_s01_couplers_WREADY;
  wire [31:0]auto_us_df_to_s01_couplers_WSTRB;
  wire auto_us_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s01_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s01_couplers_to_auto_us_df_AWCACHE;
  wire [7:0]s01_couplers_to_auto_us_df_AWLEN;
  wire [2:0]s01_couplers_to_auto_us_df_AWPROT;
  wire s01_couplers_to_auto_us_df_AWREADY;
  wire [2:0]s01_couplers_to_auto_us_df_AWSIZE;
  wire s01_couplers_to_auto_us_df_AWVALID;
  wire s01_couplers_to_auto_us_df_BREADY;
  wire [1:0]s01_couplers_to_auto_us_df_BRESP;
  wire s01_couplers_to_auto_us_df_BVALID;
  wire [63:0]s01_couplers_to_auto_us_df_WDATA;
  wire s01_couplers_to_auto_us_df_WLAST;
  wire s01_couplers_to_auto_us_df_WREADY;
  wire [7:0]s01_couplers_to_auto_us_df_WSTRB;
  wire s01_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s01_couplers_BREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s01_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_us_df_BVALID;
  assign S_AXI_wready = s01_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_us_df_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  bd_2d50_auto_us_df_1 auto_us_df
       (.m_axi_awaddr(auto_us_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s01_couplers_BVALID),
        .m_axi_wdata(auto_us_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s01_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s01_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s01_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_us_df_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_us_df_BVALID),
        .s_axi_wdata(s01_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s01_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_us_df_WVALID));
endmodule

module s02_couplers_imp_AV1SZW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s02_couplers_ARQOS;
  wire auto_us_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s02_couplers_ARSIZE;
  wire auto_us_df_to_s02_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s02_couplers_AWQOS;
  wire auto_us_df_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s02_couplers_AWSIZE;
  wire auto_us_df_to_s02_couplers_AWVALID;
  wire auto_us_df_to_s02_couplers_BREADY;
  wire [1:0]auto_us_df_to_s02_couplers_BRESP;
  wire auto_us_df_to_s02_couplers_BVALID;
  wire [255:0]auto_us_df_to_s02_couplers_RDATA;
  wire auto_us_df_to_s02_couplers_RLAST;
  wire auto_us_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_df_to_s02_couplers_RRESP;
  wire auto_us_df_to_s02_couplers_RVALID;
  wire [255:0]auto_us_df_to_s02_couplers_WDATA;
  wire auto_us_df_to_s02_couplers_WLAST;
  wire auto_us_df_to_s02_couplers_WREADY;
  wire [31:0]auto_us_df_to_s02_couplers_WSTRB;
  wire auto_us_df_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s02_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s02_couplers_to_auto_us_df_ARCACHE;
  wire [7:0]s02_couplers_to_auto_us_df_ARLEN;
  wire [1:0]s02_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s02_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s02_couplers_to_auto_us_df_ARQOS;
  wire s02_couplers_to_auto_us_df_ARREADY;
  wire [3:0]s02_couplers_to_auto_us_df_ARREGION;
  wire [2:0]s02_couplers_to_auto_us_df_ARSIZE;
  wire s02_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s02_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_df_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_df_AWLEN;
  wire [1:0]s02_couplers_to_auto_us_df_AWLOCK;
  wire [2:0]s02_couplers_to_auto_us_df_AWPROT;
  wire [3:0]s02_couplers_to_auto_us_df_AWQOS;
  wire s02_couplers_to_auto_us_df_AWREADY;
  wire [3:0]s02_couplers_to_auto_us_df_AWREGION;
  wire [2:0]s02_couplers_to_auto_us_df_AWSIZE;
  wire s02_couplers_to_auto_us_df_AWVALID;
  wire s02_couplers_to_auto_us_df_BREADY;
  wire [1:0]s02_couplers_to_auto_us_df_BRESP;
  wire s02_couplers_to_auto_us_df_BVALID;
  wire [31:0]s02_couplers_to_auto_us_df_RDATA;
  wire s02_couplers_to_auto_us_df_RLAST;
  wire s02_couplers_to_auto_us_df_RREADY;
  wire [1:0]s02_couplers_to_auto_us_df_RRESP;
  wire s02_couplers_to_auto_us_df_RVALID;
  wire [31:0]s02_couplers_to_auto_us_df_WDATA;
  wire s02_couplers_to_auto_us_df_WLAST;
  wire s02_couplers_to_auto_us_df_WREADY;
  wire [3:0]s02_couplers_to_auto_us_df_WSTRB;
  wire s02_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s02_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_awready = s02_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_df_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rlast = s02_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_us_df_RVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s02_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_auto_us_df_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_df_AWLOCK = S_AXI_awlock[1:0];
  assign s02_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_df_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_auto_us_df_AWREGION = S_AXI_awregion[3:0];
  assign s02_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  assign s02_couplers_to_auto_us_df_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  bd_2d50_auto_us_df_2 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s02_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s02_couplers_to_auto_us_df_ARLOCK[0]),
        .s_axi_arprot(s02_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s02_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s02_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion(s02_couplers_to_auto_us_df_ARREGION),
        .s_axi_arsize(s02_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s02_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(s02_couplers_to_auto_us_df_AWLOCK[0]),
        .s_axi_awprot(s02_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos(s02_couplers_to_auto_us_df_AWQOS),
        .s_axi_awready(s02_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion(s02_couplers_to_auto_us_df_AWREGION),
        .s_axi_awsize(s02_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_df_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_df_BVALID),
        .s_axi_rdata(s02_couplers_to_auto_us_df_RDATA),
        .s_axi_rlast(s02_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s02_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_us_df_RVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_df_WVALID));
endmodule

module s02_couplers_imp_YSA7RB
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;

  wire [23:0]s02_couplers_to_s02_couplers_TDATA;
  wire [0:0]s02_couplers_to_s02_couplers_TDEST;
  wire [0:0]s02_couplers_to_s02_couplers_TID;
  wire [2:0]s02_couplers_to_s02_couplers_TKEEP;
  wire [0:0]s02_couplers_to_s02_couplers_TLAST;
  wire [0:0]s02_couplers_to_s02_couplers_TREADY;
  wire [2:0]s02_couplers_to_s02_couplers_TSTRB;
  wire [0:0]s02_couplers_to_s02_couplers_TUSER;
  wire [0:0]s02_couplers_to_s02_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s02_couplers_to_s02_couplers_TDATA;
  assign M_AXIS_tdest[0] = s02_couplers_to_s02_couplers_TDEST;
  assign M_AXIS_tid[0] = s02_couplers_to_s02_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s02_couplers_to_s02_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s02_couplers_to_s02_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s02_couplers_to_s02_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s02_couplers_to_s02_couplers_TUSER;
  assign M_AXIS_tvalid[0] = s02_couplers_to_s02_couplers_TVALID;
  assign S_AXIS_tready[0] = s02_couplers_to_s02_couplers_TREADY;
  assign s02_couplers_to_s02_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s02_couplers_to_s02_couplers_TDEST = S_AXIS_tdest[0];
  assign s02_couplers_to_s02_couplers_TID = S_AXIS_tid[0];
  assign s02_couplers_to_s02_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s02_couplers_to_s02_couplers_TLAST = S_AXIS_tlast[0];
  assign s02_couplers_to_s02_couplers_TREADY = M_AXIS_tready[0];
  assign s02_couplers_to_s02_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s02_couplers_to_s02_couplers_TUSER = S_AXIS_tuser[0];
  assign s02_couplers_to_s02_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s03_couplers_imp_1XMVDZ8
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [2:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [47:0]S_AXIS_tdata;
  input [5:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [5:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK_1;
  wire M_AXIS_ARESETN_1;
  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
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
  wire [23:0]auto_ss_slid_to_s03_couplers_TDATA;
  wire [0:0]auto_ss_slid_to_s03_couplers_TDEST;
  wire [0:0]auto_ss_slid_to_s03_couplers_TID;
  wire [2:0]auto_ss_slid_to_s03_couplers_TKEEP;
  wire auto_ss_slid_to_s03_couplers_TLAST;
  wire auto_ss_slid_to_s03_couplers_TREADY;
  wire [2:0]auto_ss_slid_to_s03_couplers_TSTRB;
  wire [2:0]auto_ss_slid_to_s03_couplers_TUSER;
  wire auto_ss_slid_to_s03_couplers_TVALID;
  wire [47:0]s03_couplers_to_auto_cc_TDATA;
  wire [5:0]s03_couplers_to_auto_cc_TKEEP;
  wire s03_couplers_to_auto_cc_TLAST;
  wire s03_couplers_to_auto_cc_TREADY;
  wire [5:0]s03_couplers_to_auto_cc_TUSER;
  wire s03_couplers_to_auto_cc_TVALID;

  assign M_AXIS_ACLK_1 = M_AXIS_ACLK;
  assign M_AXIS_ARESETN_1 = M_AXIS_ARESETN;
  assign M_AXIS_tdata[23:0] = auto_ss_slid_to_s03_couplers_TDATA;
  assign M_AXIS_tdest[0] = auto_ss_slid_to_s03_couplers_TDEST;
  assign M_AXIS_tid[0] = auto_ss_slid_to_s03_couplers_TID;
  assign M_AXIS_tkeep[2:0] = auto_ss_slid_to_s03_couplers_TKEEP;
  assign M_AXIS_tlast = auto_ss_slid_to_s03_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = auto_ss_slid_to_s03_couplers_TSTRB;
  assign M_AXIS_tuser[2:0] = auto_ss_slid_to_s03_couplers_TUSER;
  assign M_AXIS_tvalid = auto_ss_slid_to_s03_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = s03_couplers_to_auto_cc_TREADY;
  assign auto_ss_slid_to_s03_couplers_TREADY = M_AXIS_tready;
  assign s03_couplers_to_auto_cc_TDATA = S_AXIS_tdata[47:0];
  assign s03_couplers_to_auto_cc_TKEEP = S_AXIS_tkeep[5:0];
  assign s03_couplers_to_auto_cc_TLAST = S_AXIS_tlast;
  assign s03_couplers_to_auto_cc_TUSER = S_AXIS_tuser[5:0];
  assign s03_couplers_to_auto_cc_TVALID = S_AXIS_tvalid;
  bd_2d50_auto_cc_12 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK_1),
        .m_axis_aresetn(M_AXIS_ARESETN_1),
        .m_axis_tdata(auto_cc_to_auto_ds_TDATA),
        .m_axis_tkeep(auto_cc_to_auto_ds_TKEEP),
        .m_axis_tlast(auto_cc_to_auto_ds_TLAST),
        .m_axis_tready(auto_cc_to_auto_ds_TREADY),
        .m_axis_tuser(auto_cc_to_auto_ds_TUSER),
        .m_axis_tvalid(auto_cc_to_auto_ds_TVALID),
        .s_axis_aclk(S_AXIS_ACLK_1),
        .s_axis_aresetn(S_AXIS_ARESETN_1),
        .s_axis_tdata(s03_couplers_to_auto_cc_TDATA),
        .s_axis_tkeep(s03_couplers_to_auto_cc_TKEEP),
        .s_axis_tlast(s03_couplers_to_auto_cc_TLAST),
        .s_axis_tready(s03_couplers_to_auto_cc_TREADY),
        .s_axis_tuser(s03_couplers_to_auto_cc_TUSER),
        .s_axis_tvalid(s03_couplers_to_auto_cc_TVALID));
  bd_2d50_auto_ds_0 auto_ds
       (.aclk(M_AXIS_ACLK_1),
        .aresetn(M_AXIS_ARESETN_1),
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
  bd_2d50_auto_ss_slid_0 auto_ss_slid
       (.aclk(M_AXIS_ACLK_1),
        .aresetn(M_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slid_to_s03_couplers_TDATA),
        .m_axis_tdest(auto_ss_slid_to_s03_couplers_TDEST),
        .m_axis_tid(auto_ss_slid_to_s03_couplers_TID),
        .m_axis_tkeep(auto_ss_slid_to_s03_couplers_TKEEP),
        .m_axis_tlast(auto_ss_slid_to_s03_couplers_TLAST),
        .m_axis_tready(auto_ss_slid_to_s03_couplers_TREADY),
        .m_axis_tstrb(auto_ss_slid_to_s03_couplers_TSTRB),
        .m_axis_tuser(auto_ss_slid_to_s03_couplers_TUSER),
        .m_axis_tvalid(auto_ss_slid_to_s03_couplers_TVALID),
        .s_axis_tdata(auto_ds_to_auto_ss_slid_TDATA),
        .s_axis_tkeep(auto_ds_to_auto_ss_slid_TKEEP),
        .s_axis_tlast(auto_ds_to_auto_ss_slid_TLAST),
        .s_axis_tready(auto_ds_to_auto_ss_slid_TREADY),
        .s_axis_tuser(auto_ds_to_auto_ss_slid_TUSER),
        .s_axis_tvalid(auto_ds_to_auto_ss_slid_TVALID));
endmodule

module s04_couplers_imp_1OLOJPR
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;

  wire [23:0]s04_couplers_to_s04_couplers_TDATA;
  wire [0:0]s04_couplers_to_s04_couplers_TDEST;
  wire [0:0]s04_couplers_to_s04_couplers_TID;
  wire [2:0]s04_couplers_to_s04_couplers_TKEEP;
  wire [0:0]s04_couplers_to_s04_couplers_TLAST;
  wire [0:0]s04_couplers_to_s04_couplers_TREADY;
  wire [2:0]s04_couplers_to_s04_couplers_TSTRB;
  wire [0:0]s04_couplers_to_s04_couplers_TUSER;
  wire [0:0]s04_couplers_to_s04_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s04_couplers_to_s04_couplers_TDATA;
  assign M_AXIS_tdest[0] = s04_couplers_to_s04_couplers_TDEST;
  assign M_AXIS_tid[0] = s04_couplers_to_s04_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s04_couplers_to_s04_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s04_couplers_to_s04_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s04_couplers_to_s04_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s04_couplers_to_s04_couplers_TUSER;
  assign M_AXIS_tvalid[0] = s04_couplers_to_s04_couplers_TVALID;
  assign S_AXIS_tready[0] = s04_couplers_to_s04_couplers_TREADY;
  assign s04_couplers_to_s04_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s04_couplers_to_s04_couplers_TDEST = S_AXIS_tdest[0];
  assign s04_couplers_to_s04_couplers_TID = S_AXIS_tid[0];
  assign s04_couplers_to_s04_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s04_couplers_to_s04_couplers_TLAST = S_AXIS_tlast[0];
  assign s04_couplers_to_s04_couplers_TREADY = M_AXIS_tready[0];
  assign s04_couplers_to_s04_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s04_couplers_to_s04_couplers_TUSER = S_AXIS_tuser[0];
  assign s04_couplers_to_s04_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s05_couplers_imp_Q0XYMK
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [23:0]s05_couplers_to_s05_couplers_TDATA;
  wire [0:0]s05_couplers_to_s05_couplers_TDEST;
  wire [0:0]s05_couplers_to_s05_couplers_TID;
  wire [2:0]s05_couplers_to_s05_couplers_TKEEP;
  wire [0:0]s05_couplers_to_s05_couplers_TLAST;
  wire s05_couplers_to_s05_couplers_TREADY;
  wire [2:0]s05_couplers_to_s05_couplers_TSTRB;
  wire [0:0]s05_couplers_to_s05_couplers_TUSER;
  wire s05_couplers_to_s05_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s05_couplers_to_s05_couplers_TDATA;
  assign M_AXIS_tdest[0] = s05_couplers_to_s05_couplers_TDEST;
  assign M_AXIS_tid[0] = s05_couplers_to_s05_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s05_couplers_to_s05_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s05_couplers_to_s05_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s05_couplers_to_s05_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s05_couplers_to_s05_couplers_TUSER;
  assign M_AXIS_tvalid = s05_couplers_to_s05_couplers_TVALID;
  assign S_AXIS_tready = s05_couplers_to_s05_couplers_TREADY;
  assign s05_couplers_to_s05_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s05_couplers_to_s05_couplers_TDEST = S_AXIS_tdest[0];
  assign s05_couplers_to_s05_couplers_TID = S_AXIS_tid[0];
  assign s05_couplers_to_s05_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s05_couplers_to_s05_couplers_TLAST = S_AXIS_tlast[0];
  assign s05_couplers_to_s05_couplers_TREADY = M_AXIS_tready;
  assign s05_couplers_to_s05_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s05_couplers_to_s05_couplers_TUSER = S_AXIS_tuser[0];
  assign s05_couplers_to_s05_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s06_couplers_imp_3Z7W94
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [23:0]s06_couplers_to_s06_couplers_TDATA;
  wire [0:0]s06_couplers_to_s06_couplers_TDEST;
  wire [0:0]s06_couplers_to_s06_couplers_TID;
  wire [2:0]s06_couplers_to_s06_couplers_TKEEP;
  wire [0:0]s06_couplers_to_s06_couplers_TLAST;
  wire s06_couplers_to_s06_couplers_TREADY;
  wire [2:0]s06_couplers_to_s06_couplers_TSTRB;
  wire [0:0]s06_couplers_to_s06_couplers_TUSER;
  wire s06_couplers_to_s06_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s06_couplers_to_s06_couplers_TDATA;
  assign M_AXIS_tdest[0] = s06_couplers_to_s06_couplers_TDEST;
  assign M_AXIS_tid[0] = s06_couplers_to_s06_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s06_couplers_to_s06_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s06_couplers_to_s06_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s06_couplers_to_s06_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s06_couplers_to_s06_couplers_TUSER;
  assign M_AXIS_tvalid = s06_couplers_to_s06_couplers_TVALID;
  assign S_AXIS_tready = s06_couplers_to_s06_couplers_TREADY;
  assign s06_couplers_to_s06_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s06_couplers_to_s06_couplers_TDEST = S_AXIS_tdest[0];
  assign s06_couplers_to_s06_couplers_TID = S_AXIS_tid[0];
  assign s06_couplers_to_s06_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s06_couplers_to_s06_couplers_TLAST = S_AXIS_tlast[0];
  assign s06_couplers_to_s06_couplers_TREADY = M_AXIS_tready;
  assign s06_couplers_to_s06_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s06_couplers_to_s06_couplers_TUSER = S_AXIS_tuser[0];
  assign s06_couplers_to_s06_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s07_couplers_imp_129TVEZ
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire [23:0]s07_couplers_to_s07_couplers_TDATA;
  wire [0:0]s07_couplers_to_s07_couplers_TDEST;
  wire [0:0]s07_couplers_to_s07_couplers_TID;
  wire [2:0]s07_couplers_to_s07_couplers_TKEEP;
  wire [0:0]s07_couplers_to_s07_couplers_TLAST;
  wire s07_couplers_to_s07_couplers_TREADY;
  wire [2:0]s07_couplers_to_s07_couplers_TSTRB;
  wire [0:0]s07_couplers_to_s07_couplers_TUSER;
  wire s07_couplers_to_s07_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s07_couplers_to_s07_couplers_TDATA;
  assign M_AXIS_tdest[0] = s07_couplers_to_s07_couplers_TDEST;
  assign M_AXIS_tid[0] = s07_couplers_to_s07_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s07_couplers_to_s07_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s07_couplers_to_s07_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s07_couplers_to_s07_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s07_couplers_to_s07_couplers_TUSER;
  assign M_AXIS_tvalid = s07_couplers_to_s07_couplers_TVALID;
  assign S_AXIS_tready = s07_couplers_to_s07_couplers_TREADY;
  assign s07_couplers_to_s07_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s07_couplers_to_s07_couplers_TDEST = S_AXIS_tdest[0];
  assign s07_couplers_to_s07_couplers_TID = S_AXIS_tid[0];
  assign s07_couplers_to_s07_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s07_couplers_to_s07_couplers_TLAST = S_AXIS_tlast[0];
  assign s07_couplers_to_s07_couplers_TREADY = M_AXIS_tready;
  assign s07_couplers_to_s07_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s07_couplers_to_s07_couplers_TUSER = S_AXIS_tuser[0];
  assign s07_couplers_to_s07_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s08_couplers_imp_M1KPEM
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;

  wire [23:0]s08_couplers_to_s08_couplers_TDATA;
  wire [0:0]s08_couplers_to_s08_couplers_TDEST;
  wire [0:0]s08_couplers_to_s08_couplers_TID;
  wire [2:0]s08_couplers_to_s08_couplers_TKEEP;
  wire [0:0]s08_couplers_to_s08_couplers_TLAST;
  wire [0:0]s08_couplers_to_s08_couplers_TREADY;
  wire [2:0]s08_couplers_to_s08_couplers_TSTRB;
  wire [0:0]s08_couplers_to_s08_couplers_TUSER;
  wire [0:0]s08_couplers_to_s08_couplers_TVALID;

  assign M_AXIS_tdata[23:0] = s08_couplers_to_s08_couplers_TDATA;
  assign M_AXIS_tdest[0] = s08_couplers_to_s08_couplers_TDEST;
  assign M_AXIS_tid[0] = s08_couplers_to_s08_couplers_TID;
  assign M_AXIS_tkeep[2:0] = s08_couplers_to_s08_couplers_TKEEP;
  assign M_AXIS_tlast[0] = s08_couplers_to_s08_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = s08_couplers_to_s08_couplers_TSTRB;
  assign M_AXIS_tuser[0] = s08_couplers_to_s08_couplers_TUSER;
  assign M_AXIS_tvalid[0] = s08_couplers_to_s08_couplers_TVALID;
  assign S_AXIS_tready[0] = s08_couplers_to_s08_couplers_TREADY;
  assign s08_couplers_to_s08_couplers_TDATA = S_AXIS_tdata[23:0];
  assign s08_couplers_to_s08_couplers_TDEST = S_AXIS_tdest[0];
  assign s08_couplers_to_s08_couplers_TID = S_AXIS_tid[0];
  assign s08_couplers_to_s08_couplers_TKEEP = S_AXIS_tkeep[2:0];
  assign s08_couplers_to_s08_couplers_TLAST = S_AXIS_tlast[0];
  assign s08_couplers_to_s08_couplers_TREADY = M_AXIS_tready[0];
  assign s08_couplers_to_s08_couplers_TSTRB = S_AXIS_tstrb[2:0];
  assign s08_couplers_to_s08_couplers_TUSER = S_AXIS_tuser[0];
  assign s08_couplers_to_s08_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s09_couplers_imp_1JQ1MFX
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [23:0]S_AXIS_tdata;
  input S_AXIS_tdest;
  input S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input S_AXIS_tuser;
  input S_AXIS_tvalid;

  wire M_AXIS_ACLK_1;
  wire M_AXIS_ARESETN_1;
  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [23:0]auto_cc_to_s09_couplers_TDATA;
  wire [0:0]auto_cc_to_s09_couplers_TDEST;
  wire [0:0]auto_cc_to_s09_couplers_TID;
  wire [2:0]auto_cc_to_s09_couplers_TKEEP;
  wire auto_cc_to_s09_couplers_TLAST;
  wire auto_cc_to_s09_couplers_TREADY;
  wire [2:0]auto_cc_to_s09_couplers_TSTRB;
  wire [0:0]auto_cc_to_s09_couplers_TUSER;
  wire auto_cc_to_s09_couplers_TVALID;
  wire [23:0]s09_couplers_to_auto_cc_TDATA;
  wire s09_couplers_to_auto_cc_TDEST;
  wire s09_couplers_to_auto_cc_TID;
  wire [2:0]s09_couplers_to_auto_cc_TKEEP;
  wire s09_couplers_to_auto_cc_TLAST;
  wire s09_couplers_to_auto_cc_TREADY;
  wire [2:0]s09_couplers_to_auto_cc_TSTRB;
  wire s09_couplers_to_auto_cc_TUSER;
  wire s09_couplers_to_auto_cc_TVALID;

  assign M_AXIS_ACLK_1 = M_AXIS_ACLK;
  assign M_AXIS_ARESETN_1 = M_AXIS_ARESETN;
  assign M_AXIS_tdata[23:0] = auto_cc_to_s09_couplers_TDATA;
  assign M_AXIS_tdest[0] = auto_cc_to_s09_couplers_TDEST;
  assign M_AXIS_tid[0] = auto_cc_to_s09_couplers_TID;
  assign M_AXIS_tkeep[2:0] = auto_cc_to_s09_couplers_TKEEP;
  assign M_AXIS_tlast = auto_cc_to_s09_couplers_TLAST;
  assign M_AXIS_tstrb[2:0] = auto_cc_to_s09_couplers_TSTRB;
  assign M_AXIS_tuser[0] = auto_cc_to_s09_couplers_TUSER;
  assign M_AXIS_tvalid = auto_cc_to_s09_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = s09_couplers_to_auto_cc_TREADY;
  assign auto_cc_to_s09_couplers_TREADY = M_AXIS_tready;
  assign s09_couplers_to_auto_cc_TDATA = S_AXIS_tdata[23:0];
  assign s09_couplers_to_auto_cc_TDEST = S_AXIS_tdest;
  assign s09_couplers_to_auto_cc_TID = S_AXIS_tid;
  assign s09_couplers_to_auto_cc_TKEEP = S_AXIS_tkeep[2:0];
  assign s09_couplers_to_auto_cc_TLAST = S_AXIS_tlast;
  assign s09_couplers_to_auto_cc_TSTRB = S_AXIS_tstrb[2:0];
  assign s09_couplers_to_auto_cc_TUSER = S_AXIS_tuser;
  assign s09_couplers_to_auto_cc_TVALID = S_AXIS_tvalid;
  bd_2d50_auto_cc_13 auto_cc
       (.m_axis_aclk(M_AXIS_ACLK_1),
        .m_axis_aresetn(M_AXIS_ARESETN_1),
        .m_axis_tdata(auto_cc_to_s09_couplers_TDATA),
        .m_axis_tdest(auto_cc_to_s09_couplers_TDEST),
        .m_axis_tid(auto_cc_to_s09_couplers_TID),
        .m_axis_tkeep(auto_cc_to_s09_couplers_TKEEP),
        .m_axis_tlast(auto_cc_to_s09_couplers_TLAST),
        .m_axis_tready(auto_cc_to_s09_couplers_TREADY),
        .m_axis_tstrb(auto_cc_to_s09_couplers_TSTRB),
        .m_axis_tuser(auto_cc_to_s09_couplers_TUSER),
        .m_axis_tvalid(auto_cc_to_s09_couplers_TVALID),
        .s_axis_aclk(S_AXIS_ACLK_1),
        .s_axis_aresetn(S_AXIS_ARESETN_1),
        .s_axis_tdata(s09_couplers_to_auto_cc_TDATA),
        .s_axis_tdest(s09_couplers_to_auto_cc_TDEST),
        .s_axis_tid(s09_couplers_to_auto_cc_TID),
        .s_axis_tkeep(s09_couplers_to_auto_cc_TKEEP),
        .s_axis_tlast(s09_couplers_to_auto_cc_TLAST),
        .s_axis_tready(s09_couplers_to_auto_cc_TREADY),
        .s_axis_tstrb(s09_couplers_to_auto_cc_TSTRB),
        .s_axis_tuser(s09_couplers_to_auto_cc_TUSER),
        .s_axis_tvalid(s09_couplers_to_auto_cc_TVALID));
endmodule
