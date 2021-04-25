-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Apr 24 21:24:49 2021
-- Host        : archlinux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_v_proc_ss_0_0_stub.vhdl
-- Design      : system_v_proc_ss_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk_axis : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aclk_axi_mm : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_io_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    deint_field_id : in STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axi_mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_mm_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_mm_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_mm_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk_axis,aclk_ctrl,aclk_axi_mm,aresetn_ctrl,aresetn_io_axis[0:0],deint_field_id,s_axi_ctrl_awaddr[19:0],s_axi_ctrl_awprot[2:0],s_axi_ctrl_awvalid[0:0],s_axi_ctrl_awready[0:0],s_axi_ctrl_wdata[31:0],s_axi_ctrl_wstrb[3:0],s_axi_ctrl_wvalid[0:0],s_axi_ctrl_wready[0:0],s_axi_ctrl_bresp[1:0],s_axi_ctrl_bvalid[0:0],s_axi_ctrl_bready[0:0],s_axi_ctrl_araddr[19:0],s_axi_ctrl_arprot[2:0],s_axi_ctrl_arvalid[0:0],s_axi_ctrl_arready[0:0],s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0],s_axi_ctrl_rvalid[0:0],s_axi_ctrl_rready[0:0],s_axis_tdata[23:0],s_axis_tdest[0:0],s_axis_tid[0:0],s_axis_tkeep[2:0],s_axis_tlast,s_axis_tready,s_axis_tstrb[2:0],s_axis_tuser[0:0],s_axis_tvalid,m_axi_mm_awaddr[31:0],m_axi_mm_awlen[7:0],m_axi_mm_awsize[2:0],m_axi_mm_awburst[1:0],m_axi_mm_awlock[0:0],m_axi_mm_awcache[3:0],m_axi_mm_awprot[2:0],m_axi_mm_awregion[3:0],m_axi_mm_awqos[3:0],m_axi_mm_awvalid[0:0],m_axi_mm_awready[0:0],m_axi_mm_wdata[255:0],m_axi_mm_wstrb[31:0],m_axi_mm_wlast[0:0],m_axi_mm_wvalid[0:0],m_axi_mm_wready[0:0],m_axi_mm_bresp[1:0],m_axi_mm_bvalid[0:0],m_axi_mm_bready[0:0],m_axi_mm_araddr[31:0],m_axi_mm_arlen[7:0],m_axi_mm_arsize[2:0],m_axi_mm_arburst[1:0],m_axi_mm_arlock[0:0],m_axi_mm_arcache[3:0],m_axi_mm_arprot[2:0],m_axi_mm_arregion[3:0],m_axi_mm_arqos[3:0],m_axi_mm_arvalid[0:0],m_axi_mm_arready[0:0],m_axi_mm_rdata[255:0],m_axi_mm_rresp[1:0],m_axi_mm_rlast[0:0],m_axi_mm_rvalid[0:0],m_axi_mm_rready[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[23:0],m_axi_mm_arid[1:0],m_axi_mm_awid[1:0],m_axi_mm_bid[1:0],m_axi_mm_rid[1:0],m_axis_tdest[0:0],m_axis_tid[0:0],m_axis_tkeep[2:0],m_axis_tlast,m_axis_tstrb[2:0],m_axis_tuser[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_2d50,Vivado 2018.3";
begin
end;
