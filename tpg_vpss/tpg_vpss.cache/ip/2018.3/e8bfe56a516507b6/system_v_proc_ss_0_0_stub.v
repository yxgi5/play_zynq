// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr 24 21:24:49 2021
// Host        : archlinux running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_v_proc_ss_0_0_stub.v
// Design      : system_v_proc_ss_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_2d50,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk_axis, aclk_ctrl, aclk_axi_mm, 
  aresetn_ctrl, aresetn_io_axis, deint_field_id, s_axi_ctrl_awaddr, s_axi_ctrl_awprot, 
  s_axi_ctrl_awvalid, s_axi_ctrl_awready, s_axi_ctrl_wdata, s_axi_ctrl_wstrb, 
  s_axi_ctrl_wvalid, s_axi_ctrl_wready, s_axi_ctrl_bresp, s_axi_ctrl_bvalid, 
  s_axi_ctrl_bready, s_axi_ctrl_araddr, s_axi_ctrl_arprot, s_axi_ctrl_arvalid, 
  s_axi_ctrl_arready, s_axi_ctrl_rdata, s_axi_ctrl_rresp, s_axi_ctrl_rvalid, 
  s_axi_ctrl_rready, s_axis_tdata, s_axis_tdest, s_axis_tid, s_axis_tkeep, s_axis_tlast, 
  s_axis_tready, s_axis_tstrb, s_axis_tuser, s_axis_tvalid, m_axi_mm_awaddr, m_axi_mm_awlen, 
  m_axi_mm_awsize, m_axi_mm_awburst, m_axi_mm_awlock, m_axi_mm_awcache, m_axi_mm_awprot, 
  m_axi_mm_awregion, m_axi_mm_awqos, m_axi_mm_awvalid, m_axi_mm_awready, m_axi_mm_wdata, 
  m_axi_mm_wstrb, m_axi_mm_wlast, m_axi_mm_wvalid, m_axi_mm_wready, m_axi_mm_bresp, 
  m_axi_mm_bvalid, m_axi_mm_bready, m_axi_mm_araddr, m_axi_mm_arlen, m_axi_mm_arsize, 
  m_axi_mm_arburst, m_axi_mm_arlock, m_axi_mm_arcache, m_axi_mm_arprot, m_axi_mm_arregion, 
  m_axi_mm_arqos, m_axi_mm_arvalid, m_axi_mm_arready, m_axi_mm_rdata, m_axi_mm_rresp, 
  m_axi_mm_rlast, m_axi_mm_rvalid, m_axi_mm_rready, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axi_mm_arid, m_axi_mm_awid, m_axi_mm_bid, m_axi_mm_rid, m_axis_tdest, 
  m_axis_tid, m_axis_tkeep, m_axis_tlast, m_axis_tstrb, m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk_axis,aclk_ctrl,aclk_axi_mm,aresetn_ctrl,aresetn_io_axis[0:0],deint_field_id,s_axi_ctrl_awaddr[19:0],s_axi_ctrl_awprot[2:0],s_axi_ctrl_awvalid[0:0],s_axi_ctrl_awready[0:0],s_axi_ctrl_wdata[31:0],s_axi_ctrl_wstrb[3:0],s_axi_ctrl_wvalid[0:0],s_axi_ctrl_wready[0:0],s_axi_ctrl_bresp[1:0],s_axi_ctrl_bvalid[0:0],s_axi_ctrl_bready[0:0],s_axi_ctrl_araddr[19:0],s_axi_ctrl_arprot[2:0],s_axi_ctrl_arvalid[0:0],s_axi_ctrl_arready[0:0],s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0],s_axi_ctrl_rvalid[0:0],s_axi_ctrl_rready[0:0],s_axis_tdata[23:0],s_axis_tdest[0:0],s_axis_tid[0:0],s_axis_tkeep[2:0],s_axis_tlast,s_axis_tready,s_axis_tstrb[2:0],s_axis_tuser[0:0],s_axis_tvalid,m_axi_mm_awaddr[31:0],m_axi_mm_awlen[7:0],m_axi_mm_awsize[2:0],m_axi_mm_awburst[1:0],m_axi_mm_awlock[0:0],m_axi_mm_awcache[3:0],m_axi_mm_awprot[2:0],m_axi_mm_awregion[3:0],m_axi_mm_awqos[3:0],m_axi_mm_awvalid[0:0],m_axi_mm_awready[0:0],m_axi_mm_wdata[255:0],m_axi_mm_wstrb[31:0],m_axi_mm_wlast[0:0],m_axi_mm_wvalid[0:0],m_axi_mm_wready[0:0],m_axi_mm_bresp[1:0],m_axi_mm_bvalid[0:0],m_axi_mm_bready[0:0],m_axi_mm_araddr[31:0],m_axi_mm_arlen[7:0],m_axi_mm_arsize[2:0],m_axi_mm_arburst[1:0],m_axi_mm_arlock[0:0],m_axi_mm_arcache[3:0],m_axi_mm_arprot[2:0],m_axi_mm_arregion[3:0],m_axi_mm_arqos[3:0],m_axi_mm_arvalid[0:0],m_axi_mm_arready[0:0],m_axi_mm_rdata[255:0],m_axi_mm_rresp[1:0],m_axi_mm_rlast[0:0],m_axi_mm_rvalid[0:0],m_axi_mm_rready[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[23:0],m_axi_mm_arid[1:0],m_axi_mm_awid[1:0],m_axi_mm_bid[1:0],m_axi_mm_rid[1:0],m_axis_tdest[0:0],m_axis_tid[0:0],m_axis_tkeep[2:0],m_axis_tlast,m_axis_tstrb[2:0],m_axis_tuser[2:0]" */;
  input aclk_axis;
  input aclk_ctrl;
  input aclk_axi_mm;
  input aresetn_ctrl;
  output [0:0]aresetn_io_axis;
  input deint_field_id;
  input [19:0]s_axi_ctrl_awaddr;
  input [2:0]s_axi_ctrl_awprot;
  input [0:0]s_axi_ctrl_awvalid;
  output [0:0]s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_wdata;
  input [3:0]s_axi_ctrl_wstrb;
  input [0:0]s_axi_ctrl_wvalid;
  output [0:0]s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output [0:0]s_axi_ctrl_bvalid;
  input [0:0]s_axi_ctrl_bready;
  input [19:0]s_axi_ctrl_araddr;
  input [2:0]s_axi_ctrl_arprot;
  input [0:0]s_axi_ctrl_arvalid;
  output [0:0]s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_axi_ctrl_rvalid;
  input [0:0]s_axi_ctrl_rready;
  input [23:0]s_axis_tdata;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tid;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  output s_axis_tready;
  input [2:0]s_axis_tstrb;
  input [0:0]s_axis_tuser;
  input s_axis_tvalid;
  output [31:0]m_axi_mm_awaddr;
  output [7:0]m_axi_mm_awlen;
  output [2:0]m_axi_mm_awsize;
  output [1:0]m_axi_mm_awburst;
  output [0:0]m_axi_mm_awlock;
  output [3:0]m_axi_mm_awcache;
  output [2:0]m_axi_mm_awprot;
  output [3:0]m_axi_mm_awregion;
  output [3:0]m_axi_mm_awqos;
  output [0:0]m_axi_mm_awvalid;
  input [0:0]m_axi_mm_awready;
  output [255:0]m_axi_mm_wdata;
  output [31:0]m_axi_mm_wstrb;
  output [0:0]m_axi_mm_wlast;
  output [0:0]m_axi_mm_wvalid;
  input [0:0]m_axi_mm_wready;
  input [1:0]m_axi_mm_bresp;
  input [0:0]m_axi_mm_bvalid;
  output [0:0]m_axi_mm_bready;
  output [31:0]m_axi_mm_araddr;
  output [7:0]m_axi_mm_arlen;
  output [2:0]m_axi_mm_arsize;
  output [1:0]m_axi_mm_arburst;
  output [0:0]m_axi_mm_arlock;
  output [3:0]m_axi_mm_arcache;
  output [2:0]m_axi_mm_arprot;
  output [3:0]m_axi_mm_arregion;
  output [3:0]m_axi_mm_arqos;
  output [0:0]m_axi_mm_arvalid;
  input [0:0]m_axi_mm_arready;
  input [255:0]m_axi_mm_rdata;
  input [1:0]m_axi_mm_rresp;
  input [0:0]m_axi_mm_rlast;
  input [0:0]m_axi_mm_rvalid;
  output [0:0]m_axi_mm_rready;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [1:0]m_axi_mm_arid;
  output [1:0]m_axi_mm_awid;
  input [1:0]m_axi_mm_bid;
  input [1:0]m_axi_mm_rid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tid;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tuser;
endmodule
