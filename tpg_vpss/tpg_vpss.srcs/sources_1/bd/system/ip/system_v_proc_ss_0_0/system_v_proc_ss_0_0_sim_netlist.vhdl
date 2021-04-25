-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Apr 24 21:24:49 2021
-- Host        : archlinux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top system_v_proc_ss_0_0 -prefix
--               system_v_proc_ss_0_0_ system_v_proc_ss_0_0_sim_netlist.vhdl
-- Design      : system_v_proc_ss_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_deint_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_v_proc_ss_0_0_bd_2d50_deint_concat_0 : entity is "bd_2d50_deint_concat_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_v_proc_ss_0_0_bd_2d50_deint_concat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_v_proc_ss_0_0_bd_2d50_deint_concat_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2018.3";
end system_v_proc_ss_0_0_bd_2d50_deint_concat_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_deint_concat_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0 : entity is "bd_2d50_deint_fid_tap_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
end system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0 : entity is "bd_2d50_deint_tuser_tap_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
end system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0 : entity is "bd_2d50_proc_ss_ip_aresetn_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
end system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0 : entity is "bd_2d50_vid_in_aresetn_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
end system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m00_couplers_imp_CV42HO is
  port (
    s_axis_tready : out STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m00_couplers_imp_CV42HO;

architecture STRUCTURE of system_v_proc_ss_0_0_m00_couplers_imp_CV42HO is
  component system_v_proc_ss_0_0_bd_2d50_m00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m00_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m00_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m00_regslice: component system_v_proc_ss_0_0_bd_2d50_m00_regslice_0
     port map (
      aclk => M00_AXIS_ACLK,
      aresetn => M00_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M00_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M00_AXIS_tdest(0),
      m_axis_tid(0) => M00_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M00_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M00_AXIS_tlast,
      m_axis_tready => M00_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M00_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M00_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M00_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m01_couplers_imp_1B5X6FZ is
  port (
    s_axis_tready : out STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M01_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_ACLK : in STD_LOGIC;
    M01_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m01_couplers_imp_1B5X6FZ;

architecture STRUCTURE of system_v_proc_ss_0_0_m01_couplers_imp_1B5X6FZ is
  component system_v_proc_ss_0_0_bd_2d50_m01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m01_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m01_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m01_regslice: component system_v_proc_ss_0_0_bd_2d50_m01_regslice_0
     port map (
      aclk => M01_AXIS_ACLK,
      aresetn => M01_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M01_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M01_AXIS_tdest(0),
      m_axis_tid(0) => M01_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M01_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M01_AXIS_tlast,
      m_axis_tready => M01_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M01_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M01_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M01_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m01_couplers_imp_U2A8WA is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m01_couplers_imp_U2A8WA;

architecture STRUCTURE of system_v_proc_ss_0_0_m01_couplers_imp_U2A8WA is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_0;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_0
     port map (
      m_axi_aclk => M01_ACLK,
      m_axi_araddr(8 downto 0) => M01_AXI_araddr(8 downto 0),
      m_axi_aresetn => M01_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M01_AXI_arready,
      m_axi_arvalid => M01_AXI_arvalid,
      m_axi_awaddr(8 downto 0) => M01_AXI_awaddr(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M01_AXI_awready,
      m_axi_awvalid => M01_AXI_awvalid,
      m_axi_bready => M01_AXI_bready,
      m_axi_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      m_axi_bvalid => M01_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      m_axi_rready => M01_AXI_rready,
      m_axi_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      m_axi_rvalid => M01_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      m_axi_wready => M01_AXI_wready,
      m_axi_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M01_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(8 downto 0) => m_axi_araddr(8 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(8 downto 0) => m_axi_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m02_couplers_imp_1XGZGWR is
  port (
    s_axis_tready : out STD_LOGIC;
    M02_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M02_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_ACLK : in STD_LOGIC;
    M02_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m02_couplers_imp_1XGZGWR;

architecture STRUCTURE of system_v_proc_ss_0_0_m02_couplers_imp_1XGZGWR is
  component system_v_proc_ss_0_0_bd_2d50_m02_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m02_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m02_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m02_regslice: component system_v_proc_ss_0_0_bd_2d50_m02_regslice_0
     port map (
      aclk => M02_AXIS_ACLK,
      aresetn => M02_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M02_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M02_AXIS_tdest(0),
      m_axis_tid(0) => M02_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M02_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M02_AXIS_tlast,
      m_axis_tready => M02_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M02_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M02_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M02_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m02_couplers_imp_HOX72M is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m02_couplers_imp_HOX72M;

architecture STRUCTURE of system_v_proc_ss_0_0_m02_couplers_imp_HOX72M is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_1;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_1
     port map (
      m_axi_aclk => M02_ACLK,
      m_axi_araddr(11 downto 0) => M02_AXI_araddr(11 downto 0),
      m_axi_aresetn => M02_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M02_AXI_arready,
      m_axi_arvalid => M02_AXI_arvalid,
      m_axi_awaddr(11 downto 0) => M02_AXI_awaddr(11 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M02_AXI_awready,
      m_axi_awvalid => M02_AXI_awvalid,
      m_axi_bready => M02_AXI_bready,
      m_axi_bresp(1 downto 0) => M02_AXI_bresp(1 downto 0),
      m_axi_bvalid => M02_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M02_AXI_rdata(31 downto 0),
      m_axi_rready => M02_AXI_rready,
      m_axi_rresp(1 downto 0) => M02_AXI_rresp(1 downto 0),
      m_axi_rvalid => M02_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M02_AXI_wdata(31 downto 0),
      m_axi_wready => M02_AXI_wready,
      m_axi_wstrb(3 downto 0) => M02_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M02_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m03_couplers_imp_1F5VMML is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m03_couplers_imp_1F5VMML;

architecture STRUCTURE of system_v_proc_ss_0_0_m03_couplers_imp_1F5VMML is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_2;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_2
     port map (
      m_axi_aclk => M03_ACLK,
      m_axi_araddr(13 downto 0) => M03_AXI_araddr(13 downto 0),
      m_axi_aresetn => M03_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M03_AXI_arready,
      m_axi_arvalid => M03_AXI_arvalid,
      m_axi_awaddr(13 downto 0) => M03_AXI_awaddr(13 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M03_AXI_awready,
      m_axi_awvalid => M03_AXI_awvalid,
      m_axi_bready => M03_AXI_bready,
      m_axi_bresp(1 downto 0) => M03_AXI_bresp(1 downto 0),
      m_axi_bvalid => M03_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M03_AXI_rdata(31 downto 0),
      m_axi_rready => M03_AXI_rready,
      m_axi_rresp(1 downto 0) => M03_AXI_rresp(1 downto 0),
      m_axi_rvalid => M03_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M03_AXI_wdata(31 downto 0),
      m_axi_wready => M03_AXI_wready,
      m_axi_wstrb(3 downto 0) => M03_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M03_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(13 downto 0) => m_axi_araddr(13 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(13 downto 0) => m_axi_awaddr(13 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m03_couplers_imp_YWD7H4 is
  port (
    M03_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    M03_AXIS_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M03_AXIS_tlast : out STD_LOGIC;
    M03_AXIS_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXIS_tready : out STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M03_AXIS_ARESETN : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    M03_AXIS_ACLK : in STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end system_v_proc_ss_0_0_m03_couplers_imp_YWD7H4;

architecture STRUCTURE of system_v_proc_ss_0_0_m03_couplers_imp_YWD7H4 is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_11 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_11;
  component system_v_proc_ss_0_0_bd_2d50_auto_ss_slidr_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_ss_slidr_0;
  component system_v_proc_ss_0_0_bd_2d50_auto_us_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_us_0;
  signal auto_cc_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal auto_cc_to_auto_ss_slidr_TDEST : STD_LOGIC;
  signal auto_cc_to_auto_ss_slidr_TID : STD_LOGIC;
  signal auto_cc_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ss_slidr_TSTRB : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_auto_ss_slidr_TUSER : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal auto_us_to_auto_cc_TDEST : STD_LOGIC;
  signal auto_us_to_auto_cc_TID : STD_LOGIC;
  signal auto_us_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_us_to_auto_cc_TLAST : STD_LOGIC;
  signal auto_us_to_auto_cc_TREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_TSTRB : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_us_to_auto_cc_TUSER : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_us_to_auto_cc_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3";
  attribute X_CORE_INFO of auto_ss_slidr : label is "top_bd_2d50_auto_ss_slidr_0,Vivado 2018.3";
  attribute X_CORE_INFO of auto_us : label is "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_11
     port map (
      m_axis_aclk => M03_AXIS_ACLK,
      m_axis_aresetn => M03_AXIS_ARESETN,
      m_axis_tdata(47 downto 0) => auto_cc_to_auto_ss_slidr_TDATA(47 downto 0),
      m_axis_tdest(0) => auto_cc_to_auto_ss_slidr_TDEST,
      m_axis_tid(0) => auto_cc_to_auto_ss_slidr_TID,
      m_axis_tkeep(5 downto 0) => auto_cc_to_auto_ss_slidr_TKEEP(5 downto 0),
      m_axis_tlast => auto_cc_to_auto_ss_slidr_TLAST,
      m_axis_tready => auto_cc_to_auto_ss_slidr_TREADY,
      m_axis_tstrb(5 downto 0) => auto_cc_to_auto_ss_slidr_TSTRB(5 downto 0),
      m_axis_tuser(5 downto 0) => auto_cc_to_auto_ss_slidr_TUSER(5 downto 0),
      m_axis_tvalid => auto_cc_to_auto_ss_slidr_TVALID,
      s_axis_aclk => ACLK,
      s_axis_aresetn => ARESETN,
      s_axis_tdata(47 downto 0) => auto_us_to_auto_cc_TDATA(47 downto 0),
      s_axis_tdest(0) => auto_us_to_auto_cc_TDEST,
      s_axis_tid(0) => auto_us_to_auto_cc_TID,
      s_axis_tkeep(5 downto 0) => auto_us_to_auto_cc_TKEEP(5 downto 0),
      s_axis_tlast => auto_us_to_auto_cc_TLAST,
      s_axis_tready => auto_us_to_auto_cc_TREADY,
      s_axis_tstrb(5 downto 0) => auto_us_to_auto_cc_TSTRB(5 downto 0),
      s_axis_tuser(5 downto 0) => auto_us_to_auto_cc_TUSER(5 downto 0),
      s_axis_tvalid => auto_us_to_auto_cc_TVALID
    );
auto_ss_slidr: component system_v_proc_ss_0_0_bd_2d50_auto_ss_slidr_0
     port map (
      aclk => M03_AXIS_ACLK,
      aresetn => M03_AXIS_ARESETN,
      m_axis_tdata(47 downto 0) => M03_AXIS_tdata(47 downto 0),
      m_axis_tkeep(5 downto 0) => M03_AXIS_tkeep(5 downto 0),
      m_axis_tlast => M03_AXIS_tlast,
      m_axis_tready => M03_AXIS_tready,
      m_axis_tuser(5 downto 0) => M03_AXIS_tuser(5 downto 0),
      m_axis_tvalid => M03_AXIS_tvalid,
      s_axis_tdata(47 downto 0) => auto_cc_to_auto_ss_slidr_TDATA(47 downto 0),
      s_axis_tdest(0) => auto_cc_to_auto_ss_slidr_TDEST,
      s_axis_tid(0) => auto_cc_to_auto_ss_slidr_TID,
      s_axis_tkeep(5 downto 0) => auto_cc_to_auto_ss_slidr_TKEEP(5 downto 0),
      s_axis_tlast => auto_cc_to_auto_ss_slidr_TLAST,
      s_axis_tready => auto_cc_to_auto_ss_slidr_TREADY,
      s_axis_tstrb(5 downto 0) => auto_cc_to_auto_ss_slidr_TSTRB(5 downto 0),
      s_axis_tuser(5 downto 0) => auto_cc_to_auto_ss_slidr_TUSER(5 downto 0),
      s_axis_tvalid => auto_cc_to_auto_ss_slidr_TVALID
    );
auto_us: component system_v_proc_ss_0_0_bd_2d50_auto_us_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(47 downto 0) => auto_us_to_auto_cc_TDATA(47 downto 0),
      m_axis_tdest(0) => auto_us_to_auto_cc_TDEST,
      m_axis_tid(0) => auto_us_to_auto_cc_TID,
      m_axis_tkeep(5 downto 0) => auto_us_to_auto_cc_TKEEP(5 downto 0),
      m_axis_tlast => auto_us_to_auto_cc_TLAST,
      m_axis_tready => auto_us_to_auto_cc_TREADY,
      m_axis_tstrb(5 downto 0) => auto_us_to_auto_cc_TSTRB(5 downto 0),
      m_axis_tuser(5 downto 0) => auto_us_to_auto_cc_TUSER(5 downto 0),
      m_axis_tvalid => auto_us_to_auto_cc_TVALID,
      s_axis_tdata(23 downto 0) => S_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S_AXIS_tdest(0),
      s_axis_tid(0) => S_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S_AXIS_tlast,
      s_axis_tready => S_AXIS_tready,
      s_axis_tstrb(2 downto 0) => S_AXIS_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => S_AXIS_tuser(2 downto 0),
      s_axis_tvalid => S_AXIS_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m04_couplers_imp_16FXGJQ is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m04_couplers_imp_16FXGJQ;

architecture STRUCTURE of system_v_proc_ss_0_0_m04_couplers_imp_16FXGJQ is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_3;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_3
     port map (
      m_axi_aclk => M04_ACLK,
      m_axi_araddr(6 downto 0) => M04_AXI_araddr(6 downto 0),
      m_axi_aresetn => M04_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M04_AXI_arready,
      m_axi_arvalid => M04_AXI_arvalid,
      m_axi_awaddr(6 downto 0) => M04_AXI_awaddr(6 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M04_AXI_awready,
      m_axi_awvalid => M04_AXI_awvalid,
      m_axi_bready => M04_AXI_bready,
      m_axi_bresp(1 downto 0) => M04_AXI_bresp(1 downto 0),
      m_axi_bvalid => M04_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M04_AXI_rdata(31 downto 0),
      m_axi_rready => M04_AXI_rready,
      m_axi_rresp(1 downto 0) => M04_AXI_rresp(1 downto 0),
      m_axi_rvalid => M04_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M04_AXI_wdata(31 downto 0),
      m_axi_wready => M04_AXI_wready,
      m_axi_wstrb(3 downto 0) => M04_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M04_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(6 downto 0) => m_axi_araddr(6 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(6 downto 0) => m_axi_awaddr(6 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m04_couplers_imp_PW9X03 is
  port (
    s_axis_tready : out STD_LOGIC;
    M04_AXIS_tvalid : out STD_LOGIC;
    M04_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M04_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tlast : out STD_LOGIC;
    M04_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_ACLK : in STD_LOGIC;
    M04_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m04_couplers_imp_PW9X03;

architecture STRUCTURE of system_v_proc_ss_0_0_m04_couplers_imp_PW9X03 is
  component system_v_proc_ss_0_0_bd_2d50_m04_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m04_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m04_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m04_regslice: component system_v_proc_ss_0_0_bd_2d50_m04_regslice_0
     port map (
      aclk => M04_AXIS_ACLK,
      aresetn => M04_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M04_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M04_AXIS_tdest(0),
      m_axis_tid(0) => M04_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M04_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M04_AXIS_tlast,
      m_axis_tready => M04_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M04_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M04_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M04_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m05_couplers_imp_1OR26FK is
  port (
    s_axis_tready : out STD_LOGIC;
    M05_AXIS_tvalid : out STD_LOGIC;
    M05_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M05_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_ACLK : in STD_LOGIC;
    M05_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m05_couplers_imp_1OR26FK;

architecture STRUCTURE of system_v_proc_ss_0_0_m05_couplers_imp_1OR26FK is
  component system_v_proc_ss_0_0_bd_2d50_m05_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m05_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m05_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m05_regslice: component system_v_proc_ss_0_0_bd_2d50_m05_regslice_0
     port map (
      aclk => M05_AXIS_ACLK,
      aresetn => M05_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M05_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M05_AXIS_tdest(0),
      m_axis_tid(0) => M05_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M05_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M05_AXIS_tlast(0),
      m_axis_tready => M05_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M05_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M05_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M05_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m05_couplers_imp_8OUFK5 is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m05_couplers_imp_8OUFK5;

architecture STRUCTURE of system_v_proc_ss_0_0_m05_couplers_imp_8OUFK5 is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_4;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_4
     port map (
      m_axi_aclk => M05_ACLK,
      m_axi_araddr(10 downto 0) => M05_AXI_araddr(10 downto 0),
      m_axi_aresetn => M05_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M05_AXI_arready,
      m_axi_arvalid => M05_AXI_arvalid,
      m_axi_awaddr(10 downto 0) => M05_AXI_awaddr(10 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M05_AXI_awready,
      m_axi_awvalid => M05_AXI_awvalid,
      m_axi_bready => M05_AXI_bready,
      m_axi_bresp(1 downto 0) => M05_AXI_bresp(1 downto 0),
      m_axi_bvalid => M05_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M05_AXI_rdata(31 downto 0),
      m_axi_rready => M05_AXI_rready,
      m_axi_rresp(1 downto 0) => M05_AXI_rresp(1 downto 0),
      m_axi_rvalid => M05_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M05_AXI_wdata(31 downto 0),
      m_axi_wready => M05_AXI_wready,
      m_axi_wstrb(3 downto 0) => M05_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M05_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(10 downto 0) => m_axi_araddr(10 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(10 downto 0) => m_axi_awaddr(10 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m06_couplers_imp_124KRDG is
  port (
    s_axis_tready : out STD_LOGIC;
    M06_AXIS_tvalid : out STD_LOGIC;
    M06_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M06_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_ACLK : in STD_LOGIC;
    M06_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m06_couplers_imp_124KRDG;

architecture STRUCTURE of system_v_proc_ss_0_0_m06_couplers_imp_124KRDG is
  component system_v_proc_ss_0_0_bd_2d50_m06_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m06_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m06_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m06_regslice: component system_v_proc_ss_0_0_bd_2d50_m06_regslice_0
     port map (
      aclk => M06_AXIS_ACLK,
      aresetn => M06_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M06_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M06_AXIS_tdest(0),
      m_axis_tid(0) => M06_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M06_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M06_AXIS_tlast(0),
      m_axis_tready => M06_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M06_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M06_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M06_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m06_couplers_imp_LB3B29 is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m06_couplers_imp_LB3B29;

architecture STRUCTURE of system_v_proc_ss_0_0_m06_couplers_imp_LB3B29 is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_5 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_5;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_5
     port map (
      m_axi_aclk => M06_ACLK,
      m_axi_araddr(10 downto 0) => M06_AXI_araddr(10 downto 0),
      m_axi_aresetn => M06_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M06_AXI_arready,
      m_axi_arvalid => M06_AXI_arvalid,
      m_axi_awaddr(10 downto 0) => M06_AXI_awaddr(10 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M06_AXI_awready,
      m_axi_awvalid => M06_AXI_awvalid,
      m_axi_bready => M06_AXI_bready,
      m_axi_bresp(1 downto 0) => M06_AXI_bresp(1 downto 0),
      m_axi_bvalid => M06_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M06_AXI_rdata(31 downto 0),
      m_axi_rready => M06_AXI_rready,
      m_axi_rresp(1 downto 0) => M06_AXI_rresp(1 downto 0),
      m_axi_rvalid => M06_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M06_AXI_wdata(31 downto 0),
      m_axi_wready => M06_AXI_wready,
      m_axi_wstrb(3 downto 0) => M06_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M06_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(10 downto 0) => m_axi_araddr(10 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(10 downto 0) => m_axi_awaddr(10 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m07_couplers_imp_1KFZB7M is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m07_couplers_imp_1KFZB7M;

architecture STRUCTURE of system_v_proc_ss_0_0_m07_couplers_imp_1KFZB7M is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_6 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_6;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_6
     port map (
      m_axi_aclk => M07_ACLK,
      m_axi_araddr(10 downto 0) => M07_AXI_araddr(10 downto 0),
      m_axi_aresetn => M07_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M07_AXI_arready,
      m_axi_arvalid => M07_AXI_arvalid,
      m_axi_awaddr(10 downto 0) => M07_AXI_awaddr(10 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M07_AXI_awready,
      m_axi_awvalid => M07_AXI_awvalid,
      m_axi_bready => M07_AXI_bready,
      m_axi_bresp(1 downto 0) => M07_AXI_bresp(1 downto 0),
      m_axi_bvalid => M07_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M07_AXI_rdata(31 downto 0),
      m_axi_rready => M07_AXI_rready,
      m_axi_rresp(1 downto 0) => M07_AXI_rresp(1 downto 0),
      m_axi_rvalid => M07_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M07_AXI_wdata(31 downto 0),
      m_axi_wready => M07_AXI_wready,
      m_axi_wstrb(3 downto 0) => M07_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M07_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(10 downto 0) => m_axi_araddr(10 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(10 downto 0) => m_axi_awaddr(10 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m07_couplers_imp_43XNMF is
  port (
    s_axis_tready : out STD_LOGIC;
    M07_AXIS_tvalid : out STD_LOGIC;
    M07_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M07_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_ACLK : in STD_LOGIC;
    M07_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m07_couplers_imp_43XNMF;

architecture STRUCTURE of system_v_proc_ss_0_0_m07_couplers_imp_43XNMF is
  component system_v_proc_ss_0_0_bd_2d50_m07_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m07_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m07_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m07_regslice: component system_v_proc_ss_0_0_bd_2d50_m07_regslice_0
     port map (
      aclk => M07_AXIS_ACLK,
      aresetn => M07_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M07_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M07_AXIS_tdest(0),
      m_axis_tid(0) => M07_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M07_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M07_AXIS_tlast(0),
      m_axis_tready => M07_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M07_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M07_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M07_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m08_couplers_imp_1JKRG8Y is
  port (
    s_axis_tready : out STD_LOGIC;
    M08_AXIS_tvalid : out STD_LOGIC;
    M08_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M08_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tlast : out STD_LOGIC;
    M08_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_ACLK : in STD_LOGIC;
    M08_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m08_couplers_imp_1JKRG8Y;

architecture STRUCTURE of system_v_proc_ss_0_0_m08_couplers_imp_1JKRG8Y is
  component system_v_proc_ss_0_0_bd_2d50_m08_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_m08_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m08_regslice : label is "axis_register_slice_v1_1_18_axis_register_slice,Vivado 2018.3";
begin
m08_regslice: component system_v_proc_ss_0_0_bd_2d50_m08_regslice_0
     port map (
      aclk => M08_AXIS_ACLK,
      aresetn => M08_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M08_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M08_AXIS_tdest(0),
      m_axis_tid(0) => M08_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M08_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M08_AXIS_tlast,
      m_axis_tready => M08_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M08_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M08_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M08_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(0) => m_axis_tdest(0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m08_couplers_imp_3V6SLZ is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m08_couplers_imp_3V6SLZ;

architecture STRUCTURE of system_v_proc_ss_0_0_m08_couplers_imp_3V6SLZ is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_7 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_7;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_7
     port map (
      m_axi_aclk => M08_ACLK,
      m_axi_araddr(8 downto 0) => M08_AXI_araddr(8 downto 0),
      m_axi_aresetn => M08_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M08_AXI_arready,
      m_axi_arvalid => M08_AXI_arvalid,
      m_axi_awaddr(8 downto 0) => M08_AXI_awaddr(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M08_AXI_awready,
      m_axi_awvalid => M08_AXI_awvalid,
      m_axi_bready => M08_AXI_bready,
      m_axi_bresp(1 downto 0) => M08_AXI_bresp(1 downto 0),
      m_axi_bvalid => M08_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M08_AXI_rdata(31 downto 0),
      m_axi_rready => M08_AXI_rready,
      m_axi_rresp(1 downto 0) => M08_AXI_rresp(1 downto 0),
      m_axi_rvalid => M08_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M08_AXI_wdata(31 downto 0),
      m_axi_wready => M08_AXI_wready,
      m_axi_wstrb(3 downto 0) => M08_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M08_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(8 downto 0) => m_axi_araddr(8 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(8 downto 0) => m_axi_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m09_couplers_imp_12DB9JO is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m09_couplers_imp_12DB9JO;

architecture STRUCTURE of system_v_proc_ss_0_0_m09_couplers_imp_12DB9JO is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_8 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_8;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_8
     port map (
      m_axi_aclk => M09_ACLK,
      m_axi_araddr(8 downto 0) => M09_AXI_araddr(8 downto 0),
      m_axi_aresetn => M09_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M09_AXI_arready,
      m_axi_arvalid => M09_AXI_arvalid,
      m_axi_awaddr(8 downto 0) => M09_AXI_awaddr(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M09_AXI_awready,
      m_axi_awvalid => M09_AXI_awvalid,
      m_axi_bready => M09_AXI_bready,
      m_axi_bresp(1 downto 0) => M09_AXI_bresp(1 downto 0),
      m_axi_bvalid => M09_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M09_AXI_rdata(31 downto 0),
      m_axi_rready => M09_AXI_rready,
      m_axi_rresp(1 downto 0) => M09_AXI_rresp(1 downto 0),
      m_axi_rvalid => M09_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M09_AXI_wdata(31 downto 0),
      m_axi_wready => M09_AXI_wready,
      m_axi_wstrb(3 downto 0) => NLW_auto_cc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => M09_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(8 downto 0) => m_axi_araddr(8 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(8 downto 0) => m_axi_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m10_couplers_imp_1AQE5K is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m10_couplers_imp_1AQE5K;

architecture STRUCTURE of system_v_proc_ss_0_0_m10_couplers_imp_1AQE5K is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_9 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_9;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_9
     port map (
      m_axi_aclk => M10_ACLK,
      m_axi_araddr(6 downto 0) => M10_AXI_araddr(6 downto 0),
      m_axi_aresetn => M10_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M10_AXI_arready,
      m_axi_arvalid => M10_AXI_arvalid,
      m_axi_awaddr(6 downto 0) => M10_AXI_awaddr(6 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M10_AXI_awready,
      m_axi_awvalid => M10_AXI_awvalid,
      m_axi_bready => M10_AXI_bready,
      m_axi_bresp(1 downto 0) => M10_AXI_bresp(1 downto 0),
      m_axi_bvalid => M10_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M10_AXI_rdata(31 downto 0),
      m_axi_rready => M10_AXI_rready,
      m_axi_rresp(1 downto 0) => M10_AXI_rresp(1 downto 0),
      m_axi_rvalid => M10_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M10_AXI_wdata(31 downto 0),
      m_axi_wready => M10_AXI_wready,
      m_axi_wstrb(3 downto 0) => M10_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M10_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(6 downto 0) => m_axi_araddr(6 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(6 downto 0) => m_axi_awaddr(6 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_m11_couplers_imp_10CYW6J is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_m11_couplers_imp_10CYW6J;

architecture STRUCTURE of system_v_proc_ss_0_0_m11_couplers_imp_10CYW6J is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_10 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_10;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_10
     port map (
      m_axi_aclk => M11_ACLK,
      m_axi_araddr(8 downto 0) => M11_AXI_araddr(8 downto 0),
      m_axi_aresetn => M11_ARESETN,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M11_AXI_arready,
      m_axi_arvalid => M11_AXI_arvalid,
      m_axi_awaddr(8 downto 0) => M11_AXI_awaddr(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M11_AXI_awready,
      m_axi_awvalid => M11_AXI_awvalid,
      m_axi_bready => M11_AXI_bready,
      m_axi_bresp(1 downto 0) => M11_AXI_bresp(1 downto 0),
      m_axi_bvalid => M11_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M11_AXI_rdata(31 downto 0),
      m_axi_rready => M11_AXI_rready,
      m_axi_rresp(1 downto 0) => M11_AXI_rresp(1 downto 0),
      m_axi_rvalid => M11_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M11_AXI_wdata(31 downto 0),
      m_axi_wready => M11_AXI_wready,
      m_axi_wstrb(3 downto 0) => M11_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M11_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(8 downto 0) => m_axi_araddr(8 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(8 downto 0) => m_axi_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_s00_couplers_imp_1VGAQIZ is
  port (
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_v_proc_ss_0_0_s00_couplers_imp_1VGAQIZ;

architecture STRUCTURE of system_v_proc_ss_0_0_s00_couplers_imp_1VGAQIZ is
  component system_v_proc_ss_0_0_bd_2d50_auto_us_df_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_us_df_0;
  signal NLW_auto_us_df_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_us_df : label is "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3";
begin
auto_us_df: component system_v_proc_ss_0_0_bd_2d50_auto_us_df_0
     port map (
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_auto_us_df_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      m_axi_rlast => s_axi_rlast(0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      s_axi_aclk => ACLK,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_s01_couplers_imp_WE1KEG is
  port (
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_v_proc_ss_0_0_s01_couplers_imp_WE1KEG;

architecture STRUCTURE of system_v_proc_ss_0_0_s01_couplers_imp_WE1KEG is
  component system_v_proc_ss_0_0_bd_2d50_auto_us_df_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_us_df_1;
  signal NLW_auto_us_df_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_us_df : label is "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3";
begin
auto_us_df: component system_v_proc_ss_0_0_bd_2d50_auto_us_df_1
     port map (
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_auto_us_df_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_wdata(255 downto 0) => m_axi_wdata(255 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(31 downto 0) => m_axi_wstrb(31 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => ACLK,
      s_axi_aresetn => ARESETN,
      s_axi_awaddr(31 downto 0) => S01_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => S01_AXI_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      s_axi_awvalid => S01_AXI_awvalid,
      s_axi_bready => S01_AXI_bready,
      s_axi_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      s_axi_bvalid => S01_AXI_bvalid,
      s_axi_wdata(63 downto 0) => S01_AXI_wdata(63 downto 0),
      s_axi_wlast => S01_AXI_wlast,
      s_axi_wready => S01_AXI_wready,
      s_axi_wstrb(7 downto 0) => S01_AXI_wstrb(7 downto 0),
      s_axi_wvalid => S01_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_s02_couplers_imp_AV1SZW is
  port (
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_v_proc_ss_0_0_s02_couplers_imp_AV1SZW;

architecture STRUCTURE of system_v_proc_ss_0_0_s02_couplers_imp_AV1SZW is
  component system_v_proc_ss_0_0_bd_2d50_auto_us_df_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_us_df_2;
  signal NLW_auto_us_df_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_df_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_us_df : label is "axi_dwidth_converter_v2_1_18_top,Vivado 2018.3";
begin
auto_us_df: component system_v_proc_ss_0_0_bd_2d50_auto_us_df_2
     port map (
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_auto_us_df_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_auto_us_df_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      m_axi_rlast => s_axi_rlast(0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(255 downto 0) => m_axi_wdata(255 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(31 downto 0) => m_axi_wstrb(31 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(31 downto 0) => S02_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S02_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      s_axi_arready => S02_AXI_arready,
      s_axi_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      s_axi_arvalid => S02_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S02_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S02_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      s_axi_awready => S02_AXI_awready,
      s_axi_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      s_axi_awvalid => S02_AXI_awvalid,
      s_axi_bready => S02_AXI_bready,
      s_axi_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      s_axi_bvalid => S02_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S02_AXI_rdata(31 downto 0),
      s_axi_rlast => S02_AXI_rlast,
      s_axi_rready => S02_AXI_rready,
      s_axi_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      s_axi_rvalid => S02_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S02_AXI_wdata(31 downto 0),
      s_axi_wlast => S02_AXI_wlast,
      s_axi_wready => S02_AXI_wready,
      s_axi_wstrb(3 downto 0) => S02_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S02_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_s03_couplers_imp_1XMVDZ8 is
  port (
    S03_AXIS_tready : out STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXIS_ARESETN : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S03_AXIS_ACLK : in STD_LOGIC;
    S03_AXIS_tvalid : in STD_LOGIC;
    S03_AXIS_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    S03_AXIS_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S03_AXIS_tlast : in STD_LOGIC;
    S03_AXIS_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ACLK : in STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC
  );
end system_v_proc_ss_0_0_s03_couplers_imp_1XMVDZ8;

architecture STRUCTURE of system_v_proc_ss_0_0_s03_couplers_imp_1XMVDZ8 is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_12 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_12;
  component system_v_proc_ss_0_0_bd_2d50_auto_ds_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_ds_0;
  component system_v_proc_ss_0_0_bd_2d50_auto_ss_slid_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_ss_slid_0;
  signal auto_cc_to_auto_ds_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal auto_cc_to_auto_ds_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_auto_ds_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ds_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ds_TUSER : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_auto_ds_TVALID : STD_LOGIC;
  signal auto_ds_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ds_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal auto_ds_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal auto_ds_to_auto_ss_slid_TUSER : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_ss_slid_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3";
  attribute X_CORE_INFO of auto_ds : label is "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3";
  attribute X_CORE_INFO of auto_ss_slid : label is "top_bd_2d50_auto_ss_slid_0,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_12
     port map (
      m_axis_aclk => ACLK,
      m_axis_aresetn => ARESETN,
      m_axis_tdata(47 downto 0) => auto_cc_to_auto_ds_TDATA(47 downto 0),
      m_axis_tkeep(5 downto 0) => auto_cc_to_auto_ds_TKEEP(5 downto 0),
      m_axis_tlast => auto_cc_to_auto_ds_TLAST,
      m_axis_tready => auto_cc_to_auto_ds_TREADY,
      m_axis_tuser(5 downto 0) => auto_cc_to_auto_ds_TUSER(5 downto 0),
      m_axis_tvalid => auto_cc_to_auto_ds_TVALID,
      s_axis_aclk => S03_AXIS_ACLK,
      s_axis_aresetn => S03_AXIS_ARESETN,
      s_axis_tdata(47 downto 0) => S03_AXIS_tdata(47 downto 0),
      s_axis_tkeep(5 downto 0) => S03_AXIS_tkeep(5 downto 0),
      s_axis_tlast => S03_AXIS_tlast,
      s_axis_tready => S03_AXIS_tready,
      s_axis_tuser(5 downto 0) => S03_AXIS_tuser(5 downto 0),
      s_axis_tvalid => S03_AXIS_tvalid
    );
auto_ds: component system_v_proc_ss_0_0_bd_2d50_auto_ds_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => auto_ds_to_auto_ss_slid_TDATA(23 downto 0),
      m_axis_tkeep(2 downto 0) => auto_ds_to_auto_ss_slid_TKEEP(2 downto 0),
      m_axis_tlast => auto_ds_to_auto_ss_slid_TLAST,
      m_axis_tready => auto_ds_to_auto_ss_slid_TREADY,
      m_axis_tuser(2 downto 0) => auto_ds_to_auto_ss_slid_TUSER(2 downto 0),
      m_axis_tvalid => auto_ds_to_auto_ss_slid_TVALID,
      s_axis_tdata(47 downto 0) => auto_cc_to_auto_ds_TDATA(47 downto 0),
      s_axis_tkeep(5 downto 0) => auto_cc_to_auto_ds_TKEEP(5 downto 0),
      s_axis_tlast => auto_cc_to_auto_ds_TLAST,
      s_axis_tready => auto_cc_to_auto_ds_TREADY,
      s_axis_tuser(5 downto 0) => auto_cc_to_auto_ds_TUSER(5 downto 0),
      s_axis_tvalid => auto_cc_to_auto_ds_TVALID
    );
auto_ss_slid: component system_v_proc_ss_0_0_bd_2d50_auto_ss_slid_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => M_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M_AXIS_tdest(0),
      m_axis_tid(0) => M_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M_AXIS_tlast,
      m_axis_tready => M_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M_AXIS_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => M_AXIS_tuser(2 downto 0),
      m_axis_tvalid => M_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => auto_ds_to_auto_ss_slid_TDATA(23 downto 0),
      s_axis_tkeep(2 downto 0) => auto_ds_to_auto_ss_slid_TKEEP(2 downto 0),
      s_axis_tlast => auto_ds_to_auto_ss_slid_TLAST,
      s_axis_tready => auto_ds_to_auto_ss_slid_TREADY,
      s_axis_tuser(2 downto 0) => auto_ds_to_auto_ss_slid_TUSER(2 downto 0),
      s_axis_tvalid => auto_ds_to_auto_ss_slid_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_s09_couplers_imp_1JQ1MFX is
  port (
    S09_AXIS_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S09_AXIS_ARESETN : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S09_AXIS_ACLK : in STD_LOGIC;
    S09_AXIS_tvalid : in STD_LOGIC;
    S09_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S09_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXIS_tlast : in STD_LOGIC;
    S09_AXIS_tid : in STD_LOGIC;
    S09_AXIS_tdest : in STD_LOGIC;
    S09_AXIS_tuser : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_v_proc_ss_0_0_s09_couplers_imp_1JQ1MFX;

architecture STRUCTURE of system_v_proc_ss_0_0_s09_couplers_imp_1JQ1MFX is
  component system_v_proc_ss_0_0_bd_2d50_auto_cc_13 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_auto_cc_13;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3";
begin
auto_cc: component system_v_proc_ss_0_0_bd_2d50_auto_cc_13
     port map (
      m_axis_aclk => ACLK,
      m_axis_aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => s_axis_tready(0),
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => S09_AXIS_ACLK,
      s_axis_aresetn => S09_AXIS_ARESETN,
      s_axis_tdata(23 downto 0) => S09_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S09_AXIS_tdest,
      s_axis_tid(0) => S09_AXIS_tid,
      s_axis_tkeep(2 downto 0) => S09_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S09_AXIS_tlast,
      s_axis_tready => S09_AXIS_tready,
      s_axis_tstrb(2 downto 0) => S09_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S09_AXIS_tuser,
      s_axis_tvalid => S09_AXIS_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_v_proc_ss_0_0_bd_2d50_axi_interconnect_0_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_axi_interconnect_0_0 is
  component system_v_proc_ss_0_0_bd_2d50_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_xbar_0;
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 20 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 20 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 59 downto 40 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 59 downto 40 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 60 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 60 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 99 downto 80 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 99 downto 80 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 100 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 100 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 139 downto 120 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 139 downto 120 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 140 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 140 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 179 downto 160 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 179 downto 160 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 199 downto 180 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 199 downto 180 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 219 downto 200 );
  signal xbar_to_m10_couplers_ARPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 219 downto 200 );
  signal xbar_to_m10_couplers_AWPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 239 downto 220 );
  signal xbar_to_m11_couplers_ARPROT : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 239 downto 220 );
  signal xbar_to_m11_couplers_AWPROT : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3";
begin
m01_couplers: entity work.system_v_proc_ss_0_0_m01_couplers_imp_U2A8WA
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M01_ACLK => M01_ACLK,
      M01_ARESETN => M01_ARESETN,
      M01_AXI_araddr(8 downto 0) => M01_AXI_araddr(8 downto 0),
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_awaddr(8 downto 0) => M01_AXI_awaddr(8 downto 0),
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      M01_AXI_rready => M01_AXI_rready,
      M01_AXI_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      M01_AXI_wvalid => M01_AXI_wvalid,
      m_axi_araddr(8 downto 0) => xbar_to_m01_couplers_ARADDR(28 downto 20),
      m_axi_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arvalid(0) => xbar_to_m01_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => xbar_to_m01_couplers_AWADDR(28 downto 20),
      m_axi_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awvalid(0) => xbar_to_m01_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m01_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m01_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wvalid(0) => xbar_to_m01_couplers_WVALID,
      s_axi_arready => xbar_to_m01_couplers_ARREADY,
      s_axi_awready => xbar_to_m01_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m01_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m01_couplers_RVALID,
      s_axi_wready => xbar_to_m01_couplers_WREADY
    );
m02_couplers: entity work.system_v_proc_ss_0_0_m02_couplers_imp_HOX72M
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M02_ACLK => M02_ACLK,
      M02_ARESETN => M02_ARESETN,
      M02_AXI_araddr(11 downto 0) => M02_AXI_araddr(11 downto 0),
      M02_AXI_arready => M02_AXI_arready,
      M02_AXI_arvalid => M02_AXI_arvalid,
      M02_AXI_awaddr(11 downto 0) => M02_AXI_awaddr(11 downto 0),
      M02_AXI_awready => M02_AXI_awready,
      M02_AXI_awvalid => M02_AXI_awvalid,
      M02_AXI_bready => M02_AXI_bready,
      M02_AXI_bresp(1 downto 0) => M02_AXI_bresp(1 downto 0),
      M02_AXI_bvalid => M02_AXI_bvalid,
      M02_AXI_rdata(31 downto 0) => M02_AXI_rdata(31 downto 0),
      M02_AXI_rready => M02_AXI_rready,
      M02_AXI_rresp(1 downto 0) => M02_AXI_rresp(1 downto 0),
      M02_AXI_rvalid => M02_AXI_rvalid,
      M02_AXI_wdata(31 downto 0) => M02_AXI_wdata(31 downto 0),
      M02_AXI_wready => M02_AXI_wready,
      M02_AXI_wstrb(3 downto 0) => M02_AXI_wstrb(3 downto 0),
      M02_AXI_wvalid => M02_AXI_wvalid,
      m_axi_araddr(11 downto 0) => xbar_to_m02_couplers_ARADDR(51 downto 40),
      m_axi_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arvalid(0) => xbar_to_m02_couplers_ARVALID,
      m_axi_awaddr(11 downto 0) => xbar_to_m02_couplers_AWADDR(51 downto 40),
      m_axi_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awvalid(0) => xbar_to_m02_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m02_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m02_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wvalid(0) => xbar_to_m02_couplers_WVALID,
      s_axi_arready => xbar_to_m02_couplers_ARREADY,
      s_axi_awready => xbar_to_m02_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m02_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m02_couplers_RVALID,
      s_axi_wready => xbar_to_m02_couplers_WREADY
    );
m03_couplers: entity work.system_v_proc_ss_0_0_m03_couplers_imp_1F5VMML
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M03_ACLK => M03_ACLK,
      M03_ARESETN => M03_ARESETN,
      M03_AXI_araddr(13 downto 0) => M03_AXI_araddr(13 downto 0),
      M03_AXI_arready => M03_AXI_arready,
      M03_AXI_arvalid => M03_AXI_arvalid,
      M03_AXI_awaddr(13 downto 0) => M03_AXI_awaddr(13 downto 0),
      M03_AXI_awready => M03_AXI_awready,
      M03_AXI_awvalid => M03_AXI_awvalid,
      M03_AXI_bready => M03_AXI_bready,
      M03_AXI_bresp(1 downto 0) => M03_AXI_bresp(1 downto 0),
      M03_AXI_bvalid => M03_AXI_bvalid,
      M03_AXI_rdata(31 downto 0) => M03_AXI_rdata(31 downto 0),
      M03_AXI_rready => M03_AXI_rready,
      M03_AXI_rresp(1 downto 0) => M03_AXI_rresp(1 downto 0),
      M03_AXI_rvalid => M03_AXI_rvalid,
      M03_AXI_wdata(31 downto 0) => M03_AXI_wdata(31 downto 0),
      M03_AXI_wready => M03_AXI_wready,
      M03_AXI_wstrb(3 downto 0) => M03_AXI_wstrb(3 downto 0),
      M03_AXI_wvalid => M03_AXI_wvalid,
      m_axi_araddr(13 downto 0) => xbar_to_m03_couplers_ARADDR(73 downto 60),
      m_axi_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arvalid(0) => xbar_to_m03_couplers_ARVALID,
      m_axi_awaddr(13 downto 0) => xbar_to_m03_couplers_AWADDR(73 downto 60),
      m_axi_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awvalid(0) => xbar_to_m03_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m03_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m03_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wvalid(0) => xbar_to_m03_couplers_WVALID,
      s_axi_arready => xbar_to_m03_couplers_ARREADY,
      s_axi_awready => xbar_to_m03_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m03_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m03_couplers_RVALID,
      s_axi_wready => xbar_to_m03_couplers_WREADY
    );
m04_couplers: entity work.system_v_proc_ss_0_0_m04_couplers_imp_16FXGJQ
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M04_ACLK => M04_ACLK,
      M04_ARESETN => M04_ARESETN,
      M04_AXI_araddr(6 downto 0) => M04_AXI_araddr(6 downto 0),
      M04_AXI_arready => M04_AXI_arready,
      M04_AXI_arvalid => M04_AXI_arvalid,
      M04_AXI_awaddr(6 downto 0) => M04_AXI_awaddr(6 downto 0),
      M04_AXI_awready => M04_AXI_awready,
      M04_AXI_awvalid => M04_AXI_awvalid,
      M04_AXI_bready => M04_AXI_bready,
      M04_AXI_bresp(1 downto 0) => M04_AXI_bresp(1 downto 0),
      M04_AXI_bvalid => M04_AXI_bvalid,
      M04_AXI_rdata(31 downto 0) => M04_AXI_rdata(31 downto 0),
      M04_AXI_rready => M04_AXI_rready,
      M04_AXI_rresp(1 downto 0) => M04_AXI_rresp(1 downto 0),
      M04_AXI_rvalid => M04_AXI_rvalid,
      M04_AXI_wdata(31 downto 0) => M04_AXI_wdata(31 downto 0),
      M04_AXI_wready => M04_AXI_wready,
      M04_AXI_wstrb(3 downto 0) => M04_AXI_wstrb(3 downto 0),
      M04_AXI_wvalid => M04_AXI_wvalid,
      m_axi_araddr(6 downto 0) => xbar_to_m04_couplers_ARADDR(86 downto 80),
      m_axi_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arvalid(0) => xbar_to_m04_couplers_ARVALID,
      m_axi_awaddr(6 downto 0) => xbar_to_m04_couplers_AWADDR(86 downto 80),
      m_axi_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awvalid(0) => xbar_to_m04_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m04_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m04_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wvalid(0) => xbar_to_m04_couplers_WVALID,
      s_axi_arready => xbar_to_m04_couplers_ARREADY,
      s_axi_awready => xbar_to_m04_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m04_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m04_couplers_RVALID,
      s_axi_wready => xbar_to_m04_couplers_WREADY
    );
m05_couplers: entity work.system_v_proc_ss_0_0_m05_couplers_imp_8OUFK5
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M05_ACLK => M05_ACLK,
      M05_ARESETN => M05_ARESETN,
      M05_AXI_araddr(10 downto 0) => M05_AXI_araddr(10 downto 0),
      M05_AXI_arready => M05_AXI_arready,
      M05_AXI_arvalid => M05_AXI_arvalid,
      M05_AXI_awaddr(10 downto 0) => M05_AXI_awaddr(10 downto 0),
      M05_AXI_awready => M05_AXI_awready,
      M05_AXI_awvalid => M05_AXI_awvalid,
      M05_AXI_bready => M05_AXI_bready,
      M05_AXI_bresp(1 downto 0) => M05_AXI_bresp(1 downto 0),
      M05_AXI_bvalid => M05_AXI_bvalid,
      M05_AXI_rdata(31 downto 0) => M05_AXI_rdata(31 downto 0),
      M05_AXI_rready => M05_AXI_rready,
      M05_AXI_rresp(1 downto 0) => M05_AXI_rresp(1 downto 0),
      M05_AXI_rvalid => M05_AXI_rvalid,
      M05_AXI_wdata(31 downto 0) => M05_AXI_wdata(31 downto 0),
      M05_AXI_wready => M05_AXI_wready,
      M05_AXI_wstrb(3 downto 0) => M05_AXI_wstrb(3 downto 0),
      M05_AXI_wvalid => M05_AXI_wvalid,
      m_axi_araddr(10 downto 0) => xbar_to_m05_couplers_ARADDR(110 downto 100),
      m_axi_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arvalid(0) => xbar_to_m05_couplers_ARVALID,
      m_axi_awaddr(10 downto 0) => xbar_to_m05_couplers_AWADDR(110 downto 100),
      m_axi_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awvalid(0) => xbar_to_m05_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m05_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m05_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wvalid(0) => xbar_to_m05_couplers_WVALID,
      s_axi_arready => xbar_to_m05_couplers_ARREADY,
      s_axi_awready => xbar_to_m05_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m05_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m05_couplers_RVALID,
      s_axi_wready => xbar_to_m05_couplers_WREADY
    );
m06_couplers: entity work.system_v_proc_ss_0_0_m06_couplers_imp_LB3B29
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M06_ACLK => M06_ACLK,
      M06_ARESETN => M06_ARESETN,
      M06_AXI_araddr(10 downto 0) => M06_AXI_araddr(10 downto 0),
      M06_AXI_arready => M06_AXI_arready,
      M06_AXI_arvalid => M06_AXI_arvalid,
      M06_AXI_awaddr(10 downto 0) => M06_AXI_awaddr(10 downto 0),
      M06_AXI_awready => M06_AXI_awready,
      M06_AXI_awvalid => M06_AXI_awvalid,
      M06_AXI_bready => M06_AXI_bready,
      M06_AXI_bresp(1 downto 0) => M06_AXI_bresp(1 downto 0),
      M06_AXI_bvalid => M06_AXI_bvalid,
      M06_AXI_rdata(31 downto 0) => M06_AXI_rdata(31 downto 0),
      M06_AXI_rready => M06_AXI_rready,
      M06_AXI_rresp(1 downto 0) => M06_AXI_rresp(1 downto 0),
      M06_AXI_rvalid => M06_AXI_rvalid,
      M06_AXI_wdata(31 downto 0) => M06_AXI_wdata(31 downto 0),
      M06_AXI_wready => M06_AXI_wready,
      M06_AXI_wstrb(3 downto 0) => M06_AXI_wstrb(3 downto 0),
      M06_AXI_wvalid => M06_AXI_wvalid,
      m_axi_araddr(10 downto 0) => xbar_to_m06_couplers_ARADDR(130 downto 120),
      m_axi_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arvalid(0) => xbar_to_m06_couplers_ARVALID,
      m_axi_awaddr(10 downto 0) => xbar_to_m06_couplers_AWADDR(130 downto 120),
      m_axi_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awvalid(0) => xbar_to_m06_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m06_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m06_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wvalid(0) => xbar_to_m06_couplers_WVALID,
      s_axi_arready => xbar_to_m06_couplers_ARREADY,
      s_axi_awready => xbar_to_m06_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m06_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m06_couplers_RVALID,
      s_axi_wready => xbar_to_m06_couplers_WREADY
    );
m07_couplers: entity work.system_v_proc_ss_0_0_m07_couplers_imp_1KFZB7M
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M07_ACLK => M07_ACLK,
      M07_ARESETN => M07_ARESETN,
      M07_AXI_araddr(10 downto 0) => M07_AXI_araddr(10 downto 0),
      M07_AXI_arready => M07_AXI_arready,
      M07_AXI_arvalid => M07_AXI_arvalid,
      M07_AXI_awaddr(10 downto 0) => M07_AXI_awaddr(10 downto 0),
      M07_AXI_awready => M07_AXI_awready,
      M07_AXI_awvalid => M07_AXI_awvalid,
      M07_AXI_bready => M07_AXI_bready,
      M07_AXI_bresp(1 downto 0) => M07_AXI_bresp(1 downto 0),
      M07_AXI_bvalid => M07_AXI_bvalid,
      M07_AXI_rdata(31 downto 0) => M07_AXI_rdata(31 downto 0),
      M07_AXI_rready => M07_AXI_rready,
      M07_AXI_rresp(1 downto 0) => M07_AXI_rresp(1 downto 0),
      M07_AXI_rvalid => M07_AXI_rvalid,
      M07_AXI_wdata(31 downto 0) => M07_AXI_wdata(31 downto 0),
      M07_AXI_wready => M07_AXI_wready,
      M07_AXI_wstrb(3 downto 0) => M07_AXI_wstrb(3 downto 0),
      M07_AXI_wvalid => M07_AXI_wvalid,
      m_axi_araddr(10 downto 0) => xbar_to_m07_couplers_ARADDR(150 downto 140),
      m_axi_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arvalid(0) => xbar_to_m07_couplers_ARVALID,
      m_axi_awaddr(10 downto 0) => xbar_to_m07_couplers_AWADDR(150 downto 140),
      m_axi_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awvalid(0) => xbar_to_m07_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m07_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m07_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wvalid(0) => xbar_to_m07_couplers_WVALID,
      s_axi_arready => xbar_to_m07_couplers_ARREADY,
      s_axi_awready => xbar_to_m07_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m07_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m07_couplers_RVALID,
      s_axi_wready => xbar_to_m07_couplers_WREADY
    );
m08_couplers: entity work.system_v_proc_ss_0_0_m08_couplers_imp_3V6SLZ
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M08_ACLK => M08_ACLK,
      M08_ARESETN => M08_ARESETN,
      M08_AXI_araddr(8 downto 0) => M08_AXI_araddr(8 downto 0),
      M08_AXI_arready => M08_AXI_arready,
      M08_AXI_arvalid => M08_AXI_arvalid,
      M08_AXI_awaddr(8 downto 0) => M08_AXI_awaddr(8 downto 0),
      M08_AXI_awready => M08_AXI_awready,
      M08_AXI_awvalid => M08_AXI_awvalid,
      M08_AXI_bready => M08_AXI_bready,
      M08_AXI_bresp(1 downto 0) => M08_AXI_bresp(1 downto 0),
      M08_AXI_bvalid => M08_AXI_bvalid,
      M08_AXI_rdata(31 downto 0) => M08_AXI_rdata(31 downto 0),
      M08_AXI_rready => M08_AXI_rready,
      M08_AXI_rresp(1 downto 0) => M08_AXI_rresp(1 downto 0),
      M08_AXI_rvalid => M08_AXI_rvalid,
      M08_AXI_wdata(31 downto 0) => M08_AXI_wdata(31 downto 0),
      M08_AXI_wready => M08_AXI_wready,
      M08_AXI_wstrb(3 downto 0) => M08_AXI_wstrb(3 downto 0),
      M08_AXI_wvalid => M08_AXI_wvalid,
      m_axi_araddr(8 downto 0) => xbar_to_m08_couplers_ARADDR(168 downto 160),
      m_axi_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arvalid(0) => xbar_to_m08_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => xbar_to_m08_couplers_AWADDR(168 downto 160),
      m_axi_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awvalid(0) => xbar_to_m08_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m08_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m08_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wvalid(0) => xbar_to_m08_couplers_WVALID,
      s_axi_arready => xbar_to_m08_couplers_ARREADY,
      s_axi_awready => xbar_to_m08_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m08_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m08_couplers_RVALID,
      s_axi_wready => xbar_to_m08_couplers_WREADY
    );
m09_couplers: entity work.system_v_proc_ss_0_0_m09_couplers_imp_12DB9JO
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M09_ACLK => M09_ACLK,
      M09_ARESETN => M09_ARESETN,
      M09_AXI_araddr(8 downto 0) => M09_AXI_araddr(8 downto 0),
      M09_AXI_arready => M09_AXI_arready,
      M09_AXI_arvalid => M09_AXI_arvalid,
      M09_AXI_awaddr(8 downto 0) => M09_AXI_awaddr(8 downto 0),
      M09_AXI_awready => M09_AXI_awready,
      M09_AXI_awvalid => M09_AXI_awvalid,
      M09_AXI_bready => M09_AXI_bready,
      M09_AXI_bresp(1 downto 0) => M09_AXI_bresp(1 downto 0),
      M09_AXI_bvalid => M09_AXI_bvalid,
      M09_AXI_rdata(31 downto 0) => M09_AXI_rdata(31 downto 0),
      M09_AXI_rready => M09_AXI_rready,
      M09_AXI_rresp(1 downto 0) => M09_AXI_rresp(1 downto 0),
      M09_AXI_rvalid => M09_AXI_rvalid,
      M09_AXI_wdata(31 downto 0) => M09_AXI_wdata(31 downto 0),
      M09_AXI_wready => M09_AXI_wready,
      M09_AXI_wvalid => M09_AXI_wvalid,
      m_axi_araddr(8 downto 0) => xbar_to_m09_couplers_ARADDR(188 downto 180),
      m_axi_arprot(2 downto 0) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arvalid(0) => xbar_to_m09_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => xbar_to_m09_couplers_AWADDR(188 downto 180),
      m_axi_awprot(2 downto 0) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awvalid(0) => xbar_to_m09_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m09_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m09_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wvalid(0) => xbar_to_m09_couplers_WVALID,
      s_axi_arready => xbar_to_m09_couplers_ARREADY,
      s_axi_awready => xbar_to_m09_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m09_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m09_couplers_RVALID,
      s_axi_wready => xbar_to_m09_couplers_WREADY
    );
m10_couplers: entity work.system_v_proc_ss_0_0_m10_couplers_imp_1AQE5K
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M10_ACLK => M10_ACLK,
      M10_ARESETN => M10_ARESETN,
      M10_AXI_araddr(6 downto 0) => M10_AXI_araddr(6 downto 0),
      M10_AXI_arready => M10_AXI_arready,
      M10_AXI_arvalid => M10_AXI_arvalid,
      M10_AXI_awaddr(6 downto 0) => M10_AXI_awaddr(6 downto 0),
      M10_AXI_awready => M10_AXI_awready,
      M10_AXI_awvalid => M10_AXI_awvalid,
      M10_AXI_bready => M10_AXI_bready,
      M10_AXI_bresp(1 downto 0) => M10_AXI_bresp(1 downto 0),
      M10_AXI_bvalid => M10_AXI_bvalid,
      M10_AXI_rdata(31 downto 0) => M10_AXI_rdata(31 downto 0),
      M10_AXI_rready => M10_AXI_rready,
      M10_AXI_rresp(1 downto 0) => M10_AXI_rresp(1 downto 0),
      M10_AXI_rvalid => M10_AXI_rvalid,
      M10_AXI_wdata(31 downto 0) => M10_AXI_wdata(31 downto 0),
      M10_AXI_wready => M10_AXI_wready,
      M10_AXI_wstrb(3 downto 0) => M10_AXI_wstrb(3 downto 0),
      M10_AXI_wvalid => M10_AXI_wvalid,
      m_axi_araddr(6 downto 0) => xbar_to_m10_couplers_ARADDR(206 downto 200),
      m_axi_arprot(2 downto 0) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      m_axi_arvalid(0) => xbar_to_m10_couplers_ARVALID,
      m_axi_awaddr(6 downto 0) => xbar_to_m10_couplers_AWADDR(206 downto 200),
      m_axi_awprot(2 downto 0) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      m_axi_awvalid(0) => xbar_to_m10_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m10_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m10_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wstrb(3 downto 0) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wvalid(0) => xbar_to_m10_couplers_WVALID,
      s_axi_arready => xbar_to_m10_couplers_ARREADY,
      s_axi_awready => xbar_to_m10_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m10_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m10_couplers_RVALID,
      s_axi_wready => xbar_to_m10_couplers_WREADY
    );
m11_couplers: entity work.system_v_proc_ss_0_0_m11_couplers_imp_10CYW6J
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M11_ACLK => M11_ACLK,
      M11_ARESETN => M11_ARESETN,
      M11_AXI_araddr(8 downto 0) => M11_AXI_araddr(8 downto 0),
      M11_AXI_arready => M11_AXI_arready,
      M11_AXI_arvalid => M11_AXI_arvalid,
      M11_AXI_awaddr(8 downto 0) => M11_AXI_awaddr(8 downto 0),
      M11_AXI_awready => M11_AXI_awready,
      M11_AXI_awvalid => M11_AXI_awvalid,
      M11_AXI_bready => M11_AXI_bready,
      M11_AXI_bresp(1 downto 0) => M11_AXI_bresp(1 downto 0),
      M11_AXI_bvalid => M11_AXI_bvalid,
      M11_AXI_rdata(31 downto 0) => M11_AXI_rdata(31 downto 0),
      M11_AXI_rready => M11_AXI_rready,
      M11_AXI_rresp(1 downto 0) => M11_AXI_rresp(1 downto 0),
      M11_AXI_rvalid => M11_AXI_rvalid,
      M11_AXI_wdata(31 downto 0) => M11_AXI_wdata(31 downto 0),
      M11_AXI_wready => M11_AXI_wready,
      M11_AXI_wstrb(3 downto 0) => M11_AXI_wstrb(3 downto 0),
      M11_AXI_wvalid => M11_AXI_wvalid,
      m_axi_araddr(8 downto 0) => xbar_to_m11_couplers_ARADDR(228 downto 220),
      m_axi_arprot(2 downto 0) => xbar_to_m11_couplers_ARPROT(35 downto 33),
      m_axi_arvalid(0) => xbar_to_m11_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => xbar_to_m11_couplers_AWADDR(228 downto 220),
      m_axi_awprot(2 downto 0) => xbar_to_m11_couplers_AWPROT(35 downto 33),
      m_axi_awvalid(0) => xbar_to_m11_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m11_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m11_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wstrb(3 downto 0) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wvalid(0) => xbar_to_m11_couplers_WVALID,
      s_axi_arready => xbar_to_m11_couplers_ARREADY,
      s_axi_awready => xbar_to_m11_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m11_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m11_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m11_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m11_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m11_couplers_RVALID,
      s_axi_wready => xbar_to_m11_couplers_WREADY
    );
xbar: component system_v_proc_ss_0_0_bd_2d50_xbar_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(239 downto 220) => xbar_to_m11_couplers_ARADDR(239 downto 220),
      m_axi_araddr(219 downto 200) => xbar_to_m10_couplers_ARADDR(219 downto 200),
      m_axi_araddr(199 downto 180) => xbar_to_m09_couplers_ARADDR(199 downto 180),
      m_axi_araddr(179 downto 160) => xbar_to_m08_couplers_ARADDR(179 downto 160),
      m_axi_araddr(159 downto 140) => xbar_to_m07_couplers_ARADDR(159 downto 140),
      m_axi_araddr(139 downto 120) => xbar_to_m06_couplers_ARADDR(139 downto 120),
      m_axi_araddr(119 downto 100) => xbar_to_m05_couplers_ARADDR(119 downto 100),
      m_axi_araddr(99 downto 80) => xbar_to_m04_couplers_ARADDR(99 downto 80),
      m_axi_araddr(79 downto 60) => xbar_to_m03_couplers_ARADDR(79 downto 60),
      m_axi_araddr(59 downto 40) => xbar_to_m02_couplers_ARADDR(59 downto 40),
      m_axi_araddr(39 downto 20) => xbar_to_m01_couplers_ARADDR(39 downto 20),
      m_axi_araddr(19 downto 0) => M00_AXI_araddr(19 downto 0),
      m_axi_arprot(35 downto 33) => xbar_to_m11_couplers_ARPROT(35 downto 33),
      m_axi_arprot(32 downto 30) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY,
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => M00_AXI_arready,
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID,
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID,
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID,
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID,
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID,
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID,
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID,
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID,
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID,
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID,
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID,
      m_axi_arvalid(0) => M00_AXI_arvalid,
      m_axi_awaddr(239 downto 220) => xbar_to_m11_couplers_AWADDR(239 downto 220),
      m_axi_awaddr(219 downto 200) => xbar_to_m10_couplers_AWADDR(219 downto 200),
      m_axi_awaddr(199 downto 180) => xbar_to_m09_couplers_AWADDR(199 downto 180),
      m_axi_awaddr(179 downto 160) => xbar_to_m08_couplers_AWADDR(179 downto 160),
      m_axi_awaddr(159 downto 140) => xbar_to_m07_couplers_AWADDR(159 downto 140),
      m_axi_awaddr(139 downto 120) => xbar_to_m06_couplers_AWADDR(139 downto 120),
      m_axi_awaddr(119 downto 100) => xbar_to_m05_couplers_AWADDR(119 downto 100),
      m_axi_awaddr(99 downto 80) => xbar_to_m04_couplers_AWADDR(99 downto 80),
      m_axi_awaddr(79 downto 60) => xbar_to_m03_couplers_AWADDR(79 downto 60),
      m_axi_awaddr(59 downto 40) => xbar_to_m02_couplers_AWADDR(59 downto 40),
      m_axi_awaddr(39 downto 20) => xbar_to_m01_couplers_AWADDR(39 downto 20),
      m_axi_awaddr(19 downto 0) => M00_AXI_awaddr(19 downto 0),
      m_axi_awprot(35 downto 33) => xbar_to_m11_couplers_AWPROT(35 downto 33),
      m_axi_awprot(32 downto 30) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY,
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => M00_AXI_awready,
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID,
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID,
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID,
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID,
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID,
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID,
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID,
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID,
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID,
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID,
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID,
      m_axi_awvalid(0) => M00_AXI_awvalid,
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY,
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY,
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY,
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY,
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY,
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY,
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY,
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY,
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY,
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY,
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY,
      m_axi_bready(0) => M00_AXI_bready,
      m_axi_bresp(23 downto 22) => xbar_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID,
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => M00_AXI_bvalid,
      m_axi_rdata(383 downto 352) => xbar_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY,
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY,
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY,
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY,
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY,
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY,
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY,
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY,
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY,
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY,
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY,
      m_axi_rready(0) => M00_AXI_rready,
      m_axi_rresp(23 downto 22) => xbar_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID,
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => M00_AXI_rvalid,
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY,
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => M00_AXI_wready,
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID,
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID,
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID,
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID,
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID,
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID,
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID,
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID,
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID,
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID,
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID,
      m_axi_wvalid(0) => M00_AXI_wvalid,
      s_axi_araddr(19 downto 0) => S00_AXI_araddr(19 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready(0) => S00_AXI_arready(0),
      s_axi_arvalid(0) => S00_AXI_arvalid(0),
      s_axi_awaddr(19 downto 0) => S00_AXI_awaddr(19 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready(0) => S00_AXI_awready(0),
      s_axi_awvalid(0) => S00_AXI_awvalid(0),
      s_axi_bready(0) => S00_AXI_bready(0),
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid(0) => S00_AXI_bvalid(0),
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready(0) => S00_AXI_rready(0),
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid(0) => S00_AXI_rvalid(0),
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready(0) => S00_AXI_wready(0),
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid(0) => S00_AXI_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_bd_2d50_axi_interconnect_1_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_axi_interconnect_1_0 is
  component system_v_proc_ss_0_0_bd_2d50_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 767 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 767 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_xbar_2;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 767 downto 512 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 256 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3";
begin
s00_couplers: entity work.system_v_proc_ss_0_0_s00_couplers_imp_1VGAQIZ
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      m_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      m_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_couplers_to_xbar_ARVALID,
      m_axi_rready => s00_couplers_to_xbar_RREADY,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_rdata(255 downto 0) => s00_couplers_to_xbar_RDATA(255 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID
    );
s01_couplers: entity work.system_v_proc_ss_0_0_s01_couplers_imp_WE1KEG
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S01_AXI_awaddr(31 downto 0) => S01_AXI_awaddr(31 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awready => S01_AXI_awready,
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid => S01_AXI_awvalid,
      S01_AXI_bready => S01_AXI_bready,
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid => S01_AXI_bvalid,
      S01_AXI_wdata(63 downto 0) => S01_AXI_wdata(63 downto 0),
      S01_AXI_wlast => S01_AXI_wlast,
      S01_AXI_wready => S01_AXI_wready,
      S01_AXI_wstrb(7 downto 0) => S01_AXI_wstrb(7 downto 0),
      S01_AXI_wvalid => S01_AXI_wvalid,
      m_axi_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_couplers_to_xbar_AWLOCK,
      m_axi_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_couplers_to_xbar_AWVALID,
      m_axi_bready => s01_couplers_to_xbar_BREADY,
      m_axi_wdata(255 downto 0) => s01_couplers_to_xbar_WDATA(255 downto 0),
      m_axi_wlast => s01_couplers_to_xbar_WLAST,
      m_axi_wstrb(31 downto 0) => s01_couplers_to_xbar_WSTRB(31 downto 0),
      m_axi_wvalid => s01_couplers_to_xbar_WVALID,
      s_axi_awready(0) => s01_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bvalid(0) => s01_couplers_to_xbar_BVALID,
      s_axi_wready(0) => s01_couplers_to_xbar_WREADY
    );
s02_couplers: entity work.system_v_proc_ss_0_0_s02_couplers_imp_AV1SZW
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S02_AXI_araddr(31 downto 0) => S02_AXI_araddr(31 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready => S02_AXI_arready,
      S02_AXI_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid => S02_AXI_arvalid,
      S02_AXI_awaddr(31 downto 0) => S02_AXI_awaddr(31 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S02_AXI_awlock(0) => S02_AXI_awlock(0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S02_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S02_AXI_awready => S02_AXI_awready,
      S02_AXI_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      S02_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S02_AXI_awvalid => S02_AXI_awvalid,
      S02_AXI_bready => S02_AXI_bready,
      S02_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S02_AXI_bvalid => S02_AXI_bvalid,
      S02_AXI_rdata(31 downto 0) => S02_AXI_rdata(31 downto 0),
      S02_AXI_rlast => S02_AXI_rlast,
      S02_AXI_rready => S02_AXI_rready,
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid => S02_AXI_rvalid,
      S02_AXI_wdata(31 downto 0) => S02_AXI_wdata(31 downto 0),
      S02_AXI_wlast => S02_AXI_wlast,
      S02_AXI_wready => S02_AXI_wready,
      S02_AXI_wstrb(3 downto 0) => S02_AXI_wstrb(3 downto 0),
      S02_AXI_wvalid => S02_AXI_wvalid,
      m_axi_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      m_axi_arlock(0) => s02_couplers_to_xbar_ARLOCK,
      m_axi_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      m_axi_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      m_axi_arvalid => s02_couplers_to_xbar_ARVALID,
      m_axi_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      m_axi_awlock(0) => s02_couplers_to_xbar_AWLOCK,
      m_axi_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      m_axi_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      m_axi_awvalid => s02_couplers_to_xbar_AWVALID,
      m_axi_bready => s02_couplers_to_xbar_BREADY,
      m_axi_rready => s02_couplers_to_xbar_RREADY,
      m_axi_wdata(255 downto 0) => s02_couplers_to_xbar_WDATA(255 downto 0),
      m_axi_wlast => s02_couplers_to_xbar_WLAST,
      m_axi_wstrb(31 downto 0) => s02_couplers_to_xbar_WSTRB(31 downto 0),
      m_axi_wvalid => s02_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s02_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s02_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bvalid(0) => s02_couplers_to_xbar_BVALID,
      s_axi_rdata(255 downto 0) => s02_couplers_to_xbar_RDATA(767 downto 512),
      s_axi_rlast(0) => s02_couplers_to_xbar_RLAST,
      s_axi_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rvalid(0) => s02_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s02_couplers_to_xbar_WREADY
    );
xbar: component system_v_proc_ss_0_0_bd_2d50_xbar_2
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arid(1 downto 0) => M00_AXI_arid(1 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready(0) => M00_AXI_arready(0),
      m_axi_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid(0) => M00_AXI_arvalid(0),
      m_axi_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awid(1 downto 0) => M00_AXI_awid(1 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready(0) => M00_AXI_awready(0),
      m_axi_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid(0) => M00_AXI_awvalid(0),
      m_axi_bid(1 downto 0) => M00_AXI_bid(1 downto 0),
      m_axi_bready(0) => M00_AXI_bready(0),
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(0) => M00_AXI_bvalid(0),
      m_axi_rdata(255 downto 0) => M00_AXI_rdata(255 downto 0),
      m_axi_rid(1 downto 0) => M00_AXI_rid(1 downto 0),
      m_axi_rlast(0) => M00_AXI_rlast(0),
      m_axi_rready(0) => M00_AXI_rready(0),
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(0) => M00_AXI_rvalid(0),
      m_axi_wdata(255 downto 0) => M00_AXI_wdata(255 downto 0),
      m_axi_wlast(0) => M00_AXI_wlast(0),
      m_axi_wready(0) => M00_AXI_wready(0),
      m_axi_wstrb(31 downto 0) => M00_AXI_wstrb(31 downto 0),
      m_axi_wvalid(0) => M00_AXI_wvalid(0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK,
      s_axi_arlock(1) => '0',
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => B"0000",
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY,
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => B"100",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK,
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => '0',
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY,
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY,
      s_axi_awready(0) => NLW_xbar_s_axi_awready_UNCONNECTED(0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => B"101",
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => '0',
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => '0',
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => NLW_xbar_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID,
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID,
      s_axi_bvalid(0) => NLW_xbar_s_axi_bvalid_UNCONNECTED(0),
      s_axi_rdata(767 downto 512) => s02_couplers_to_xbar_RDATA(767 downto 512),
      s_axi_rdata(511 downto 256) => NLW_xbar_s_axi_rdata_UNCONNECTED(511 downto 256),
      s_axi_rdata(255 downto 0) => s00_couplers_to_xbar_RDATA(255 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST,
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID,
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(767 downto 512) => s02_couplers_to_xbar_WDATA(255 downto 0),
      s_axi_wdata(511 downto 256) => s01_couplers_to_xbar_WDATA(255 downto 0),
      s_axi_wdata(255 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => '0',
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY,
      s_axi_wready(0) => NLW_xbar_s_axi_wready_UNCONNECTED(0),
      s_axi_wstrb(95 downto 64) => s02_couplers_to_xbar_WSTRB(31 downto 0),
      s_axi_wstrb(63 downto 32) => s01_couplers_to_xbar_WSTRB(31 downto 0),
      s_axi_wstrb(31 downto 0) => B"11111111111111111111111111111111",
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50_video_router_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_ACLK : in STD_LOGIC;
    M01_AXIS_ARESETN : in STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_ACLK : in STD_LOGIC;
    M02_AXIS_ARESETN : in STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M02_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC;
    M02_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_ACLK : in STD_LOGIC;
    M03_AXIS_ARESETN : in STD_LOGIC;
    M03_AXIS_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    M03_AXIS_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M03_AXIS_tlast : out STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    M03_AXIS_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M03_AXIS_tvalid : out STD_LOGIC;
    M04_AXIS_ACLK : in STD_LOGIC;
    M04_AXIS_ARESETN : in STD_LOGIC;
    M04_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M04_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tlast : out STD_LOGIC;
    M04_AXIS_tready : in STD_LOGIC;
    M04_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tvalid : out STD_LOGIC;
    M05_AXIS_ACLK : in STD_LOGIC;
    M05_AXIS_ARESETN : in STD_LOGIC;
    M05_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M05_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tready : in STD_LOGIC;
    M05_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXIS_tvalid : out STD_LOGIC;
    M06_AXIS_ACLK : in STD_LOGIC;
    M06_AXIS_ARESETN : in STD_LOGIC;
    M06_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M06_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tready : in STD_LOGIC;
    M06_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXIS_tvalid : out STD_LOGIC;
    M07_AXIS_ACLK : in STD_LOGIC;
    M07_AXIS_ARESETN : in STD_LOGIC;
    M07_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M07_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tready : in STD_LOGIC;
    M07_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXIS_tvalid : out STD_LOGIC;
    M08_AXIS_ACLK : in STD_LOGIC;
    M08_AXIS_ARESETN : in STD_LOGIC;
    M08_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M08_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tlast : out STD_LOGIC;
    M08_AXIS_tready : in STD_LOGIC;
    M08_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tvalid : out STD_LOGIC;
    M09_AXIS_ACLK : in STD_LOGIC;
    M09_AXIS_ARESETN : in STD_LOGIC;
    M09_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M09_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXIS_tlast : out STD_LOGIC;
    M09_AXIS_tready : in STD_LOGIC;
    M09_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXIS_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_ACLK : in STD_LOGIC;
    S02_AXIS_ARESETN : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXIS_ACLK : in STD_LOGIC;
    S03_AXIS_ARESETN : in STD_LOGIC;
    S03_AXIS_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    S03_AXIS_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S03_AXIS_tlast : in STD_LOGIC;
    S03_AXIS_tready : out STD_LOGIC;
    S03_AXIS_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S03_AXIS_tvalid : in STD_LOGIC;
    S04_AXIS_ACLK : in STD_LOGIC;
    S04_AXIS_ARESETN : in STD_LOGIC;
    S04_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S04_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_ACLK : in STD_LOGIC;
    S05_AXIS_ARESETN : in STD_LOGIC;
    S05_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S05_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tready : out STD_LOGIC;
    S05_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tvalid : in STD_LOGIC;
    S06_AXIS_ACLK : in STD_LOGIC;
    S06_AXIS_ARESETN : in STD_LOGIC;
    S06_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S06_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXIS_tready : out STD_LOGIC;
    S06_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXIS_tvalid : in STD_LOGIC;
    S07_AXIS_ACLK : in STD_LOGIC;
    S07_AXIS_ARESETN : in STD_LOGIC;
    S07_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S07_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXIS_tready : out STD_LOGIC;
    S07_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXIS_tvalid : in STD_LOGIC;
    S08_AXIS_ACLK : in STD_LOGIC;
    S08_AXIS_ARESETN : in STD_LOGIC;
    S08_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S08_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S09_AXIS_ACLK : in STD_LOGIC;
    S09_AXIS_ARESETN : in STD_LOGIC;
    S09_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S09_AXIS_tdest : in STD_LOGIC;
    S09_AXIS_tid : in STD_LOGIC;
    S09_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXIS_tlast : in STD_LOGIC;
    S09_AXIS_tready : out STD_LOGIC;
    S09_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXIS_tuser : in STD_LOGIC;
    S09_AXIS_tvalid : in STD_LOGIC;
    S_AXI_CTRL_ACLK : in STD_LOGIC;
    S_AXI_CTRL_ARESETN : in STD_LOGIC;
    S_AXI_CTRL_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S_AXI_CTRL_arready : out STD_LOGIC;
    S_AXI_CTRL_arvalid : in STD_LOGIC;
    S_AXI_CTRL_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S_AXI_CTRL_awready : out STD_LOGIC;
    S_AXI_CTRL_awvalid : in STD_LOGIC;
    S_AXI_CTRL_bready : in STD_LOGIC;
    S_AXI_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_bvalid : out STD_LOGIC;
    S_AXI_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_rready : in STD_LOGIC;
    S_AXI_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_rvalid : out STD_LOGIC;
    S_AXI_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_wready : out STD_LOGIC;
    S_AXI_CTRL_wvalid : in STD_LOGIC
  );
end system_v_proc_ss_0_0_bd_2d50_video_router_0;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50_video_router_0 is
  component system_v_proc_ss_0_0_bd_2d50_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 239 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_xbar_1;
  signal s03_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s03_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s03_couplers_to_xbar_TID : STD_LOGIC;
  signal s03_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_TUSER : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s09_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s09_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s09_couplers_to_xbar_TID : STD_LOGIC;
  signal s09_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s09_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s09_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s09_couplers_to_xbar_TUSER : STD_LOGIC;
  signal s09_couplers_to_xbar_TVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m00_couplers_TID : STD_LOGIC;
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TUSER : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal xbar_to_m01_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m01_couplers_TID : STD_LOGIC;
  signal xbar_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_TSTRB : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TUSER : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_TDATA : STD_LOGIC_VECTOR ( 71 downto 48 );
  signal xbar_to_m02_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m02_couplers_TID : STD_LOGIC;
  signal xbar_to_m02_couplers_TKEEP : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_TSTRB : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TUSER : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_TDATA : STD_LOGIC_VECTOR ( 95 downto 72 );
  signal xbar_to_m03_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m03_couplers_TID : STD_LOGIC;
  signal xbar_to_m03_couplers_TKEEP : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_TSTRB : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_TUSER : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_TDATA : STD_LOGIC_VECTOR ( 119 downto 96 );
  signal xbar_to_m04_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m04_couplers_TID : STD_LOGIC;
  signal xbar_to_m04_couplers_TKEEP : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_TSTRB : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TUSER : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_TDATA : STD_LOGIC_VECTOR ( 143 downto 120 );
  signal xbar_to_m05_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m05_couplers_TID : STD_LOGIC;
  signal xbar_to_m05_couplers_TKEEP : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_TSTRB : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TUSER : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_TDATA : STD_LOGIC_VECTOR ( 167 downto 144 );
  signal xbar_to_m06_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m06_couplers_TID : STD_LOGIC;
  signal xbar_to_m06_couplers_TKEEP : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_TSTRB : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TUSER : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_TDATA : STD_LOGIC_VECTOR ( 191 downto 168 );
  signal xbar_to_m07_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m07_couplers_TID : STD_LOGIC;
  signal xbar_to_m07_couplers_TKEEP : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_TSTRB : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TUSER : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_TDATA : STD_LOGIC_VECTOR ( 215 downto 192 );
  signal xbar_to_m08_couplers_TDEST : STD_LOGIC;
  signal xbar_to_m08_couplers_TID : STD_LOGIC;
  signal xbar_to_m08_couplers_TKEEP : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m08_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_TSTRB : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TUSER : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axis_switch_v1_1_18_axis_switch,Vivado 2018.3";
begin
m00_couplers: entity work.system_v_proc_ss_0_0_m00_couplers_imp_CV42HO
     port map (
      M00_AXIS_ACLK => M00_AXIS_ACLK,
      M00_AXIS_ARESETN => M00_AXIS_ARESETN,
      M00_AXIS_tdata(23 downto 0) => M00_AXIS_tdata(23 downto 0),
      M00_AXIS_tdest(0) => M00_AXIS_tdest(0),
      M00_AXIS_tid(0) => M00_AXIS_tid(0),
      M00_AXIS_tkeep(2 downto 0) => M00_AXIS_tkeep(2 downto 0),
      M00_AXIS_tlast => M00_AXIS_tlast,
      M00_AXIS_tready => M00_AXIS_tready,
      M00_AXIS_tstrb(2 downto 0) => M00_AXIS_tstrb(2 downto 0),
      M00_AXIS_tuser(2 downto 0) => M00_AXIS_tuser(2 downto 0),
      M00_AXIS_tvalid => M00_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m00_couplers_TDATA(23 downto 0),
      m_axis_tdest(0) => xbar_to_m00_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m00_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m00_couplers_TKEEP(2 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m00_couplers_TSTRB(2 downto 0),
      m_axis_tuser(2 downto 0) => xbar_to_m00_couplers_TUSER(2 downto 0),
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID,
      s_axis_tready => xbar_to_m00_couplers_TREADY
    );
m01_couplers: entity work.system_v_proc_ss_0_0_m01_couplers_imp_1B5X6FZ
     port map (
      M01_AXIS_ACLK => M01_AXIS_ACLK,
      M01_AXIS_ARESETN => M01_AXIS_ARESETN,
      M01_AXIS_tdata(23 downto 0) => M01_AXIS_tdata(23 downto 0),
      M01_AXIS_tdest(0) => M01_AXIS_tdest(0),
      M01_AXIS_tid(0) => M01_AXIS_tid(0),
      M01_AXIS_tkeep(2 downto 0) => M01_AXIS_tkeep(2 downto 0),
      M01_AXIS_tlast => M01_AXIS_tlast,
      M01_AXIS_tready => M01_AXIS_tready,
      M01_AXIS_tstrb(2 downto 0) => M01_AXIS_tstrb(2 downto 0),
      M01_AXIS_tuser(2 downto 0) => M01_AXIS_tuser(2 downto 0),
      M01_AXIS_tvalid => M01_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m01_couplers_TDATA(47 downto 24),
      m_axis_tdest(0) => xbar_to_m01_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m01_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m01_couplers_TKEEP(5 downto 3),
      m_axis_tlast(0) => xbar_to_m01_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m01_couplers_TSTRB(5 downto 3),
      m_axis_tuser(2 downto 0) => xbar_to_m01_couplers_TUSER(5 downto 3),
      m_axis_tvalid(0) => xbar_to_m01_couplers_TVALID,
      s_axis_tready => xbar_to_m01_couplers_TREADY
    );
m02_couplers: entity work.system_v_proc_ss_0_0_m02_couplers_imp_1XGZGWR
     port map (
      M02_AXIS_ACLK => M02_AXIS_ACLK,
      M02_AXIS_ARESETN => M02_AXIS_ARESETN,
      M02_AXIS_tdata(23 downto 0) => M02_AXIS_tdata(23 downto 0),
      M02_AXIS_tdest(0) => M02_AXIS_tdest(0),
      M02_AXIS_tid(0) => M02_AXIS_tid(0),
      M02_AXIS_tkeep(2 downto 0) => M02_AXIS_tkeep(2 downto 0),
      M02_AXIS_tlast => M02_AXIS_tlast,
      M02_AXIS_tready => M02_AXIS_tready,
      M02_AXIS_tstrb(2 downto 0) => M02_AXIS_tstrb(2 downto 0),
      M02_AXIS_tuser(2 downto 0) => M02_AXIS_tuser(2 downto 0),
      M02_AXIS_tvalid => M02_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m02_couplers_TDATA(71 downto 48),
      m_axis_tdest(0) => xbar_to_m02_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m02_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m02_couplers_TKEEP(8 downto 6),
      m_axis_tlast(0) => xbar_to_m02_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m02_couplers_TSTRB(8 downto 6),
      m_axis_tuser(2 downto 0) => xbar_to_m02_couplers_TUSER(8 downto 6),
      m_axis_tvalid(0) => xbar_to_m02_couplers_TVALID,
      s_axis_tready => xbar_to_m02_couplers_TREADY
    );
m03_couplers: entity work.system_v_proc_ss_0_0_m03_couplers_imp_YWD7H4
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M03_AXIS_ACLK => M03_AXIS_ACLK,
      M03_AXIS_ARESETN => M03_AXIS_ARESETN,
      M03_AXIS_tdata(47 downto 0) => M03_AXIS_tdata(47 downto 0),
      M03_AXIS_tkeep(5 downto 0) => M03_AXIS_tkeep(5 downto 0),
      M03_AXIS_tlast => M03_AXIS_tlast,
      M03_AXIS_tready => M03_AXIS_tready,
      M03_AXIS_tuser(5 downto 0) => M03_AXIS_tuser(5 downto 0),
      M03_AXIS_tvalid => M03_AXIS_tvalid,
      S_AXIS_tdata(23 downto 0) => xbar_to_m03_couplers_TDATA(95 downto 72),
      S_AXIS_tdest(0) => xbar_to_m03_couplers_TDEST,
      S_AXIS_tid(0) => xbar_to_m03_couplers_TID,
      S_AXIS_tkeep(2 downto 0) => xbar_to_m03_couplers_TKEEP(11 downto 9),
      S_AXIS_tlast => xbar_to_m03_couplers_TLAST,
      S_AXIS_tready => xbar_to_m03_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m03_couplers_TSTRB(11 downto 9),
      S_AXIS_tuser(2 downto 0) => xbar_to_m03_couplers_TUSER(11 downto 9),
      S_AXIS_tvalid => xbar_to_m03_couplers_TVALID
    );
m04_couplers: entity work.system_v_proc_ss_0_0_m04_couplers_imp_PW9X03
     port map (
      M04_AXIS_ACLK => M04_AXIS_ACLK,
      M04_AXIS_ARESETN => M04_AXIS_ARESETN,
      M04_AXIS_tdata(23 downto 0) => M04_AXIS_tdata(23 downto 0),
      M04_AXIS_tdest(0) => M04_AXIS_tdest(0),
      M04_AXIS_tid(0) => M04_AXIS_tid(0),
      M04_AXIS_tkeep(2 downto 0) => M04_AXIS_tkeep(2 downto 0),
      M04_AXIS_tlast => M04_AXIS_tlast,
      M04_AXIS_tready => M04_AXIS_tready,
      M04_AXIS_tstrb(2 downto 0) => M04_AXIS_tstrb(2 downto 0),
      M04_AXIS_tuser(2 downto 0) => M04_AXIS_tuser(2 downto 0),
      M04_AXIS_tvalid => M04_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m04_couplers_TDATA(119 downto 96),
      m_axis_tdest(0) => xbar_to_m04_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m04_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m04_couplers_TKEEP(14 downto 12),
      m_axis_tlast(0) => xbar_to_m04_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m04_couplers_TSTRB(14 downto 12),
      m_axis_tuser(2 downto 0) => xbar_to_m04_couplers_TUSER(14 downto 12),
      m_axis_tvalid(0) => xbar_to_m04_couplers_TVALID,
      s_axis_tready => xbar_to_m04_couplers_TREADY
    );
m05_couplers: entity work.system_v_proc_ss_0_0_m05_couplers_imp_1OR26FK
     port map (
      M05_AXIS_ACLK => M05_AXIS_ACLK,
      M05_AXIS_ARESETN => M05_AXIS_ARESETN,
      M05_AXIS_tdata(23 downto 0) => M05_AXIS_tdata(23 downto 0),
      M05_AXIS_tdest(0) => M05_AXIS_tdest(0),
      M05_AXIS_tid(0) => M05_AXIS_tid(0),
      M05_AXIS_tkeep(2 downto 0) => M05_AXIS_tkeep(2 downto 0),
      M05_AXIS_tlast(0) => M05_AXIS_tlast(0),
      M05_AXIS_tready => M05_AXIS_tready,
      M05_AXIS_tstrb(2 downto 0) => M05_AXIS_tstrb(2 downto 0),
      M05_AXIS_tuser(2 downto 0) => M05_AXIS_tuser(2 downto 0),
      M05_AXIS_tvalid => M05_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m05_couplers_TDATA(143 downto 120),
      m_axis_tdest(0) => xbar_to_m05_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m05_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m05_couplers_TKEEP(17 downto 15),
      m_axis_tlast(0) => xbar_to_m05_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m05_couplers_TSTRB(17 downto 15),
      m_axis_tuser(2 downto 0) => xbar_to_m05_couplers_TUSER(17 downto 15),
      m_axis_tvalid(0) => xbar_to_m05_couplers_TVALID,
      s_axis_tready => xbar_to_m05_couplers_TREADY
    );
m06_couplers: entity work.system_v_proc_ss_0_0_m06_couplers_imp_124KRDG
     port map (
      M06_AXIS_ACLK => M06_AXIS_ACLK,
      M06_AXIS_ARESETN => M06_AXIS_ARESETN,
      M06_AXIS_tdata(23 downto 0) => M06_AXIS_tdata(23 downto 0),
      M06_AXIS_tdest(0) => M06_AXIS_tdest(0),
      M06_AXIS_tid(0) => M06_AXIS_tid(0),
      M06_AXIS_tkeep(2 downto 0) => M06_AXIS_tkeep(2 downto 0),
      M06_AXIS_tlast(0) => M06_AXIS_tlast(0),
      M06_AXIS_tready => M06_AXIS_tready,
      M06_AXIS_tstrb(2 downto 0) => M06_AXIS_tstrb(2 downto 0),
      M06_AXIS_tuser(2 downto 0) => M06_AXIS_tuser(2 downto 0),
      M06_AXIS_tvalid => M06_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m06_couplers_TDATA(167 downto 144),
      m_axis_tdest(0) => xbar_to_m06_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m06_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m06_couplers_TKEEP(20 downto 18),
      m_axis_tlast(0) => xbar_to_m06_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m06_couplers_TSTRB(20 downto 18),
      m_axis_tuser(2 downto 0) => xbar_to_m06_couplers_TUSER(20 downto 18),
      m_axis_tvalid(0) => xbar_to_m06_couplers_TVALID,
      s_axis_tready => xbar_to_m06_couplers_TREADY
    );
m07_couplers: entity work.system_v_proc_ss_0_0_m07_couplers_imp_43XNMF
     port map (
      M07_AXIS_ACLK => M07_AXIS_ACLK,
      M07_AXIS_ARESETN => M07_AXIS_ARESETN,
      M07_AXIS_tdata(23 downto 0) => M07_AXIS_tdata(23 downto 0),
      M07_AXIS_tdest(0) => M07_AXIS_tdest(0),
      M07_AXIS_tid(0) => M07_AXIS_tid(0),
      M07_AXIS_tkeep(2 downto 0) => M07_AXIS_tkeep(2 downto 0),
      M07_AXIS_tlast(0) => M07_AXIS_tlast(0),
      M07_AXIS_tready => M07_AXIS_tready,
      M07_AXIS_tstrb(2 downto 0) => M07_AXIS_tstrb(2 downto 0),
      M07_AXIS_tuser(2 downto 0) => M07_AXIS_tuser(2 downto 0),
      M07_AXIS_tvalid => M07_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m07_couplers_TDATA(191 downto 168),
      m_axis_tdest(0) => xbar_to_m07_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m07_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m07_couplers_TKEEP(23 downto 21),
      m_axis_tlast(0) => xbar_to_m07_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m07_couplers_TSTRB(23 downto 21),
      m_axis_tuser(2 downto 0) => xbar_to_m07_couplers_TUSER(23 downto 21),
      m_axis_tvalid(0) => xbar_to_m07_couplers_TVALID,
      s_axis_tready => xbar_to_m07_couplers_TREADY
    );
m08_couplers: entity work.system_v_proc_ss_0_0_m08_couplers_imp_1JKRG8Y
     port map (
      M08_AXIS_ACLK => M08_AXIS_ACLK,
      M08_AXIS_ARESETN => M08_AXIS_ARESETN,
      M08_AXIS_tdata(23 downto 0) => M08_AXIS_tdata(23 downto 0),
      M08_AXIS_tdest(0) => M08_AXIS_tdest(0),
      M08_AXIS_tid(0) => M08_AXIS_tid(0),
      M08_AXIS_tkeep(2 downto 0) => M08_AXIS_tkeep(2 downto 0),
      M08_AXIS_tlast => M08_AXIS_tlast,
      M08_AXIS_tready => M08_AXIS_tready,
      M08_AXIS_tstrb(2 downto 0) => M08_AXIS_tstrb(2 downto 0),
      M08_AXIS_tuser(2 downto 0) => M08_AXIS_tuser(2 downto 0),
      M08_AXIS_tvalid => M08_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m08_couplers_TDATA(215 downto 192),
      m_axis_tdest(0) => xbar_to_m08_couplers_TDEST,
      m_axis_tid(0) => xbar_to_m08_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m08_couplers_TKEEP(26 downto 24),
      m_axis_tlast(0) => xbar_to_m08_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m08_couplers_TSTRB(26 downto 24),
      m_axis_tuser(2 downto 0) => xbar_to_m08_couplers_TUSER(26 downto 24),
      m_axis_tvalid(0) => xbar_to_m08_couplers_TVALID,
      s_axis_tready => xbar_to_m08_couplers_TREADY
    );
s03_couplers: entity work.system_v_proc_ss_0_0_s03_couplers_imp_1XMVDZ8
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_AXIS_tdata(23 downto 0) => s03_couplers_to_xbar_TDATA(23 downto 0),
      M_AXIS_tdest(0) => s03_couplers_to_xbar_TDEST,
      M_AXIS_tid(0) => s03_couplers_to_xbar_TID,
      M_AXIS_tkeep(2 downto 0) => s03_couplers_to_xbar_TKEEP(2 downto 0),
      M_AXIS_tlast => s03_couplers_to_xbar_TLAST,
      M_AXIS_tready => s03_couplers_to_xbar_TREADY,
      M_AXIS_tstrb(2 downto 0) => s03_couplers_to_xbar_TSTRB(2 downto 0),
      M_AXIS_tuser(2 downto 0) => s03_couplers_to_xbar_TUSER(2 downto 0),
      M_AXIS_tvalid => s03_couplers_to_xbar_TVALID,
      S03_AXIS_ACLK => S03_AXIS_ACLK,
      S03_AXIS_ARESETN => S03_AXIS_ARESETN,
      S03_AXIS_tdata(47 downto 0) => S03_AXIS_tdata(47 downto 0),
      S03_AXIS_tkeep(5 downto 0) => S03_AXIS_tkeep(5 downto 0),
      S03_AXIS_tlast => S03_AXIS_tlast,
      S03_AXIS_tready => S03_AXIS_tready,
      S03_AXIS_tuser(5 downto 0) => S03_AXIS_tuser(5 downto 0),
      S03_AXIS_tvalid => S03_AXIS_tvalid
    );
s09_couplers: entity work.system_v_proc_ss_0_0_s09_couplers_imp_1JQ1MFX
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S09_AXIS_ACLK => S09_AXIS_ACLK,
      S09_AXIS_ARESETN => S09_AXIS_ARESETN,
      S09_AXIS_tdata(23 downto 0) => S09_AXIS_tdata(23 downto 0),
      S09_AXIS_tdest => S09_AXIS_tdest,
      S09_AXIS_tid => S09_AXIS_tid,
      S09_AXIS_tkeep(2 downto 0) => S09_AXIS_tkeep(2 downto 0),
      S09_AXIS_tlast => S09_AXIS_tlast,
      S09_AXIS_tready => S09_AXIS_tready,
      S09_AXIS_tstrb(2 downto 0) => S09_AXIS_tstrb(2 downto 0),
      S09_AXIS_tuser => S09_AXIS_tuser,
      S09_AXIS_tvalid => S09_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => s09_couplers_to_xbar_TDATA(23 downto 0),
      m_axis_tdest(0) => s09_couplers_to_xbar_TDEST,
      m_axis_tid(0) => s09_couplers_to_xbar_TID,
      m_axis_tkeep(2 downto 0) => s09_couplers_to_xbar_TKEEP(2 downto 0),
      m_axis_tlast => s09_couplers_to_xbar_TLAST,
      m_axis_tstrb(2 downto 0) => s09_couplers_to_xbar_TSTRB(2 downto 0),
      m_axis_tuser(0) => s09_couplers_to_xbar_TUSER,
      m_axis_tvalid => s09_couplers_to_xbar_TVALID,
      s_axis_tready(0) => s09_couplers_to_xbar_TREADY
    );
xbar: component system_v_proc_ss_0_0_bd_2d50_xbar_1
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(239 downto 216) => M09_AXIS_tdata(23 downto 0),
      m_axis_tdata(215 downto 192) => xbar_to_m08_couplers_TDATA(215 downto 192),
      m_axis_tdata(191 downto 168) => xbar_to_m07_couplers_TDATA(191 downto 168),
      m_axis_tdata(167 downto 144) => xbar_to_m06_couplers_TDATA(167 downto 144),
      m_axis_tdata(143 downto 120) => xbar_to_m05_couplers_TDATA(143 downto 120),
      m_axis_tdata(119 downto 96) => xbar_to_m04_couplers_TDATA(119 downto 96),
      m_axis_tdata(95 downto 72) => xbar_to_m03_couplers_TDATA(95 downto 72),
      m_axis_tdata(71 downto 48) => xbar_to_m02_couplers_TDATA(71 downto 48),
      m_axis_tdata(47 downto 24) => xbar_to_m01_couplers_TDATA(47 downto 24),
      m_axis_tdata(23 downto 0) => xbar_to_m00_couplers_TDATA(23 downto 0),
      m_axis_tdest(9) => M09_AXIS_tdest(0),
      m_axis_tdest(8) => xbar_to_m08_couplers_TDEST,
      m_axis_tdest(7) => xbar_to_m07_couplers_TDEST,
      m_axis_tdest(6) => xbar_to_m06_couplers_TDEST,
      m_axis_tdest(5) => xbar_to_m05_couplers_TDEST,
      m_axis_tdest(4) => xbar_to_m04_couplers_TDEST,
      m_axis_tdest(3) => xbar_to_m03_couplers_TDEST,
      m_axis_tdest(2) => xbar_to_m02_couplers_TDEST,
      m_axis_tdest(1) => xbar_to_m01_couplers_TDEST,
      m_axis_tdest(0) => xbar_to_m00_couplers_TDEST,
      m_axis_tid(9) => M09_AXIS_tid(0),
      m_axis_tid(8) => xbar_to_m08_couplers_TID,
      m_axis_tid(7) => xbar_to_m07_couplers_TID,
      m_axis_tid(6) => xbar_to_m06_couplers_TID,
      m_axis_tid(5) => xbar_to_m05_couplers_TID,
      m_axis_tid(4) => xbar_to_m04_couplers_TID,
      m_axis_tid(3) => xbar_to_m03_couplers_TID,
      m_axis_tid(2) => xbar_to_m02_couplers_TID,
      m_axis_tid(1) => xbar_to_m01_couplers_TID,
      m_axis_tid(0) => xbar_to_m00_couplers_TID,
      m_axis_tkeep(29 downto 27) => M09_AXIS_tkeep(2 downto 0),
      m_axis_tkeep(26 downto 24) => xbar_to_m08_couplers_TKEEP(26 downto 24),
      m_axis_tkeep(23 downto 21) => xbar_to_m07_couplers_TKEEP(23 downto 21),
      m_axis_tkeep(20 downto 18) => xbar_to_m06_couplers_TKEEP(20 downto 18),
      m_axis_tkeep(17 downto 15) => xbar_to_m05_couplers_TKEEP(17 downto 15),
      m_axis_tkeep(14 downto 12) => xbar_to_m04_couplers_TKEEP(14 downto 12),
      m_axis_tkeep(11 downto 9) => xbar_to_m03_couplers_TKEEP(11 downto 9),
      m_axis_tkeep(8 downto 6) => xbar_to_m02_couplers_TKEEP(8 downto 6),
      m_axis_tkeep(5 downto 3) => xbar_to_m01_couplers_TKEEP(5 downto 3),
      m_axis_tkeep(2 downto 0) => xbar_to_m00_couplers_TKEEP(2 downto 0),
      m_axis_tlast(9) => M09_AXIS_tlast,
      m_axis_tlast(8) => xbar_to_m08_couplers_TLAST,
      m_axis_tlast(7) => xbar_to_m07_couplers_TLAST,
      m_axis_tlast(6) => xbar_to_m06_couplers_TLAST,
      m_axis_tlast(5) => xbar_to_m05_couplers_TLAST,
      m_axis_tlast(4) => xbar_to_m04_couplers_TLAST,
      m_axis_tlast(3) => xbar_to_m03_couplers_TLAST,
      m_axis_tlast(2) => xbar_to_m02_couplers_TLAST,
      m_axis_tlast(1) => xbar_to_m01_couplers_TLAST,
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST,
      m_axis_tready(9) => M09_AXIS_tready,
      m_axis_tready(8) => xbar_to_m08_couplers_TREADY,
      m_axis_tready(7) => xbar_to_m07_couplers_TREADY,
      m_axis_tready(6) => xbar_to_m06_couplers_TREADY,
      m_axis_tready(5) => xbar_to_m05_couplers_TREADY,
      m_axis_tready(4) => xbar_to_m04_couplers_TREADY,
      m_axis_tready(3) => xbar_to_m03_couplers_TREADY,
      m_axis_tready(2) => xbar_to_m02_couplers_TREADY,
      m_axis_tready(1) => xbar_to_m01_couplers_TREADY,
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tstrb(29 downto 27) => M09_AXIS_tstrb(2 downto 0),
      m_axis_tstrb(26 downto 24) => xbar_to_m08_couplers_TSTRB(26 downto 24),
      m_axis_tstrb(23 downto 21) => xbar_to_m07_couplers_TSTRB(23 downto 21),
      m_axis_tstrb(20 downto 18) => xbar_to_m06_couplers_TSTRB(20 downto 18),
      m_axis_tstrb(17 downto 15) => xbar_to_m05_couplers_TSTRB(17 downto 15),
      m_axis_tstrb(14 downto 12) => xbar_to_m04_couplers_TSTRB(14 downto 12),
      m_axis_tstrb(11 downto 9) => xbar_to_m03_couplers_TSTRB(11 downto 9),
      m_axis_tstrb(8 downto 6) => xbar_to_m02_couplers_TSTRB(8 downto 6),
      m_axis_tstrb(5 downto 3) => xbar_to_m01_couplers_TSTRB(5 downto 3),
      m_axis_tstrb(2 downto 0) => xbar_to_m00_couplers_TSTRB(2 downto 0),
      m_axis_tuser(29 downto 27) => M09_AXIS_tuser(2 downto 0),
      m_axis_tuser(26 downto 24) => xbar_to_m08_couplers_TUSER(26 downto 24),
      m_axis_tuser(23 downto 21) => xbar_to_m07_couplers_TUSER(23 downto 21),
      m_axis_tuser(20 downto 18) => xbar_to_m06_couplers_TUSER(20 downto 18),
      m_axis_tuser(17 downto 15) => xbar_to_m05_couplers_TUSER(17 downto 15),
      m_axis_tuser(14 downto 12) => xbar_to_m04_couplers_TUSER(14 downto 12),
      m_axis_tuser(11 downto 9) => xbar_to_m03_couplers_TUSER(11 downto 9),
      m_axis_tuser(8 downto 6) => xbar_to_m02_couplers_TUSER(8 downto 6),
      m_axis_tuser(5 downto 3) => xbar_to_m01_couplers_TUSER(5 downto 3),
      m_axis_tuser(2 downto 0) => xbar_to_m00_couplers_TUSER(2 downto 0),
      m_axis_tvalid(9) => M09_AXIS_tvalid,
      m_axis_tvalid(8) => xbar_to_m08_couplers_TVALID,
      m_axis_tvalid(7) => xbar_to_m07_couplers_TVALID,
      m_axis_tvalid(6) => xbar_to_m06_couplers_TVALID,
      m_axis_tvalid(5) => xbar_to_m05_couplers_TVALID,
      m_axis_tvalid(4) => xbar_to_m04_couplers_TVALID,
      m_axis_tvalid(3) => xbar_to_m03_couplers_TVALID,
      m_axis_tvalid(2) => xbar_to_m02_couplers_TVALID,
      m_axis_tvalid(1) => xbar_to_m01_couplers_TVALID,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID,
      s_axi_ctrl_aclk => S_AXI_CTRL_ACLK,
      s_axi_ctrl_araddr(6 downto 0) => S_AXI_CTRL_araddr(6 downto 0),
      s_axi_ctrl_aresetn => S_AXI_CTRL_ARESETN,
      s_axi_ctrl_arready => S_AXI_CTRL_arready,
      s_axi_ctrl_arvalid => S_AXI_CTRL_arvalid,
      s_axi_ctrl_awaddr(6 downto 0) => S_AXI_CTRL_awaddr(6 downto 0),
      s_axi_ctrl_awready => S_AXI_CTRL_awready,
      s_axi_ctrl_awvalid => S_AXI_CTRL_awvalid,
      s_axi_ctrl_bready => S_AXI_CTRL_bready,
      s_axi_ctrl_bresp(1 downto 0) => S_AXI_CTRL_bresp(1 downto 0),
      s_axi_ctrl_bvalid => S_AXI_CTRL_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => S_AXI_CTRL_rdata(31 downto 0),
      s_axi_ctrl_rready => S_AXI_CTRL_rready,
      s_axi_ctrl_rresp(1 downto 0) => S_AXI_CTRL_rresp(1 downto 0),
      s_axi_ctrl_rvalid => S_AXI_CTRL_rvalid,
      s_axi_ctrl_wdata(31 downto 0) => S_AXI_CTRL_wdata(31 downto 0),
      s_axi_ctrl_wready => S_AXI_CTRL_wready,
      s_axi_ctrl_wvalid => S_AXI_CTRL_wvalid,
      s_axis_tdata(239 downto 216) => s09_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(215 downto 192) => S08_AXIS_tdata(23 downto 0),
      s_axis_tdata(191 downto 168) => S07_AXIS_tdata(23 downto 0),
      s_axis_tdata(167 downto 144) => S06_AXIS_tdata(23 downto 0),
      s_axis_tdata(143 downto 120) => S05_AXIS_tdata(23 downto 0),
      s_axis_tdata(119 downto 96) => S04_AXIS_tdata(23 downto 0),
      s_axis_tdata(95 downto 72) => s03_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(71 downto 48) => S02_AXIS_tdata(23 downto 0),
      s_axis_tdata(47 downto 24) => S01_AXIS_tdata(23 downto 0),
      s_axis_tdata(23 downto 0) => S00_AXIS_tdata(23 downto 0),
      s_axis_tdest(9) => s09_couplers_to_xbar_TDEST,
      s_axis_tdest(8) => S08_AXIS_tdest(0),
      s_axis_tdest(7) => S07_AXIS_tdest(0),
      s_axis_tdest(6) => S06_AXIS_tdest(0),
      s_axis_tdest(5) => S05_AXIS_tdest(0),
      s_axis_tdest(4) => S04_AXIS_tdest(0),
      s_axis_tdest(3) => s03_couplers_to_xbar_TDEST,
      s_axis_tdest(2) => S02_AXIS_tdest(0),
      s_axis_tdest(1) => S01_AXIS_tdest(0),
      s_axis_tdest(0) => S00_AXIS_tdest(0),
      s_axis_tid(9) => s09_couplers_to_xbar_TID,
      s_axis_tid(8) => S08_AXIS_tid(0),
      s_axis_tid(7) => S07_AXIS_tid(0),
      s_axis_tid(6) => S06_AXIS_tid(0),
      s_axis_tid(5) => S05_AXIS_tid(0),
      s_axis_tid(4) => S04_AXIS_tid(0),
      s_axis_tid(3) => s03_couplers_to_xbar_TID,
      s_axis_tid(2) => S02_AXIS_tid(0),
      s_axis_tid(1) => S01_AXIS_tid(0),
      s_axis_tid(0) => S00_AXIS_tid(0),
      s_axis_tkeep(29 downto 27) => s09_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(26 downto 24) => S08_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(23 downto 21) => S07_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(20 downto 18) => S06_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(17 downto 15) => S05_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(14 downto 12) => S04_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(11 downto 9) => s03_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(8 downto 6) => S02_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(5 downto 3) => S01_AXIS_tkeep(2 downto 0),
      s_axis_tkeep(2 downto 0) => S00_AXIS_tkeep(2 downto 0),
      s_axis_tlast(9) => s09_couplers_to_xbar_TLAST,
      s_axis_tlast(8) => S08_AXIS_tlast(0),
      s_axis_tlast(7) => S07_AXIS_tlast(0),
      s_axis_tlast(6) => S06_AXIS_tlast(0),
      s_axis_tlast(5) => S05_AXIS_tlast(0),
      s_axis_tlast(4) => S04_AXIS_tlast(0),
      s_axis_tlast(3) => s03_couplers_to_xbar_TLAST,
      s_axis_tlast(2) => S02_AXIS_tlast(0),
      s_axis_tlast(1) => S01_AXIS_tlast(0),
      s_axis_tlast(0) => S00_AXIS_tlast(0),
      s_axis_tready(9) => s09_couplers_to_xbar_TREADY,
      s_axis_tready(8) => S08_AXIS_tready(0),
      s_axis_tready(7) => S07_AXIS_tready,
      s_axis_tready(6) => S06_AXIS_tready,
      s_axis_tready(5) => S05_AXIS_tready,
      s_axis_tready(4) => S04_AXIS_tready(0),
      s_axis_tready(3) => s03_couplers_to_xbar_TREADY,
      s_axis_tready(2) => S02_AXIS_tready(0),
      s_axis_tready(1) => S01_AXIS_tready(0),
      s_axis_tready(0) => S00_AXIS_tready(0),
      s_axis_tstrb(29 downto 27) => s09_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(26 downto 24) => S08_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(23 downto 21) => S07_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(20 downto 18) => S06_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(17 downto 15) => S05_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(14 downto 12) => S04_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(11 downto 9) => s03_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(8 downto 6) => S02_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(5 downto 3) => S01_AXIS_tstrb(2 downto 0),
      s_axis_tstrb(2 downto 0) => S00_AXIS_tstrb(2 downto 0),
      s_axis_tuser(29 downto 28) => B"00",
      s_axis_tuser(27) => s09_couplers_to_xbar_TUSER,
      s_axis_tuser(26 downto 25) => B"00",
      s_axis_tuser(24) => S08_AXIS_tuser(0),
      s_axis_tuser(23 downto 22) => B"00",
      s_axis_tuser(21) => S07_AXIS_tuser(0),
      s_axis_tuser(20 downto 19) => B"00",
      s_axis_tuser(18) => S06_AXIS_tuser(0),
      s_axis_tuser(17 downto 16) => B"00",
      s_axis_tuser(15) => S05_AXIS_tuser(0),
      s_axis_tuser(14 downto 13) => B"00",
      s_axis_tuser(12) => S04_AXIS_tuser(0),
      s_axis_tuser(11 downto 9) => s03_couplers_to_xbar_TUSER(2 downto 0),
      s_axis_tuser(8 downto 7) => B"00",
      s_axis_tuser(6) => S02_AXIS_tuser(0),
      s_axis_tuser(5 downto 4) => B"00",
      s_axis_tuser(3) => S01_AXIS_tuser(0),
      s_axis_tuser(2 downto 1) => B"00",
      s_axis_tuser(0) => S00_AXIS_tuser(0),
      s_axis_tvalid(9) => s09_couplers_to_xbar_TVALID,
      s_axis_tvalid(8) => S08_AXIS_tvalid(0),
      s_axis_tvalid(7) => S07_AXIS_tvalid,
      s_axis_tvalid(6) => S06_AXIS_tvalid,
      s_axis_tvalid(5) => S05_AXIS_tvalid,
      s_axis_tvalid(4) => S04_AXIS_tvalid(0),
      s_axis_tvalid(3) => s03_couplers_to_xbar_TVALID,
      s_axis_tvalid(2) => S02_AXIS_tvalid(0),
      s_axis_tvalid(1) => S01_AXIS_tvalid(0),
      s_axis_tvalid(0) => S00_AXIS_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0_bd_2d50 is
  port (
    aclk_axi_mm : in STD_LOGIC;
    aclk_axis : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_io_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    deint_field_id : in STD_LOGIC;
    m_axi_mm_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_mm_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_mm_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mm_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system_v_proc_ss_0_0_bd_2d50 : entity is "system_v_proc_ss_0_0.hwdef";
end system_v_proc_ss_0_0_bd_2d50;

architecture STRUCTURE of system_v_proc_ss_0_0_bd_2d50 is
  component system_v_proc_ss_0_0_bd_2d50_axi_vdma_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_axi_vdma_0;
  component system_v_proc_ss_0_0_bd_2d50_csc_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_csc_0;
  component system_v_proc_ss_0_0_bd_2d50_deint_cc_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_deint_cc_0;
  component system_v_proc_ss_0_0_bd_2d50_deint_ss_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_deint_ss_0;
  component system_v_proc_ss_0_0_bd_2d50_dint_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWVALID : out STD_LOGIC;
    m_axi_gmem_AWREADY : in STD_LOGIC;
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_WLAST : out STD_LOGIC;
    m_axi_gmem_WVALID : out STD_LOGIC;
    m_axi_gmem_WREADY : in STD_LOGIC;
    m_axi_gmem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_BVALID : in STD_LOGIC;
    m_axi_gmem_BREADY : out STD_LOGIC;
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARVALID : out STD_LOGIC;
    m_axi_gmem_ARREADY : in STD_LOGIC;
    m_axi_gmem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RREADY : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC;
    s_axis_video_TLAST : in STD_LOGIC;
    s_axis_video_TID : in STD_LOGIC;
    s_axis_video_TDEST : in STD_LOGIC;
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC;
    m_axis_video_TLAST : out STD_LOGIC;
    m_axis_video_TID : out STD_LOGIC;
    m_axis_video_TDEST : out STD_LOGIC;
    even : in STD_LOGIC
  );
  end component system_v_proc_ss_0_0_bd_2d50_dint_0;
  component system_v_proc_ss_0_0_bd_2d50_hcr_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_hcr_0;
  component system_v_proc_ss_0_0_bd_2d50_hsc_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_hsc_0;
  component system_v_proc_ss_0_0_bd_2d50_input_size_set_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_input_size_set_0;
  component system_v_proc_ss_0_0_bd_2d50_ltr_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_ltr_0;
  component system_v_proc_ss_0_0_bd_2d50_reset_sel_axi_mm_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_reset_sel_axi_mm_0;
  component system_v_proc_ss_0_0_bd_2d50_reset_sel_axis_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_reset_sel_axis_0;
  component system_v_proc_ss_0_0_bd_2d50_rst_axi_mm_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_rst_axi_mm_0;
  component system_v_proc_ss_0_0_bd_2d50_rst_axis_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_rst_axis_0;
  component system_v_proc_ss_0_0_bd_2d50_vcr_i_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_vcr_i_0;
  component system_v_proc_ss_0_0_bd_2d50_vcr_o_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_vcr_o_0;
  component system_v_proc_ss_0_0_bd_2d50_vdma_pad_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_vdma_pad_0;
  component system_v_proc_ss_0_0_bd_2d50_vdma_trunc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_vdma_trunc_0;
  component system_v_proc_ss_0_0_bd_2d50_vsc_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_proc_ss_0_0_bd_2d50_vsc_0;
  signal intf_net_axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal intf_net_axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal intf_net_axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M07_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M08_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M09_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M09_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M09_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M09_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M09_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M09_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M09_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M10_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_ARREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_ARVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_AWREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_AWVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_BREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_BVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_RREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_RVALID : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_WREADY : STD_LOGIC;
  signal intf_net_axi_interconnect_0_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_interconnect_0_M11_AXI_WVALID : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal intf_net_axi_vdma_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal intf_net_axi_vdma_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXIS_MM2S_TUSER : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_vdma_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal intf_net_axi_vdma_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_axi_vdma_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_csc_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TID : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_csc_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_csc_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_deint_cc_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_deint_cc_M_AXIS_TDEST : STD_LOGIC;
  signal intf_net_deint_cc_M_AXIS_TID : STD_LOGIC;
  signal intf_net_deint_cc_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_deint_cc_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_deint_cc_M_AXIS_TREADY : STD_LOGIC;
  signal intf_net_deint_cc_M_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_deint_cc_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_deint_ss_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_deint_ss_M_AXIS_TDEST : STD_LOGIC;
  signal intf_net_deint_ss_M_AXIS_TID : STD_LOGIC;
  signal intf_net_deint_ss_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_deint_ss_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_deint_ss_M_AXIS_TREADY : STD_LOGIC;
  signal intf_net_deint_ss_M_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_deint_ss_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARREADY : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_dint_m_axi_gmem_ARVALID : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWREADY : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_dint_m_axi_gmem_AWVALID : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_BREADY : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_dint_m_axi_gmem_BVALID : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_dint_m_axi_gmem_RLAST : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_RREADY : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_dint_m_axi_gmem_RVALID : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_dint_m_axi_gmem_WLAST : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_WREADY : STD_LOGIC;
  signal intf_net_dint_m_axi_gmem_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_dint_m_axi_gmem_WVALID : STD_LOGIC;
  signal intf_net_dint_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_dint_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_dint_m_axis_video_TID : STD_LOGIC;
  signal intf_net_dint_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_dint_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_dint_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_dint_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_dint_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_dint_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_hcr_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_hcr_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_hcr_m_axis_video_TID : STD_LOGIC;
  signal intf_net_hcr_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hcr_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_hcr_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_hcr_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hcr_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_hcr_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_hsc_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TID : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hsc_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hsc_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TDEST : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TID : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TREADY : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TUSER : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_ltr_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TID : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_ltr_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_ltr_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_vcr_i_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_vcr_i_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_vcr_i_m_axis_video_TID : STD_LOGIC;
  signal intf_net_vcr_i_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vcr_i_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_vcr_i_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_vcr_i_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vcr_i_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_vcr_i_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_vcr_o_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_vcr_o_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_vcr_o_m_axis_video_TID : STD_LOGIC;
  signal intf_net_vcr_o_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vcr_o_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_vcr_o_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_vcr_o_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vcr_o_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_vcr_o_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_vdma_pad_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal intf_net_vdma_pad_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal intf_net_vdma_pad_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_vdma_pad_M_AXIS_TREADY : STD_LOGIC;
  signal intf_net_vdma_pad_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal intf_net_vdma_pad_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_vdma_trunc_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal intf_net_vdma_trunc_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal intf_net_vdma_trunc_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_vdma_trunc_M_AXIS_TREADY : STD_LOGIC;
  signal intf_net_vdma_trunc_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_vdma_trunc_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M01_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M01_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M01_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M01_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M02_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M02_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M02_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M02_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M03_AXIS_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal intf_net_video_router_M03_AXIS_TKEEP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal intf_net_video_router_M03_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M03_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M03_AXIS_TUSER : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal intf_net_video_router_M03_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M04_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M04_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M04_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M04_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M05_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M05_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M05_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M05_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M05_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M05_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M05_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M05_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M05_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M06_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M06_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M06_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M06_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M06_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M06_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M06_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M06_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M06_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M07_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M07_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M07_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M07_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M07_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M07_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M07_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M07_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M07_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M08_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M08_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M08_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M08_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M09_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M09_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M09_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M09_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M09_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M09_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M09_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M09_AXIS_TUSER : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M09_AXIS_TVALID : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_vsc_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TID : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vsc_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vsc_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TVALID : STD_LOGIC;
  signal net_deint_cc_m_axis_tuser : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_deint_concat_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_deint_fid_tap_Dout : STD_LOGIC;
  signal net_deint_ss_m_axis_tuser : STD_LOGIC;
  signal net_deint_tuser_tap_Dout : STD_LOGIC;
  signal net_proc_ss_ip_aresetn_Dout : STD_LOGIC;
  signal net_reset_sel_axi_mm_gpio_io_o : STD_LOGIC;
  signal net_reset_sel_axis_gpio_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_rst_axi_mm_peripheral_aresetn : STD_LOGIC;
  signal net_rst_axis_peripheral_aresetn : STD_LOGIC;
  signal NLW_axi_vdma_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_csc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_dint_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_hcr_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_hsc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_ltr_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_sel_axi_mm_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sel_axis_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_axi_mm_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_axi_mm_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axi_mm_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axi_mm_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axis_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_axis_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axis_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axis_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vcr_i_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_vcr_o_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_vdma_trunc_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal NLW_video_router_M01_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_video_router_M02_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_video_router_M04_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_video_router_M05_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_video_router_M06_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_video_router_M07_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_video_router_M08_AXIS_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_vsc_interrupt_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_vdma : label is "axi_vdma,Vivado 2018.3";
  attribute X_CORE_INFO of csc : label is "bd_2d50_csc_0_v_csc,Vivado 2018.3";
  attribute X_CORE_INFO of deint_cc : label is "axis_clock_converter_v1_1_19_axis_clock_converter,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of deint_concat : label is "bd_2d50_deint_concat_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of deint_concat : label is "yes";
  attribute X_CORE_INFO of deint_concat : label is "xlconcat_v2_1_1_xlconcat,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of deint_fid_tap : label is "bd_2d50_deint_fid_tap_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of deint_fid_tap : label is "yes";
  attribute X_CORE_INFO of deint_fid_tap : label is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
  attribute X_CORE_INFO of deint_ss : label is "top_bd_2d50_deint_ss_0,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of deint_tuser_tap : label is "bd_2d50_deint_tuser_tap_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of deint_tuser_tap : label is "yes";
  attribute X_CORE_INFO of deint_tuser_tap : label is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
  attribute X_CORE_INFO of dint : label is "bd_2d50_dint_0_v_deinterlacer,Vivado 2018.3";
  attribute X_CORE_INFO of hcr : label is "bd_2d50_hcr_0_v_hcresampler,Vivado 2018.3";
  attribute X_CORE_INFO of hsc : label is "bd_2d50_hsc_0_v_hscaler,Vivado 2018.3";
  attribute X_CORE_INFO of input_size_set : label is "top_bd_2d50_input_size_set_0,Vivado 2018.3";
  attribute X_CORE_INFO of ltr : label is "bd_2d50_ltr_0_v_letterbox,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of proc_ss_ip_aresetn : label is "bd_2d50_proc_ss_ip_aresetn_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of proc_ss_ip_aresetn : label is "yes";
  attribute X_CORE_INFO of proc_ss_ip_aresetn : label is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
  attribute X_CORE_INFO of reset_sel_axi_mm : label is "axi_gpio,Vivado 2018.3";
  attribute X_CORE_INFO of reset_sel_axis : label is "axi_gpio,Vivado 2018.3";
  attribute X_CORE_INFO of rst_axi_mm : label is "proc_sys_reset,Vivado 2018.3";
  attribute X_CORE_INFO of rst_axis : label is "proc_sys_reset,Vivado 2018.3";
  attribute X_CORE_INFO of vcr_i : label is "bd_2d50_vcr_i_0_v_vcresampler,Vivado 2018.3";
  attribute X_CORE_INFO of vcr_o : label is "bd_2d50_vcr_o_0_v_vcresampler,Vivado 2018.3";
  attribute X_CORE_INFO of vdma_pad : label is "top_bd_2d50_vdma_pad_0,Vivado 2018.3";
  attribute X_CORE_INFO of vdma_trunc : label is "top_bd_2d50_vdma_trunc_0,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of vid_in_aresetn : label is "bd_2d50_vid_in_aresetn_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of vid_in_aresetn : label is "yes";
  attribute X_CORE_INFO of vid_in_aresetn : label is "xlslice_v1_0_1_xlslice,Vivado 2018.3";
  attribute X_CORE_INFO of vsc : label is "bd_2d50_vsc_0_v_vscaler,Vivado 2018.3";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_axi_mm : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_AXI_MM CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_axi_mm : signal is "XIL_INTERFACENAME CLK.ACLK_AXI_MM, ASSOCIATED_BUSIF m_axi_mm, ASSOCIATED_CLKEN m_axis_aclken, ASSOCIATED_RESET aresetn_axi_mm, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aclk_axis : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_AXIS CLK";
  attribute X_INTERFACE_PARAMETER of aclk_axis : signal is "XIL_INTERFACENAME CLK.ACLK_AXIS, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_CLKEN s_axis_aclken, ASSOCIATED_RESET aresetn_io_axis, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK";
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of aresetn_io_axis : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_IO_AXIS RST";
  attribute X_INTERFACE_PARAMETER of aresetn_io_axis : signal is "XIL_INTERFACENAME RST.ARESETN_IO_AXIS, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axi_mm_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARADDR";
  attribute X_INTERFACE_PARAMETER of m_axi_mm_araddr : signal is "XIL_INTERFACENAME m_axi_mm, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 256, FREQ_HZ 133333344, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 32, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of m_axi_mm_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARBURST";
  attribute X_INTERFACE_INFO of m_axi_mm_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_mm_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARID";
  attribute X_INTERFACE_INFO of m_axi_mm_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARLEN";
  attribute X_INTERFACE_INFO of m_axi_mm_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_mm_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARPROT";
  attribute X_INTERFACE_INFO of m_axi_mm_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARQOS";
  attribute X_INTERFACE_INFO of m_axi_mm_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_arregion : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARREGION";
  attribute X_INTERFACE_INFO of m_axi_mm_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_mm_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWADDR";
  attribute X_INTERFACE_INFO of m_axi_mm_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWBURST";
  attribute X_INTERFACE_INFO of m_axi_mm_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_mm_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWID";
  attribute X_INTERFACE_INFO of m_axi_mm_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWLEN";
  attribute X_INTERFACE_INFO of m_axi_mm_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_mm_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWPROT";
  attribute X_INTERFACE_INFO of m_axi_mm_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWQOS";
  attribute X_INTERFACE_INFO of m_axi_mm_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_awregion : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWREGION";
  attribute X_INTERFACE_INFO of m_axi_mm_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_mm_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BID";
  attribute X_INTERFACE_INFO of m_axi_mm_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BRESP";
  attribute X_INTERFACE_INFO of m_axi_mm_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RDATA";
  attribute X_INTERFACE_INFO of m_axi_mm_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RID";
  attribute X_INTERFACE_INFO of m_axi_mm_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RLAST";
  attribute X_INTERFACE_INFO of m_axi_mm_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RRESP";
  attribute X_INTERFACE_INFO of m_axi_mm_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WDATA";
  attribute X_INTERFACE_INFO of m_axi_mm_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WLAST";
  attribute X_INTERFACE_INFO of m_axi_mm_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WSTRB";
  attribute X_INTERFACE_INFO of m_axi_mm_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 3";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m_axis TDEST";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 20, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, DATA_WIDTH 32, FREQ_HZ 133333344, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 133333344, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
axi_interconnect_0: entity work.system_v_proc_ss_0_0_bd_2d50_axi_interconnect_0_0
     port map (
      ACLK => aclk_ctrl,
      ARESETN => aresetn_ctrl,
      M00_ACLK => aclk_ctrl,
      M00_ARESETN => aresetn_ctrl,
      M00_AXI_araddr(19 downto 0) => intf_net_axi_interconnect_0_M00_AXI_ARADDR(19 downto 0),
      M00_AXI_arready => intf_net_axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => intf_net_axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(19 downto 0) => intf_net_axi_interconnect_0_M00_AXI_AWADDR(19 downto 0),
      M00_AXI_awready => intf_net_axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => intf_net_axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => intf_net_axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => intf_net_axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => intf_net_axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => intf_net_axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => intf_net_axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wvalid => intf_net_axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => aclk_axis,
      M01_ARESETN => net_rst_axis_peripheral_aresetn,
      M01_AXI_araddr(8 downto 0) => intf_net_axi_interconnect_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arready => intf_net_axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => intf_net_axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awready => intf_net_axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => intf_net_axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => intf_net_axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => intf_net_axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => intf_net_axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => intf_net_axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => intf_net_axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => intf_net_axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => aclk_axis,
      M02_ARESETN => net_rst_axis_peripheral_aresetn,
      M02_AXI_araddr(11 downto 0) => intf_net_axi_interconnect_0_M02_AXI_ARADDR(11 downto 0),
      M02_AXI_arready => intf_net_axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => intf_net_axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(11 downto 0) => intf_net_axi_interconnect_0_M02_AXI_AWADDR(11 downto 0),
      M02_AXI_awready => intf_net_axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => intf_net_axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => intf_net_axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => intf_net_axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => intf_net_axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => intf_net_axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => intf_net_axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => intf_net_axi_interconnect_0_M02_AXI_WVALID,
      M03_ACLK => aclk_axis,
      M03_ARESETN => net_rst_axis_peripheral_aresetn,
      M03_AXI_araddr(13 downto 0) => intf_net_axi_interconnect_0_M03_AXI_ARADDR(13 downto 0),
      M03_AXI_arready => intf_net_axi_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => intf_net_axi_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(13 downto 0) => intf_net_axi_interconnect_0_M03_AXI_AWADDR(13 downto 0),
      M03_AXI_awready => intf_net_axi_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => intf_net_axi_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => intf_net_axi_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => intf_net_axi_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => intf_net_axi_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => intf_net_axi_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => intf_net_axi_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => intf_net_axi_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => aclk_axis,
      M04_ARESETN => net_rst_axis_peripheral_aresetn,
      M04_AXI_araddr(6 downto 0) => intf_net_axi_interconnect_0_M04_AXI_ARADDR(6 downto 0),
      M04_AXI_arready => intf_net_axi_interconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => intf_net_axi_interconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(6 downto 0) => intf_net_axi_interconnect_0_M04_AXI_AWADDR(6 downto 0),
      M04_AXI_awready => intf_net_axi_interconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => intf_net_axi_interconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => intf_net_axi_interconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => intf_net_axi_interconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => intf_net_axi_interconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => intf_net_axi_interconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => intf_net_axi_interconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => intf_net_axi_interconnect_0_M04_AXI_WVALID,
      M05_ACLK => aclk_axis,
      M05_ARESETN => net_rst_axis_peripheral_aresetn,
      M05_AXI_araddr(10 downto 0) => intf_net_axi_interconnect_0_M05_AXI_ARADDR(10 downto 0),
      M05_AXI_arready => intf_net_axi_interconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => intf_net_axi_interconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(10 downto 0) => intf_net_axi_interconnect_0_M05_AXI_AWADDR(10 downto 0),
      M05_AXI_awready => intf_net_axi_interconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => intf_net_axi_interconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => intf_net_axi_interconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => intf_net_axi_interconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => intf_net_axi_interconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => intf_net_axi_interconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => intf_net_axi_interconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => intf_net_axi_interconnect_0_M05_AXI_WVALID,
      M06_ACLK => aclk_axis,
      M06_ARESETN => net_rst_axis_peripheral_aresetn,
      M06_AXI_araddr(10 downto 0) => intf_net_axi_interconnect_0_M06_AXI_ARADDR(10 downto 0),
      M06_AXI_arready => intf_net_axi_interconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => intf_net_axi_interconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(10 downto 0) => intf_net_axi_interconnect_0_M06_AXI_AWADDR(10 downto 0),
      M06_AXI_awready => intf_net_axi_interconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => intf_net_axi_interconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => intf_net_axi_interconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => intf_net_axi_interconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => intf_net_axi_interconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => intf_net_axi_interconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => intf_net_axi_interconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => intf_net_axi_interconnect_0_M06_AXI_WVALID,
      M07_ACLK => aclk_axis,
      M07_ARESETN => net_rst_axis_peripheral_aresetn,
      M07_AXI_araddr(10 downto 0) => intf_net_axi_interconnect_0_M07_AXI_ARADDR(10 downto 0),
      M07_AXI_arready => intf_net_axi_interconnect_0_M07_AXI_ARREADY,
      M07_AXI_arvalid => intf_net_axi_interconnect_0_M07_AXI_ARVALID,
      M07_AXI_awaddr(10 downto 0) => intf_net_axi_interconnect_0_M07_AXI_AWADDR(10 downto 0),
      M07_AXI_awready => intf_net_axi_interconnect_0_M07_AXI_AWREADY,
      M07_AXI_awvalid => intf_net_axi_interconnect_0_M07_AXI_AWVALID,
      M07_AXI_bready => intf_net_axi_interconnect_0_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => intf_net_axi_interconnect_0_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => intf_net_axi_interconnect_0_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => intf_net_axi_interconnect_0_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => intf_net_axi_interconnect_0_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => intf_net_axi_interconnect_0_M07_AXI_WVALID,
      M08_ACLK => aclk_axis,
      M08_ARESETN => net_rst_axis_peripheral_aresetn,
      M08_AXI_araddr(8 downto 0) => intf_net_axi_interconnect_0_M08_AXI_ARADDR(8 downto 0),
      M08_AXI_arready => intf_net_axi_interconnect_0_M08_AXI_ARREADY,
      M08_AXI_arvalid => intf_net_axi_interconnect_0_M08_AXI_ARVALID,
      M08_AXI_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M08_AXI_AWADDR(8 downto 0),
      M08_AXI_awready => intf_net_axi_interconnect_0_M08_AXI_AWREADY,
      M08_AXI_awvalid => intf_net_axi_interconnect_0_M08_AXI_AWVALID,
      M08_AXI_bready => intf_net_axi_interconnect_0_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => intf_net_axi_interconnect_0_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => intf_net_axi_interconnect_0_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => intf_net_axi_interconnect_0_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => intf_net_axi_interconnect_0_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => intf_net_axi_interconnect_0_M08_AXI_WVALID,
      M09_ACLK => aclk_axi_mm,
      M09_ARESETN => net_rst_axi_mm_peripheral_aresetn,
      M09_AXI_araddr(8 downto 0) => intf_net_axi_interconnect_0_M09_AXI_ARADDR(8 downto 0),
      M09_AXI_arready => intf_net_axi_interconnect_0_M09_AXI_ARREADY,
      M09_AXI_arvalid => intf_net_axi_interconnect_0_M09_AXI_ARVALID,
      M09_AXI_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M09_AXI_AWADDR(8 downto 0),
      M09_AXI_awready => intf_net_axi_interconnect_0_M09_AXI_AWREADY,
      M09_AXI_awvalid => intf_net_axi_interconnect_0_M09_AXI_AWVALID,
      M09_AXI_bready => intf_net_axi_interconnect_0_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => intf_net_axi_interconnect_0_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => intf_net_axi_interconnect_0_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => intf_net_axi_interconnect_0_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => intf_net_axi_interconnect_0_M09_AXI_WREADY,
      M09_AXI_wvalid => intf_net_axi_interconnect_0_M09_AXI_WVALID,
      M10_ACLK => aclk_axi_mm,
      M10_ARESETN => net_rst_axi_mm_peripheral_aresetn,
      M10_AXI_araddr(6 downto 0) => intf_net_axi_interconnect_0_M10_AXI_ARADDR(6 downto 0),
      M10_AXI_arready => intf_net_axi_interconnect_0_M10_AXI_ARREADY,
      M10_AXI_arvalid => intf_net_axi_interconnect_0_M10_AXI_ARVALID,
      M10_AXI_awaddr(6 downto 0) => intf_net_axi_interconnect_0_M10_AXI_AWADDR(6 downto 0),
      M10_AXI_awready => intf_net_axi_interconnect_0_M10_AXI_AWREADY,
      M10_AXI_awvalid => intf_net_axi_interconnect_0_M10_AXI_AWVALID,
      M10_AXI_bready => intf_net_axi_interconnect_0_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => intf_net_axi_interconnect_0_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => intf_net_axi_interconnect_0_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => intf_net_axi_interconnect_0_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => intf_net_axi_interconnect_0_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid => intf_net_axi_interconnect_0_M10_AXI_WVALID,
      M11_ACLK => aclk_axi_mm,
      M11_ARESETN => net_rst_axi_mm_peripheral_aresetn,
      M11_AXI_araddr(8 downto 0) => intf_net_axi_interconnect_0_M11_AXI_ARADDR(8 downto 0),
      M11_AXI_arready => intf_net_axi_interconnect_0_M11_AXI_ARREADY,
      M11_AXI_arvalid => intf_net_axi_interconnect_0_M11_AXI_ARVALID,
      M11_AXI_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M11_AXI_AWADDR(8 downto 0),
      M11_AXI_awready => intf_net_axi_interconnect_0_M11_AXI_AWREADY,
      M11_AXI_awvalid => intf_net_axi_interconnect_0_M11_AXI_AWVALID,
      M11_AXI_bready => intf_net_axi_interconnect_0_M11_AXI_BREADY,
      M11_AXI_bresp(1 downto 0) => intf_net_axi_interconnect_0_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid => intf_net_axi_interconnect_0_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => intf_net_axi_interconnect_0_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready => intf_net_axi_interconnect_0_M11_AXI_RREADY,
      M11_AXI_rresp(1 downto 0) => intf_net_axi_interconnect_0_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid => intf_net_axi_interconnect_0_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => intf_net_axi_interconnect_0_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready => intf_net_axi_interconnect_0_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid => intf_net_axi_interconnect_0_M11_AXI_WVALID,
      S00_ACLK => aclk_ctrl,
      S00_ARESETN => aresetn_ctrl,
      S00_AXI_araddr(19 downto 0) => s_axi_ctrl_araddr(19 downto 0),
      S00_AXI_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      S00_AXI_arready(0) => s_axi_ctrl_arready(0),
      S00_AXI_arvalid(0) => s_axi_ctrl_arvalid(0),
      S00_AXI_awaddr(19 downto 0) => s_axi_ctrl_awaddr(19 downto 0),
      S00_AXI_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      S00_AXI_awready(0) => s_axi_ctrl_awready(0),
      S00_AXI_awvalid(0) => s_axi_ctrl_awvalid(0),
      S00_AXI_bready(0) => s_axi_ctrl_bready(0),
      S00_AXI_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      S00_AXI_bvalid(0) => s_axi_ctrl_bvalid(0),
      S00_AXI_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      S00_AXI_rready(0) => s_axi_ctrl_rready(0),
      S00_AXI_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      S00_AXI_rvalid(0) => s_axi_ctrl_rvalid(0),
      S00_AXI_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      S00_AXI_wready(0) => s_axi_ctrl_wready(0),
      S00_AXI_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      S00_AXI_wvalid(0) => s_axi_ctrl_wvalid(0)
    );
axi_interconnect_1: entity work.system_v_proc_ss_0_0_bd_2d50_axi_interconnect_1_0
     port map (
      ACLK => aclk_axi_mm,
      ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      M00_ACLK => aclk_axi_mm,
      M00_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      M00_AXI_araddr(31 downto 0) => m_axi_mm_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => m_axi_mm_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => m_axi_mm_arcache(3 downto 0),
      M00_AXI_arid(1 downto 0) => m_axi_mm_arid(1 downto 0),
      M00_AXI_arlen(7 downto 0) => m_axi_mm_arlen(7 downto 0),
      M00_AXI_arlock(0) => m_axi_mm_arlock(0),
      M00_AXI_arprot(2 downto 0) => m_axi_mm_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => m_axi_mm_arqos(3 downto 0),
      M00_AXI_arready(0) => m_axi_mm_arready(0),
      M00_AXI_arregion(3 downto 0) => m_axi_mm_arregion(3 downto 0),
      M00_AXI_arsize(2 downto 0) => m_axi_mm_arsize(2 downto 0),
      M00_AXI_arvalid(0) => m_axi_mm_arvalid(0),
      M00_AXI_awaddr(31 downto 0) => m_axi_mm_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => m_axi_mm_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => m_axi_mm_awcache(3 downto 0),
      M00_AXI_awid(1 downto 0) => m_axi_mm_awid(1 downto 0),
      M00_AXI_awlen(7 downto 0) => m_axi_mm_awlen(7 downto 0),
      M00_AXI_awlock(0) => m_axi_mm_awlock(0),
      M00_AXI_awprot(2 downto 0) => m_axi_mm_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => m_axi_mm_awqos(3 downto 0),
      M00_AXI_awready(0) => m_axi_mm_awready(0),
      M00_AXI_awregion(3 downto 0) => m_axi_mm_awregion(3 downto 0),
      M00_AXI_awsize(2 downto 0) => m_axi_mm_awsize(2 downto 0),
      M00_AXI_awvalid(0) => m_axi_mm_awvalid(0),
      M00_AXI_bid(1 downto 0) => m_axi_mm_bid(1 downto 0),
      M00_AXI_bready(0) => m_axi_mm_bready(0),
      M00_AXI_bresp(1 downto 0) => m_axi_mm_bresp(1 downto 0),
      M00_AXI_bvalid(0) => m_axi_mm_bvalid(0),
      M00_AXI_rdata(255 downto 0) => m_axi_mm_rdata(255 downto 0),
      M00_AXI_rid(1 downto 0) => m_axi_mm_rid(1 downto 0),
      M00_AXI_rlast(0) => m_axi_mm_rlast(0),
      M00_AXI_rready(0) => m_axi_mm_rready(0),
      M00_AXI_rresp(1 downto 0) => m_axi_mm_rresp(1 downto 0),
      M00_AXI_rvalid(0) => m_axi_mm_rvalid(0),
      M00_AXI_wdata(255 downto 0) => m_axi_mm_wdata(255 downto 0),
      M00_AXI_wlast(0) => m_axi_mm_wlast(0),
      M00_AXI_wready(0) => m_axi_mm_wready(0),
      M00_AXI_wstrb(31 downto 0) => m_axi_mm_wstrb(31 downto 0),
      M00_AXI_wvalid(0) => m_axi_mm_wvalid(0),
      S00_ACLK => aclk_axi_mm,
      S00_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      S00_AXI_araddr(31 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arready => intf_net_axi_vdma_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => intf_net_axi_vdma_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(127 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_RDATA(127 downto 0),
      S00_AXI_rlast => intf_net_axi_vdma_M_AXI_MM2S_RLAST,
      S00_AXI_rready => intf_net_axi_vdma_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => intf_net_axi_vdma_M_AXI_MM2S_RVALID,
      S01_ACLK => aclk_axi_mm,
      S01_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      S01_AXI_awaddr(31 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awready => intf_net_axi_vdma_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid => intf_net_axi_vdma_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => intf_net_axi_vdma_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => intf_net_axi_vdma_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(63 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_WDATA(63 downto 0),
      S01_AXI_wlast => intf_net_axi_vdma_M_AXI_S2MM_WLAST,
      S01_AXI_wready => intf_net_axi_vdma_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(7 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_WSTRB(7 downto 0),
      S01_AXI_wvalid => intf_net_axi_vdma_M_AXI_S2MM_WVALID,
      S02_ACLK => aclk_axi_mm,
      S02_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      S02_AXI_araddr(31 downto 0) => intf_net_dint_m_axi_gmem_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => intf_net_dint_m_axi_gmem_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => intf_net_dint_m_axi_gmem_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => intf_net_dint_m_axi_gmem_ARLEN(7 downto 0),
      S02_AXI_arlock(1 downto 0) => intf_net_dint_m_axi_gmem_ARLOCK(1 downto 0),
      S02_AXI_arprot(2 downto 0) => intf_net_dint_m_axi_gmem_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => intf_net_dint_m_axi_gmem_ARQOS(3 downto 0),
      S02_AXI_arready => intf_net_dint_m_axi_gmem_ARREADY,
      S02_AXI_arregion(3 downto 0) => intf_net_dint_m_axi_gmem_ARREGION(3 downto 0),
      S02_AXI_arsize(2 downto 0) => intf_net_dint_m_axi_gmem_ARSIZE(2 downto 0),
      S02_AXI_arvalid => intf_net_dint_m_axi_gmem_ARVALID,
      S02_AXI_awaddr(31 downto 0) => intf_net_dint_m_axi_gmem_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => intf_net_dint_m_axi_gmem_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => intf_net_dint_m_axi_gmem_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => intf_net_dint_m_axi_gmem_AWLEN(7 downto 0),
      S02_AXI_awlock(1 downto 0) => intf_net_dint_m_axi_gmem_AWLOCK(1 downto 0),
      S02_AXI_awprot(2 downto 0) => intf_net_dint_m_axi_gmem_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => intf_net_dint_m_axi_gmem_AWQOS(3 downto 0),
      S02_AXI_awready => intf_net_dint_m_axi_gmem_AWREADY,
      S02_AXI_awregion(3 downto 0) => intf_net_dint_m_axi_gmem_AWREGION(3 downto 0),
      S02_AXI_awsize(2 downto 0) => intf_net_dint_m_axi_gmem_AWSIZE(2 downto 0),
      S02_AXI_awvalid => intf_net_dint_m_axi_gmem_AWVALID,
      S02_AXI_bready => intf_net_dint_m_axi_gmem_BREADY,
      S02_AXI_bresp(1 downto 0) => intf_net_dint_m_axi_gmem_BRESP(1 downto 0),
      S02_AXI_bvalid => intf_net_dint_m_axi_gmem_BVALID,
      S02_AXI_rdata(31 downto 0) => intf_net_dint_m_axi_gmem_RDATA(31 downto 0),
      S02_AXI_rlast => intf_net_dint_m_axi_gmem_RLAST,
      S02_AXI_rready => intf_net_dint_m_axi_gmem_RREADY,
      S02_AXI_rresp(1 downto 0) => intf_net_dint_m_axi_gmem_RRESP(1 downto 0),
      S02_AXI_rvalid => intf_net_dint_m_axi_gmem_RVALID,
      S02_AXI_wdata(31 downto 0) => intf_net_dint_m_axi_gmem_WDATA(31 downto 0),
      S02_AXI_wlast => intf_net_dint_m_axi_gmem_WLAST,
      S02_AXI_wready => intf_net_dint_m_axi_gmem_WREADY,
      S02_AXI_wstrb(3 downto 0) => intf_net_dint_m_axi_gmem_WSTRB(3 downto 0),
      S02_AXI_wvalid => intf_net_dint_m_axi_gmem_WVALID
    );
axi_vdma: component system_v_proc_ss_0_0_bd_2d50_axi_vdma_0
     port map (
      axi_resetn => net_rst_axi_mm_peripheral_aresetn,
      m_axi_mm2s_aclk => aclk_axi_mm,
      m_axi_mm2s_araddr(31 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => intf_net_axi_vdma_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => intf_net_axi_vdma_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(127 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_RDATA(127 downto 0),
      m_axi_mm2s_rlast => intf_net_axi_vdma_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => intf_net_axi_vdma_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => intf_net_axi_vdma_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => intf_net_axi_vdma_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => aclk_axi_mm,
      m_axi_s2mm_awaddr(31 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => intf_net_axi_vdma_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => intf_net_axi_vdma_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => intf_net_axi_vdma_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => intf_net_axi_vdma_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(63 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_WDATA(63 downto 0),
      m_axi_s2mm_wlast => intf_net_axi_vdma_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => intf_net_axi_vdma_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(7 downto 0) => intf_net_axi_vdma_M_AXI_S2MM_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => intf_net_axi_vdma_M_AXI_S2MM_WVALID,
      m_axis_mm2s_aclk => aclk_axi_mm,
      m_axis_mm2s_tdata(47 downto 0) => intf_net_axi_vdma_M_AXIS_MM2S_TDATA(47 downto 0),
      m_axis_mm2s_tkeep(5 downto 0) => intf_net_axi_vdma_M_AXIS_MM2S_TKEEP(5 downto 0),
      m_axis_mm2s_tlast => intf_net_axi_vdma_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => intf_net_axi_vdma_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => intf_net_axi_vdma_M_AXIS_MM2S_TUSER,
      m_axis_mm2s_tvalid => intf_net_axi_vdma_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => NLW_axi_vdma_mm2s_introut_UNCONNECTED,
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => NLW_axi_vdma_s2mm_introut_UNCONNECTED,
      s_axi_lite_aclk => aclk_axi_mm,
      s_axi_lite_araddr(8 downto 0) => intf_net_axi_interconnect_0_M09_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => intf_net_axi_interconnect_0_M09_AXI_ARREADY,
      s_axi_lite_arvalid => intf_net_axi_interconnect_0_M09_AXI_ARVALID,
      s_axi_lite_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M09_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => intf_net_axi_interconnect_0_M09_AXI_AWREADY,
      s_axi_lite_awvalid => intf_net_axi_interconnect_0_M09_AXI_AWVALID,
      s_axi_lite_bready => intf_net_axi_interconnect_0_M09_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => intf_net_axi_interconnect_0_M09_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => intf_net_axi_interconnect_0_M09_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => intf_net_axi_interconnect_0_M09_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => intf_net_axi_interconnect_0_M09_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => intf_net_axi_interconnect_0_M09_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => intf_net_axi_interconnect_0_M09_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => intf_net_axi_interconnect_0_M09_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => intf_net_axi_interconnect_0_M09_AXI_WREADY,
      s_axi_lite_wvalid => intf_net_axi_interconnect_0_M09_AXI_WVALID,
      s_axis_s2mm_aclk => aclk_axi_mm,
      s_axis_s2mm_tdata(47 downto 0) => intf_net_vdma_trunc_M_AXIS_TDATA(47 downto 0),
      s_axis_s2mm_tkeep(5 downto 0) => intf_net_vdma_trunc_M_AXIS_TKEEP(5 downto 0),
      s_axis_s2mm_tlast => intf_net_vdma_trunc_M_AXIS_TLAST,
      s_axis_s2mm_tready => intf_net_vdma_trunc_M_AXIS_TREADY,
      s_axis_s2mm_tuser(0) => intf_net_vdma_trunc_M_AXIS_TUSER(0),
      s_axis_s2mm_tvalid => intf_net_vdma_trunc_M_AXIS_TVALID
    );
csc: component system_v_proc_ss_0_0_bd_2d50_csc_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_csc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_csc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_csc_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_csc_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_csc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_csc_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_csc_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_csc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_csc_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_csc_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(8 downto 0) => intf_net_axi_interconnect_0_M08_AXI_ARADDR(8 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M08_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M08_AXI_ARVALID,
      s_axi_CTRL_AWADDR(8 downto 0) => intf_net_axi_interconnect_0_M08_AXI_AWADDR(8 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M08_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M08_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M08_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M08_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M08_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M08_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M08_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M08_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M08_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M08_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M08_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M08_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M08_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M08_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M08_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M08_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M08_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M08_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M08_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M08_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M08_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M08_AXIS_TVALID
    );
deint_cc: component system_v_proc_ss_0_0_bd_2d50_deint_cc_0
     port map (
      m_axis_aclk => aclk_axi_mm,
      m_axis_aresetn => net_reset_sel_axi_mm_gpio_io_o,
      m_axis_tdata(23 downto 0) => intf_net_deint_cc_M_AXIS_TDATA(23 downto 0),
      m_axis_tdest(0) => intf_net_deint_cc_M_AXIS_TDEST,
      m_axis_tid(0) => intf_net_deint_cc_M_AXIS_TID,
      m_axis_tkeep(2 downto 0) => intf_net_deint_cc_M_AXIS_TKEEP(2 downto 0),
      m_axis_tlast => intf_net_deint_cc_M_AXIS_TLAST,
      m_axis_tready => intf_net_deint_cc_M_AXIS_TREADY,
      m_axis_tstrb(2 downto 0) => intf_net_deint_cc_M_AXIS_TSTRB(2 downto 0),
      m_axis_tuser(1 downto 0) => net_deint_cc_m_axis_tuser(1 downto 0),
      m_axis_tvalid => intf_net_deint_cc_M_AXIS_TVALID,
      s_axis_aclk => aclk_axis,
      s_axis_aresetn => net_proc_ss_ip_aresetn_Dout,
      s_axis_tdata(23 downto 0) => intf_net_deint_ss_M_AXIS_TDATA(23 downto 0),
      s_axis_tdest(0) => intf_net_deint_ss_M_AXIS_TDEST,
      s_axis_tid(0) => intf_net_deint_ss_M_AXIS_TID,
      s_axis_tkeep(2 downto 0) => intf_net_deint_ss_M_AXIS_TKEEP(2 downto 0),
      s_axis_tlast => intf_net_deint_ss_M_AXIS_TLAST,
      s_axis_tready => intf_net_deint_ss_M_AXIS_TREADY,
      s_axis_tstrb(2 downto 0) => intf_net_deint_ss_M_AXIS_TSTRB(2 downto 0),
      s_axis_tuser(1 downto 0) => net_deint_concat_dout(1 downto 0),
      s_axis_tvalid => intf_net_deint_ss_M_AXIS_TVALID
    );
deint_concat: entity work.system_v_proc_ss_0_0_bd_2d50_deint_concat_0
     port map (
      In0(0) => net_deint_ss_m_axis_tuser,
      In1(0) => deint_field_id,
      dout(1 downto 0) => net_deint_concat_dout(1 downto 0)
    );
deint_fid_tap: entity work.system_v_proc_ss_0_0_bd_2d50_deint_fid_tap_0
     port map (
      Din(1 downto 0) => net_deint_cc_m_axis_tuser(1 downto 0),
      Dout(0) => net_deint_fid_tap_Dout
    );
deint_ss: component system_v_proc_ss_0_0_bd_2d50_deint_ss_0
     port map (
      aclk => aclk_axis,
      aresetn => net_proc_ss_ip_aresetn_Dout,
      m_axis_tdata(23 downto 0) => intf_net_deint_ss_M_AXIS_TDATA(23 downto 0),
      m_axis_tdest(0) => intf_net_deint_ss_M_AXIS_TDEST,
      m_axis_tid(0) => intf_net_deint_ss_M_AXIS_TID,
      m_axis_tkeep(2 downto 0) => intf_net_deint_ss_M_AXIS_TKEEP(2 downto 0),
      m_axis_tlast => intf_net_deint_ss_M_AXIS_TLAST,
      m_axis_tready => intf_net_deint_ss_M_AXIS_TREADY,
      m_axis_tstrb(2 downto 0) => intf_net_deint_ss_M_AXIS_TSTRB(2 downto 0),
      m_axis_tuser(0) => net_deint_ss_m_axis_tuser,
      m_axis_tvalid => intf_net_deint_ss_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => intf_net_video_router_M09_AXIS_TDATA(23 downto 0),
      s_axis_tdest(0) => intf_net_video_router_M09_AXIS_TDEST,
      s_axis_tid(0) => intf_net_video_router_M09_AXIS_TID,
      s_axis_tkeep(2 downto 0) => intf_net_video_router_M09_AXIS_TKEEP(2 downto 0),
      s_axis_tlast => intf_net_video_router_M09_AXIS_TLAST,
      s_axis_tready => intf_net_video_router_M09_AXIS_TREADY,
      s_axis_tstrb(2 downto 0) => intf_net_video_router_M09_AXIS_TSTRB(2 downto 0),
      s_axis_tuser(2 downto 0) => intf_net_video_router_M09_AXIS_TUSER(2 downto 0),
      s_axis_tvalid => intf_net_video_router_M09_AXIS_TVALID
    );
deint_tuser_tap: entity work.system_v_proc_ss_0_0_bd_2d50_deint_tuser_tap_0
     port map (
      Din(1 downto 0) => net_deint_cc_m_axis_tuser(1 downto 0),
      Dout(0) => net_deint_tuser_tap_Dout
    );
dint: component system_v_proc_ss_0_0_bd_2d50_dint_0
     port map (
      ap_clk => aclk_axi_mm,
      ap_rst_n => net_reset_sel_axi_mm_gpio_io_o,
      even => net_deint_fid_tap_Dout,
      interrupt => NLW_dint_interrupt_UNCONNECTED,
      m_axi_gmem_ARADDR(31 downto 0) => intf_net_dint_m_axi_gmem_ARADDR(31 downto 0),
      m_axi_gmem_ARBURST(1 downto 0) => intf_net_dint_m_axi_gmem_ARBURST(1 downto 0),
      m_axi_gmem_ARCACHE(3 downto 0) => intf_net_dint_m_axi_gmem_ARCACHE(3 downto 0),
      m_axi_gmem_ARLEN(7 downto 0) => intf_net_dint_m_axi_gmem_ARLEN(7 downto 0),
      m_axi_gmem_ARLOCK(1 downto 0) => intf_net_dint_m_axi_gmem_ARLOCK(1 downto 0),
      m_axi_gmem_ARPROT(2 downto 0) => intf_net_dint_m_axi_gmem_ARPROT(2 downto 0),
      m_axi_gmem_ARQOS(3 downto 0) => intf_net_dint_m_axi_gmem_ARQOS(3 downto 0),
      m_axi_gmem_ARREADY => intf_net_dint_m_axi_gmem_ARREADY,
      m_axi_gmem_ARREGION(3 downto 0) => intf_net_dint_m_axi_gmem_ARREGION(3 downto 0),
      m_axi_gmem_ARSIZE(2 downto 0) => intf_net_dint_m_axi_gmem_ARSIZE(2 downto 0),
      m_axi_gmem_ARVALID => intf_net_dint_m_axi_gmem_ARVALID,
      m_axi_gmem_AWADDR(31 downto 0) => intf_net_dint_m_axi_gmem_AWADDR(31 downto 0),
      m_axi_gmem_AWBURST(1 downto 0) => intf_net_dint_m_axi_gmem_AWBURST(1 downto 0),
      m_axi_gmem_AWCACHE(3 downto 0) => intf_net_dint_m_axi_gmem_AWCACHE(3 downto 0),
      m_axi_gmem_AWLEN(7 downto 0) => intf_net_dint_m_axi_gmem_AWLEN(7 downto 0),
      m_axi_gmem_AWLOCK(1 downto 0) => intf_net_dint_m_axi_gmem_AWLOCK(1 downto 0),
      m_axi_gmem_AWPROT(2 downto 0) => intf_net_dint_m_axi_gmem_AWPROT(2 downto 0),
      m_axi_gmem_AWQOS(3 downto 0) => intf_net_dint_m_axi_gmem_AWQOS(3 downto 0),
      m_axi_gmem_AWREADY => intf_net_dint_m_axi_gmem_AWREADY,
      m_axi_gmem_AWREGION(3 downto 0) => intf_net_dint_m_axi_gmem_AWREGION(3 downto 0),
      m_axi_gmem_AWSIZE(2 downto 0) => intf_net_dint_m_axi_gmem_AWSIZE(2 downto 0),
      m_axi_gmem_AWVALID => intf_net_dint_m_axi_gmem_AWVALID,
      m_axi_gmem_BREADY => intf_net_dint_m_axi_gmem_BREADY,
      m_axi_gmem_BRESP(1 downto 0) => intf_net_dint_m_axi_gmem_BRESP(1 downto 0),
      m_axi_gmem_BVALID => intf_net_dint_m_axi_gmem_BVALID,
      m_axi_gmem_RDATA(31 downto 0) => intf_net_dint_m_axi_gmem_RDATA(31 downto 0),
      m_axi_gmem_RLAST => intf_net_dint_m_axi_gmem_RLAST,
      m_axi_gmem_RREADY => intf_net_dint_m_axi_gmem_RREADY,
      m_axi_gmem_RRESP(1 downto 0) => intf_net_dint_m_axi_gmem_RRESP(1 downto 0),
      m_axi_gmem_RVALID => intf_net_dint_m_axi_gmem_RVALID,
      m_axi_gmem_WDATA(31 downto 0) => intf_net_dint_m_axi_gmem_WDATA(31 downto 0),
      m_axi_gmem_WLAST => intf_net_dint_m_axi_gmem_WLAST,
      m_axi_gmem_WREADY => intf_net_dint_m_axi_gmem_WREADY,
      m_axi_gmem_WSTRB(3 downto 0) => intf_net_dint_m_axi_gmem_WSTRB(3 downto 0),
      m_axi_gmem_WVALID => intf_net_dint_m_axi_gmem_WVALID,
      m_axis_video_TDATA(23 downto 0) => intf_net_dint_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST => intf_net_dint_m_axis_video_TDEST,
      m_axis_video_TID => intf_net_dint_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_dint_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST => intf_net_dint_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_dint_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_dint_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER => intf_net_dint_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_dint_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(6 downto 0) => intf_net_axi_interconnect_0_M10_AXI_ARADDR(6 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M10_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M10_AXI_ARVALID,
      s_axi_CTRL_AWADDR(6 downto 0) => intf_net_axi_interconnect_0_M10_AXI_AWADDR(6 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M10_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M10_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M10_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M10_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M10_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M10_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M10_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M10_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M10_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M10_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M10_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M10_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M10_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_deint_cc_M_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST => intf_net_deint_cc_M_AXIS_TDEST,
      s_axis_video_TID => intf_net_deint_cc_M_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_deint_cc_M_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST => intf_net_deint_cc_M_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_deint_cc_M_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_deint_cc_M_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER => net_deint_tuser_tap_Dout,
      s_axis_video_TVALID => intf_net_deint_cc_M_AXIS_TVALID
    );
hcr: component system_v_proc_ss_0_0_bd_2d50_hcr_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_hcr_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_hcr_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_hcr_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_hcr_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_hcr_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_hcr_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_hcr_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_hcr_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_hcr_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_hcr_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(10 downto 0) => intf_net_axi_interconnect_0_M05_AXI_ARADDR(10 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M05_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M05_AXI_ARVALID,
      s_axi_CTRL_AWADDR(10 downto 0) => intf_net_axi_interconnect_0_M05_AXI_AWADDR(10 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M05_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M05_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M05_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M05_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M05_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M05_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M05_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M05_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M05_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M05_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M05_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M05_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M05_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M05_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M05_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M05_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M05_AXIS_TVALID
    );
hsc: component system_v_proc_ss_0_0_bd_2d50_hsc_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_hsc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_hsc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_hsc_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_hsc_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_hsc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_hsc_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_hsc_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_hsc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_hsc_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_hsc_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(13 downto 0) => intf_net_axi_interconnect_0_M03_AXI_ARADDR(13 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M03_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M03_AXI_ARVALID,
      s_axi_CTRL_AWADDR(13 downto 0) => intf_net_axi_interconnect_0_M03_AXI_AWADDR(13 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M03_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M03_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M03_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M03_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M03_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M03_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M03_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M03_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M02_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M02_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M02_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M02_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M02_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M02_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M02_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M02_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M02_AXIS_TVALID
    );
input_size_set: component system_v_proc_ss_0_0_bd_2d50_input_size_set_0
     port map (
      aclk => aclk_axis,
      aresetn => net_proc_ss_ip_aresetn_Dout,
      m_axis_tdata(23 downto 0) => intf_net_input_size_set_M_AXIS_TDATA(23 downto 0),
      m_axis_tdest(0) => intf_net_input_size_set_M_AXIS_TDEST,
      m_axis_tid(0) => intf_net_input_size_set_M_AXIS_TID,
      m_axis_tkeep(2 downto 0) => intf_net_input_size_set_M_AXIS_TKEEP(2 downto 0),
      m_axis_tlast => intf_net_input_size_set_M_AXIS_TLAST,
      m_axis_tready => intf_net_input_size_set_M_AXIS_TREADY,
      m_axis_tstrb(2 downto 0) => intf_net_input_size_set_M_AXIS_TSTRB(2 downto 0),
      m_axis_tuser(0) => intf_net_input_size_set_M_AXIS_TUSER,
      m_axis_tvalid => intf_net_input_size_set_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tid(0) => s_axis_tid(0),
      s_axis_tkeep(2 downto 0) => s_axis_tkeep(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => s_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid
    );
ltr: component system_v_proc_ss_0_0_bd_2d50_ltr_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_ltr_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_ltr_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_ltr_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_ltr_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_ltr_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_ltr_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_ltr_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_ltr_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_ltr_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_ltr_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(6 downto 0) => intf_net_axi_interconnect_0_M04_AXI_ARADDR(6 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M04_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M04_AXI_ARVALID,
      s_axi_CTRL_AWADDR(6 downto 0) => intf_net_axi_interconnect_0_M04_AXI_AWADDR(6 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M04_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M04_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M04_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M04_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M04_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M04_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M04_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M04_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M04_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M04_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M04_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M04_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M04_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M04_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M04_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M04_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M04_AXIS_TVALID
    );
proc_ss_ip_aresetn: entity work.system_v_proc_ss_0_0_bd_2d50_proc_ss_ip_aresetn_0
     port map (
      Din(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      Dout(0) => net_proc_ss_ip_aresetn_Dout
    );
reset_sel_axi_mm: component system_v_proc_ss_0_0_bd_2d50_reset_sel_axi_mm_0
     port map (
      gpio_io_i(0) => net_reset_sel_axi_mm_gpio_io_o,
      gpio_io_o(0) => net_reset_sel_axi_mm_gpio_io_o,
      gpio_io_t(0) => NLW_reset_sel_axi_mm_gpio_io_t_UNCONNECTED(0),
      s_axi_aclk => aclk_axi_mm,
      s_axi_araddr(8 downto 0) => intf_net_axi_interconnect_0_M11_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => net_rst_axi_mm_peripheral_aresetn,
      s_axi_arready => intf_net_axi_interconnect_0_M11_AXI_ARREADY,
      s_axi_arvalid => intf_net_axi_interconnect_0_M11_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M11_AXI_AWADDR(8 downto 0),
      s_axi_awready => intf_net_axi_interconnect_0_M11_AXI_AWREADY,
      s_axi_awvalid => intf_net_axi_interconnect_0_M11_AXI_AWVALID,
      s_axi_bready => intf_net_axi_interconnect_0_M11_AXI_BREADY,
      s_axi_bresp(1 downto 0) => intf_net_axi_interconnect_0_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => intf_net_axi_interconnect_0_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => intf_net_axi_interconnect_0_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => intf_net_axi_interconnect_0_M11_AXI_RREADY,
      s_axi_rresp(1 downto 0) => intf_net_axi_interconnect_0_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => intf_net_axi_interconnect_0_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => intf_net_axi_interconnect_0_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => intf_net_axi_interconnect_0_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => intf_net_axi_interconnect_0_M11_AXI_WVALID
    );
reset_sel_axis: component system_v_proc_ss_0_0_bd_2d50_reset_sel_axis_0
     port map (
      gpio_io_i(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      gpio_io_o(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      gpio_io_t(1 downto 0) => NLW_reset_sel_axis_gpio_io_t_UNCONNECTED(1 downto 0),
      s_axi_aclk => aclk_axis,
      s_axi_araddr(8 downto 0) => intf_net_axi_interconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => net_rst_axis_peripheral_aresetn,
      s_axi_arready => intf_net_axi_interconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => intf_net_axi_interconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => intf_net_axi_interconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => intf_net_axi_interconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => intf_net_axi_interconnect_0_M01_AXI_AWVALID,
      s_axi_bready => intf_net_axi_interconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => intf_net_axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => intf_net_axi_interconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => intf_net_axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => intf_net_axi_interconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => intf_net_axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => intf_net_axi_interconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => intf_net_axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => intf_net_axi_interconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => intf_net_axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => intf_net_axi_interconnect_0_M01_AXI_WVALID
    );
rst_axi_mm: component system_v_proc_ss_0_0_bd_2d50_rst_axi_mm_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_axi_mm_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn_ctrl,
      interconnect_aresetn(0) => NLW_rst_axi_mm_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_axi_mm_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => net_rst_axi_mm_peripheral_aresetn,
      peripheral_reset(0) => NLW_rst_axi_mm_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk_axi_mm
    );
rst_axis: component system_v_proc_ss_0_0_bd_2d50_rst_axis_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_axis_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn_ctrl,
      interconnect_aresetn(0) => NLW_rst_axis_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_axis_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => net_rst_axis_peripheral_aresetn,
      peripheral_reset(0) => NLW_rst_axis_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk_axis
    );
vcr_i: component system_v_proc_ss_0_0_bd_2d50_vcr_i_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_vcr_i_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_vcr_i_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_vcr_i_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_vcr_i_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_vcr_i_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_vcr_i_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_vcr_i_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_vcr_i_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_vcr_i_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_vcr_i_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(10 downto 0) => intf_net_axi_interconnect_0_M06_AXI_ARADDR(10 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M06_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M06_AXI_ARVALID,
      s_axi_CTRL_AWADDR(10 downto 0) => intf_net_axi_interconnect_0_M06_AXI_AWADDR(10 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M06_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M06_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M06_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M06_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M06_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M06_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M06_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M06_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M06_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M06_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M06_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M06_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M06_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M06_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M06_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M06_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M06_AXIS_TVALID
    );
vcr_o: component system_v_proc_ss_0_0_bd_2d50_vcr_o_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_vcr_o_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_vcr_o_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_vcr_o_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_vcr_o_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_vcr_o_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_vcr_o_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_vcr_o_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_vcr_o_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_vcr_o_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_vcr_o_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(10 downto 0) => intf_net_axi_interconnect_0_M07_AXI_ARADDR(10 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M07_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M07_AXI_ARVALID,
      s_axi_CTRL_AWADDR(10 downto 0) => intf_net_axi_interconnect_0_M07_AXI_AWADDR(10 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M07_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M07_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M07_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M07_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M07_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M07_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M07_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M07_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M07_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M07_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M07_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M07_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M07_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M07_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M07_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M07_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M07_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M07_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M07_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M07_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M07_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M07_AXIS_TVALID
    );
vdma_pad: component system_v_proc_ss_0_0_bd_2d50_vdma_pad_0
     port map (
      aclk => aclk_axi_mm,
      aresetn => net_reset_sel_axi_mm_gpio_io_o,
      m_axis_tdata(47 downto 0) => intf_net_vdma_pad_M_AXIS_TDATA(47 downto 0),
      m_axis_tkeep(5 downto 0) => intf_net_vdma_pad_M_AXIS_TKEEP(5 downto 0),
      m_axis_tlast => intf_net_vdma_pad_M_AXIS_TLAST,
      m_axis_tready => intf_net_vdma_pad_M_AXIS_TREADY,
      m_axis_tuser(5 downto 0) => intf_net_vdma_pad_M_AXIS_TUSER(5 downto 0),
      m_axis_tvalid => intf_net_vdma_pad_M_AXIS_TVALID,
      s_axis_tdata(47 downto 0) => intf_net_axi_vdma_M_AXIS_MM2S_TDATA(47 downto 0),
      s_axis_tkeep(5 downto 0) => intf_net_axi_vdma_M_AXIS_MM2S_TKEEP(5 downto 0),
      s_axis_tlast => intf_net_axi_vdma_M_AXIS_MM2S_TLAST,
      s_axis_tready => intf_net_axi_vdma_M_AXIS_MM2S_TREADY,
      s_axis_tuser(0) => intf_net_axi_vdma_M_AXIS_MM2S_TUSER,
      s_axis_tvalid => intf_net_axi_vdma_M_AXIS_MM2S_TVALID
    );
vdma_trunc: component system_v_proc_ss_0_0_bd_2d50_vdma_trunc_0
     port map (
      aclk => aclk_axi_mm,
      aresetn => net_reset_sel_axi_mm_gpio_io_o,
      m_axis_tdata(47 downto 0) => intf_net_vdma_trunc_M_AXIS_TDATA(47 downto 0),
      m_axis_tkeep(5 downto 0) => intf_net_vdma_trunc_M_AXIS_TKEEP(5 downto 0),
      m_axis_tlast => intf_net_vdma_trunc_M_AXIS_TLAST,
      m_axis_tready => intf_net_vdma_trunc_M_AXIS_TREADY,
      m_axis_tuser(5 downto 1) => NLW_vdma_trunc_m_axis_tuser_UNCONNECTED(5 downto 1),
      m_axis_tuser(0) => intf_net_vdma_trunc_M_AXIS_TUSER(0),
      m_axis_tvalid => intf_net_vdma_trunc_M_AXIS_TVALID,
      s_axis_tdata(47 downto 0) => intf_net_video_router_M03_AXIS_TDATA(47 downto 0),
      s_axis_tkeep(5 downto 0) => intf_net_video_router_M03_AXIS_TKEEP(5 downto 0),
      s_axis_tlast => intf_net_video_router_M03_AXIS_TLAST,
      s_axis_tready => intf_net_video_router_M03_AXIS_TREADY,
      s_axis_tuser(5 downto 0) => intf_net_video_router_M03_AXIS_TUSER(5 downto 0),
      s_axis_tvalid => intf_net_video_router_M03_AXIS_TVALID
    );
vid_in_aresetn: entity work.system_v_proc_ss_0_0_bd_2d50_vid_in_aresetn_0
     port map (
      Din(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      Dout(0) => aresetn_io_axis(0)
    );
video_router: entity work.system_v_proc_ss_0_0_bd_2d50_video_router_0
     port map (
      ACLK => aclk_axis,
      ARESETN => net_proc_ss_ip_aresetn_Dout,
      M00_AXIS_ACLK => aclk_axis,
      M00_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M00_AXIS_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      M00_AXIS_tdest(0) => m_axis_tdest(0),
      M00_AXIS_tid(0) => m_axis_tid(0),
      M00_AXIS_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      M00_AXIS_tlast => m_axis_tlast,
      M00_AXIS_tready => m_axis_tready,
      M00_AXIS_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      M00_AXIS_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      M00_AXIS_tvalid => m_axis_tvalid,
      M01_AXIS_ACLK => aclk_axis,
      M01_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M01_AXIS_tdata(23 downto 0) => intf_net_video_router_M01_AXIS_TDATA(23 downto 0),
      M01_AXIS_tdest(0) => intf_net_video_router_M01_AXIS_TDEST,
      M01_AXIS_tid(0) => intf_net_video_router_M01_AXIS_TID,
      M01_AXIS_tkeep(2 downto 0) => intf_net_video_router_M01_AXIS_TKEEP(2 downto 0),
      M01_AXIS_tlast => intf_net_video_router_M01_AXIS_TLAST,
      M01_AXIS_tready => intf_net_video_router_M01_AXIS_TREADY,
      M01_AXIS_tstrb(2 downto 0) => intf_net_video_router_M01_AXIS_TSTRB(2 downto 0),
      M01_AXIS_tuser(2 downto 1) => NLW_video_router_M01_AXIS_tuser_UNCONNECTED(2 downto 1),
      M01_AXIS_tuser(0) => intf_net_video_router_M01_AXIS_TUSER(0),
      M01_AXIS_tvalid => intf_net_video_router_M01_AXIS_TVALID,
      M02_AXIS_ACLK => aclk_axis,
      M02_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M02_AXIS_tdata(23 downto 0) => intf_net_video_router_M02_AXIS_TDATA(23 downto 0),
      M02_AXIS_tdest(0) => intf_net_video_router_M02_AXIS_TDEST,
      M02_AXIS_tid(0) => intf_net_video_router_M02_AXIS_TID,
      M02_AXIS_tkeep(2 downto 0) => intf_net_video_router_M02_AXIS_TKEEP(2 downto 0),
      M02_AXIS_tlast => intf_net_video_router_M02_AXIS_TLAST,
      M02_AXIS_tready => intf_net_video_router_M02_AXIS_TREADY,
      M02_AXIS_tstrb(2 downto 0) => intf_net_video_router_M02_AXIS_TSTRB(2 downto 0),
      M02_AXIS_tuser(2 downto 1) => NLW_video_router_M02_AXIS_tuser_UNCONNECTED(2 downto 1),
      M02_AXIS_tuser(0) => intf_net_video_router_M02_AXIS_TUSER(0),
      M02_AXIS_tvalid => intf_net_video_router_M02_AXIS_TVALID,
      M03_AXIS_ACLK => aclk_axi_mm,
      M03_AXIS_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      M03_AXIS_tdata(47 downto 0) => intf_net_video_router_M03_AXIS_TDATA(47 downto 0),
      M03_AXIS_tkeep(5 downto 0) => intf_net_video_router_M03_AXIS_TKEEP(5 downto 0),
      M03_AXIS_tlast => intf_net_video_router_M03_AXIS_TLAST,
      M03_AXIS_tready => intf_net_video_router_M03_AXIS_TREADY,
      M03_AXIS_tuser(5 downto 0) => intf_net_video_router_M03_AXIS_TUSER(5 downto 0),
      M03_AXIS_tvalid => intf_net_video_router_M03_AXIS_TVALID,
      M04_AXIS_ACLK => aclk_axis,
      M04_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M04_AXIS_tdata(23 downto 0) => intf_net_video_router_M04_AXIS_TDATA(23 downto 0),
      M04_AXIS_tdest(0) => intf_net_video_router_M04_AXIS_TDEST,
      M04_AXIS_tid(0) => intf_net_video_router_M04_AXIS_TID,
      M04_AXIS_tkeep(2 downto 0) => intf_net_video_router_M04_AXIS_TKEEP(2 downto 0),
      M04_AXIS_tlast => intf_net_video_router_M04_AXIS_TLAST,
      M04_AXIS_tready => intf_net_video_router_M04_AXIS_TREADY,
      M04_AXIS_tstrb(2 downto 0) => intf_net_video_router_M04_AXIS_TSTRB(2 downto 0),
      M04_AXIS_tuser(2 downto 1) => NLW_video_router_M04_AXIS_tuser_UNCONNECTED(2 downto 1),
      M04_AXIS_tuser(0) => intf_net_video_router_M04_AXIS_TUSER(0),
      M04_AXIS_tvalid => intf_net_video_router_M04_AXIS_TVALID,
      M05_AXIS_ACLK => aclk_axis,
      M05_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M05_AXIS_tdata(23 downto 0) => intf_net_video_router_M05_AXIS_TDATA(23 downto 0),
      M05_AXIS_tdest(0) => intf_net_video_router_M05_AXIS_TDEST,
      M05_AXIS_tid(0) => intf_net_video_router_M05_AXIS_TID,
      M05_AXIS_tkeep(2 downto 0) => intf_net_video_router_M05_AXIS_TKEEP(2 downto 0),
      M05_AXIS_tlast(0) => intf_net_video_router_M05_AXIS_TLAST,
      M05_AXIS_tready => intf_net_video_router_M05_AXIS_TREADY,
      M05_AXIS_tstrb(2 downto 0) => intf_net_video_router_M05_AXIS_TSTRB(2 downto 0),
      M05_AXIS_tuser(2 downto 1) => NLW_video_router_M05_AXIS_tuser_UNCONNECTED(2 downto 1),
      M05_AXIS_tuser(0) => intf_net_video_router_M05_AXIS_TUSER(0),
      M05_AXIS_tvalid => intf_net_video_router_M05_AXIS_TVALID,
      M06_AXIS_ACLK => aclk_axis,
      M06_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M06_AXIS_tdata(23 downto 0) => intf_net_video_router_M06_AXIS_TDATA(23 downto 0),
      M06_AXIS_tdest(0) => intf_net_video_router_M06_AXIS_TDEST,
      M06_AXIS_tid(0) => intf_net_video_router_M06_AXIS_TID,
      M06_AXIS_tkeep(2 downto 0) => intf_net_video_router_M06_AXIS_TKEEP(2 downto 0),
      M06_AXIS_tlast(0) => intf_net_video_router_M06_AXIS_TLAST,
      M06_AXIS_tready => intf_net_video_router_M06_AXIS_TREADY,
      M06_AXIS_tstrb(2 downto 0) => intf_net_video_router_M06_AXIS_TSTRB(2 downto 0),
      M06_AXIS_tuser(2 downto 1) => NLW_video_router_M06_AXIS_tuser_UNCONNECTED(2 downto 1),
      M06_AXIS_tuser(0) => intf_net_video_router_M06_AXIS_TUSER(0),
      M06_AXIS_tvalid => intf_net_video_router_M06_AXIS_TVALID,
      M07_AXIS_ACLK => aclk_axis,
      M07_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M07_AXIS_tdata(23 downto 0) => intf_net_video_router_M07_AXIS_TDATA(23 downto 0),
      M07_AXIS_tdest(0) => intf_net_video_router_M07_AXIS_TDEST,
      M07_AXIS_tid(0) => intf_net_video_router_M07_AXIS_TID,
      M07_AXIS_tkeep(2 downto 0) => intf_net_video_router_M07_AXIS_TKEEP(2 downto 0),
      M07_AXIS_tlast(0) => intf_net_video_router_M07_AXIS_TLAST,
      M07_AXIS_tready => intf_net_video_router_M07_AXIS_TREADY,
      M07_AXIS_tstrb(2 downto 0) => intf_net_video_router_M07_AXIS_TSTRB(2 downto 0),
      M07_AXIS_tuser(2 downto 1) => NLW_video_router_M07_AXIS_tuser_UNCONNECTED(2 downto 1),
      M07_AXIS_tuser(0) => intf_net_video_router_M07_AXIS_TUSER(0),
      M07_AXIS_tvalid => intf_net_video_router_M07_AXIS_TVALID,
      M08_AXIS_ACLK => aclk_axis,
      M08_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M08_AXIS_tdata(23 downto 0) => intf_net_video_router_M08_AXIS_TDATA(23 downto 0),
      M08_AXIS_tdest(0) => intf_net_video_router_M08_AXIS_TDEST,
      M08_AXIS_tid(0) => intf_net_video_router_M08_AXIS_TID,
      M08_AXIS_tkeep(2 downto 0) => intf_net_video_router_M08_AXIS_TKEEP(2 downto 0),
      M08_AXIS_tlast => intf_net_video_router_M08_AXIS_TLAST,
      M08_AXIS_tready => intf_net_video_router_M08_AXIS_TREADY,
      M08_AXIS_tstrb(2 downto 0) => intf_net_video_router_M08_AXIS_TSTRB(2 downto 0),
      M08_AXIS_tuser(2 downto 1) => NLW_video_router_M08_AXIS_tuser_UNCONNECTED(2 downto 1),
      M08_AXIS_tuser(0) => intf_net_video_router_M08_AXIS_TUSER(0),
      M08_AXIS_tvalid => intf_net_video_router_M08_AXIS_TVALID,
      M09_AXIS_ACLK => aclk_axis,
      M09_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M09_AXIS_tdata(23 downto 0) => intf_net_video_router_M09_AXIS_TDATA(23 downto 0),
      M09_AXIS_tdest(0) => intf_net_video_router_M09_AXIS_TDEST,
      M09_AXIS_tid(0) => intf_net_video_router_M09_AXIS_TID,
      M09_AXIS_tkeep(2 downto 0) => intf_net_video_router_M09_AXIS_TKEEP(2 downto 0),
      M09_AXIS_tlast => intf_net_video_router_M09_AXIS_TLAST,
      M09_AXIS_tready => intf_net_video_router_M09_AXIS_TREADY,
      M09_AXIS_tstrb(2 downto 0) => intf_net_video_router_M09_AXIS_TSTRB(2 downto 0),
      M09_AXIS_tuser(2 downto 0) => intf_net_video_router_M09_AXIS_TUSER(2 downto 0),
      M09_AXIS_tvalid => intf_net_video_router_M09_AXIS_TVALID,
      S00_AXIS_ACLK => aclk_axis,
      S00_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S00_AXIS_tdata(23 downto 0) => intf_net_input_size_set_M_AXIS_TDATA(23 downto 0),
      S00_AXIS_tdest(0) => intf_net_input_size_set_M_AXIS_TDEST,
      S00_AXIS_tid(0) => intf_net_input_size_set_M_AXIS_TID,
      S00_AXIS_tkeep(2 downto 0) => intf_net_input_size_set_M_AXIS_TKEEP(2 downto 0),
      S00_AXIS_tlast(0) => intf_net_input_size_set_M_AXIS_TLAST,
      S00_AXIS_tready(0) => intf_net_input_size_set_M_AXIS_TREADY,
      S00_AXIS_tstrb(2 downto 0) => intf_net_input_size_set_M_AXIS_TSTRB(2 downto 0),
      S00_AXIS_tuser(0) => intf_net_input_size_set_M_AXIS_TUSER,
      S00_AXIS_tvalid(0) => intf_net_input_size_set_M_AXIS_TVALID,
      S01_AXIS_ACLK => aclk_axis,
      S01_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S01_AXIS_tdata(23 downto 0) => intf_net_vsc_m_axis_video_TDATA(23 downto 0),
      S01_AXIS_tdest(0) => intf_net_vsc_m_axis_video_TDEST,
      S01_AXIS_tid(0) => intf_net_vsc_m_axis_video_TID,
      S01_AXIS_tkeep(2 downto 0) => intf_net_vsc_m_axis_video_TKEEP(2 downto 0),
      S01_AXIS_tlast(0) => intf_net_vsc_m_axis_video_TLAST,
      S01_AXIS_tready(0) => intf_net_vsc_m_axis_video_TREADY,
      S01_AXIS_tstrb(2 downto 0) => intf_net_vsc_m_axis_video_TSTRB(2 downto 0),
      S01_AXIS_tuser(0) => intf_net_vsc_m_axis_video_TUSER,
      S01_AXIS_tvalid(0) => intf_net_vsc_m_axis_video_TVALID,
      S02_AXIS_ACLK => aclk_axis,
      S02_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S02_AXIS_tdata(23 downto 0) => intf_net_hsc_m_axis_video_TDATA(23 downto 0),
      S02_AXIS_tdest(0) => intf_net_hsc_m_axis_video_TDEST,
      S02_AXIS_tid(0) => intf_net_hsc_m_axis_video_TID,
      S02_AXIS_tkeep(2 downto 0) => intf_net_hsc_m_axis_video_TKEEP(2 downto 0),
      S02_AXIS_tlast(0) => intf_net_hsc_m_axis_video_TLAST,
      S02_AXIS_tready(0) => intf_net_hsc_m_axis_video_TREADY,
      S02_AXIS_tstrb(2 downto 0) => intf_net_hsc_m_axis_video_TSTRB(2 downto 0),
      S02_AXIS_tuser(0) => intf_net_hsc_m_axis_video_TUSER,
      S02_AXIS_tvalid(0) => intf_net_hsc_m_axis_video_TVALID,
      S03_AXIS_ACLK => aclk_axi_mm,
      S03_AXIS_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      S03_AXIS_tdata(47 downto 0) => intf_net_vdma_pad_M_AXIS_TDATA(47 downto 0),
      S03_AXIS_tkeep(5 downto 0) => intf_net_vdma_pad_M_AXIS_TKEEP(5 downto 0),
      S03_AXIS_tlast => intf_net_vdma_pad_M_AXIS_TLAST,
      S03_AXIS_tready => intf_net_vdma_pad_M_AXIS_TREADY,
      S03_AXIS_tuser(5 downto 0) => intf_net_vdma_pad_M_AXIS_TUSER(5 downto 0),
      S03_AXIS_tvalid => intf_net_vdma_pad_M_AXIS_TVALID,
      S04_AXIS_ACLK => aclk_axis,
      S04_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S04_AXIS_tdata(23 downto 0) => intf_net_ltr_m_axis_video_TDATA(23 downto 0),
      S04_AXIS_tdest(0) => intf_net_ltr_m_axis_video_TDEST,
      S04_AXIS_tid(0) => intf_net_ltr_m_axis_video_TID,
      S04_AXIS_tkeep(2 downto 0) => intf_net_ltr_m_axis_video_TKEEP(2 downto 0),
      S04_AXIS_tlast(0) => intf_net_ltr_m_axis_video_TLAST,
      S04_AXIS_tready(0) => intf_net_ltr_m_axis_video_TREADY,
      S04_AXIS_tstrb(2 downto 0) => intf_net_ltr_m_axis_video_TSTRB(2 downto 0),
      S04_AXIS_tuser(0) => intf_net_ltr_m_axis_video_TUSER,
      S04_AXIS_tvalid(0) => intf_net_ltr_m_axis_video_TVALID,
      S05_AXIS_ACLK => aclk_axis,
      S05_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S05_AXIS_tdata(23 downto 0) => intf_net_hcr_m_axis_video_TDATA(23 downto 0),
      S05_AXIS_tdest(0) => intf_net_hcr_m_axis_video_TDEST,
      S05_AXIS_tid(0) => intf_net_hcr_m_axis_video_TID,
      S05_AXIS_tkeep(2 downto 0) => intf_net_hcr_m_axis_video_TKEEP(2 downto 0),
      S05_AXIS_tlast(0) => intf_net_hcr_m_axis_video_TLAST,
      S05_AXIS_tready => intf_net_hcr_m_axis_video_TREADY,
      S05_AXIS_tstrb(2 downto 0) => intf_net_hcr_m_axis_video_TSTRB(2 downto 0),
      S05_AXIS_tuser(0) => intf_net_hcr_m_axis_video_TUSER,
      S05_AXIS_tvalid => intf_net_hcr_m_axis_video_TVALID,
      S06_AXIS_ACLK => aclk_axis,
      S06_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S06_AXIS_tdata(23 downto 0) => intf_net_vcr_i_m_axis_video_TDATA(23 downto 0),
      S06_AXIS_tdest(0) => intf_net_vcr_i_m_axis_video_TDEST,
      S06_AXIS_tid(0) => intf_net_vcr_i_m_axis_video_TID,
      S06_AXIS_tkeep(2 downto 0) => intf_net_vcr_i_m_axis_video_TKEEP(2 downto 0),
      S06_AXIS_tlast(0) => intf_net_vcr_i_m_axis_video_TLAST,
      S06_AXIS_tready => intf_net_vcr_i_m_axis_video_TREADY,
      S06_AXIS_tstrb(2 downto 0) => intf_net_vcr_i_m_axis_video_TSTRB(2 downto 0),
      S06_AXIS_tuser(0) => intf_net_vcr_i_m_axis_video_TUSER,
      S06_AXIS_tvalid => intf_net_vcr_i_m_axis_video_TVALID,
      S07_AXIS_ACLK => aclk_axis,
      S07_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S07_AXIS_tdata(23 downto 0) => intf_net_vcr_o_m_axis_video_TDATA(23 downto 0),
      S07_AXIS_tdest(0) => intf_net_vcr_o_m_axis_video_TDEST,
      S07_AXIS_tid(0) => intf_net_vcr_o_m_axis_video_TID,
      S07_AXIS_tkeep(2 downto 0) => intf_net_vcr_o_m_axis_video_TKEEP(2 downto 0),
      S07_AXIS_tlast(0) => intf_net_vcr_o_m_axis_video_TLAST,
      S07_AXIS_tready => intf_net_vcr_o_m_axis_video_TREADY,
      S07_AXIS_tstrb(2 downto 0) => intf_net_vcr_o_m_axis_video_TSTRB(2 downto 0),
      S07_AXIS_tuser(0) => intf_net_vcr_o_m_axis_video_TUSER,
      S07_AXIS_tvalid => intf_net_vcr_o_m_axis_video_TVALID,
      S08_AXIS_ACLK => aclk_axis,
      S08_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S08_AXIS_tdata(23 downto 0) => intf_net_csc_m_axis_video_TDATA(23 downto 0),
      S08_AXIS_tdest(0) => intf_net_csc_m_axis_video_TDEST,
      S08_AXIS_tid(0) => intf_net_csc_m_axis_video_TID,
      S08_AXIS_tkeep(2 downto 0) => intf_net_csc_m_axis_video_TKEEP(2 downto 0),
      S08_AXIS_tlast(0) => intf_net_csc_m_axis_video_TLAST,
      S08_AXIS_tready(0) => intf_net_csc_m_axis_video_TREADY,
      S08_AXIS_tstrb(2 downto 0) => intf_net_csc_m_axis_video_TSTRB(2 downto 0),
      S08_AXIS_tuser(0) => intf_net_csc_m_axis_video_TUSER,
      S08_AXIS_tvalid(0) => intf_net_csc_m_axis_video_TVALID,
      S09_AXIS_ACLK => aclk_axi_mm,
      S09_AXIS_ARESETN => net_reset_sel_axi_mm_gpio_io_o,
      S09_AXIS_tdata(23 downto 0) => intf_net_dint_m_axis_video_TDATA(23 downto 0),
      S09_AXIS_tdest => intf_net_dint_m_axis_video_TDEST,
      S09_AXIS_tid => intf_net_dint_m_axis_video_TID,
      S09_AXIS_tkeep(2 downto 0) => intf_net_dint_m_axis_video_TKEEP(2 downto 0),
      S09_AXIS_tlast => intf_net_dint_m_axis_video_TLAST,
      S09_AXIS_tready => intf_net_dint_m_axis_video_TREADY,
      S09_AXIS_tstrb(2 downto 0) => intf_net_dint_m_axis_video_TSTRB(2 downto 0),
      S09_AXIS_tuser => intf_net_dint_m_axis_video_TUSER,
      S09_AXIS_tvalid => intf_net_dint_m_axis_video_TVALID,
      S_AXI_CTRL_ACLK => aclk_ctrl,
      S_AXI_CTRL_ARESETN => aresetn_ctrl,
      S_AXI_CTRL_araddr(19 downto 0) => intf_net_axi_interconnect_0_M00_AXI_ARADDR(19 downto 0),
      S_AXI_CTRL_arready => intf_net_axi_interconnect_0_M00_AXI_ARREADY,
      S_AXI_CTRL_arvalid => intf_net_axi_interconnect_0_M00_AXI_ARVALID,
      S_AXI_CTRL_awaddr(19 downto 0) => intf_net_axi_interconnect_0_M00_AXI_AWADDR(19 downto 0),
      S_AXI_CTRL_awready => intf_net_axi_interconnect_0_M00_AXI_AWREADY,
      S_AXI_CTRL_awvalid => intf_net_axi_interconnect_0_M00_AXI_AWVALID,
      S_AXI_CTRL_bready => intf_net_axi_interconnect_0_M00_AXI_BREADY,
      S_AXI_CTRL_bresp(1 downto 0) => intf_net_axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_CTRL_bvalid => intf_net_axi_interconnect_0_M00_AXI_BVALID,
      S_AXI_CTRL_rdata(31 downto 0) => intf_net_axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_CTRL_rready => intf_net_axi_interconnect_0_M00_AXI_RREADY,
      S_AXI_CTRL_rresp(1 downto 0) => intf_net_axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_CTRL_rvalid => intf_net_axi_interconnect_0_M00_AXI_RVALID,
      S_AXI_CTRL_wdata(31 downto 0) => intf_net_axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_CTRL_wready => intf_net_axi_interconnect_0_M00_AXI_WREADY,
      S_AXI_CTRL_wvalid => intf_net_axi_interconnect_0_M00_AXI_WVALID
    );
vsc: component system_v_proc_ss_0_0_bd_2d50_vsc_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_vsc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_vsc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_vsc_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_vsc_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_vsc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_vsc_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_vsc_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_vsc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_vsc_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_vsc_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(11 downto 0) => intf_net_axi_interconnect_0_M02_AXI_ARADDR(11 downto 0),
      s_axi_CTRL_ARREADY => intf_net_axi_interconnect_0_M02_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_axi_interconnect_0_M02_AXI_ARVALID,
      s_axi_CTRL_AWADDR(11 downto 0) => intf_net_axi_interconnect_0_M02_AXI_AWADDR(11 downto 0),
      s_axi_CTRL_AWREADY => intf_net_axi_interconnect_0_M02_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_axi_interconnect_0_M02_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_axi_interconnect_0_M02_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_axi_interconnect_0_M02_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_axi_interconnect_0_M02_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_axi_interconnect_0_M02_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_axi_interconnect_0_M02_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_axi_interconnect_0_M02_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M01_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M01_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M01_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M01_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M01_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M01_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M01_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M01_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M01_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_v_proc_ss_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_v_proc_ss_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_v_proc_ss_0_0 : entity is "system_v_proc_ss_0_0,bd_2d50,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_v_proc_ss_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_v_proc_ss_0_0 : entity is "bd_2d50,Vivado 2018.3";
end system_v_proc_ss_0_0;

architecture STRUCTURE of system_v_proc_ss_0_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "system_v_proc_ss_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_axi_mm : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_axi_mm CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_axi_mm : signal is "XIL_INTERFACENAME CLK.aclk_axi_mm, ASSOCIATED_RESET aresetn_axi_mm, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF m_axi_mm, INSERT_VIP 0, ASSOCIATED_CLKEN m_axis_aclken";
  attribute X_INTERFACE_INFO of aclk_axis : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_axis CLK";
  attribute X_INTERFACE_PARAMETER of aclk_axis : signal is "XIL_INTERFACENAME CLK.aclk_axis, ASSOCIATED_RESET aresetn_io_axis, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF m_axis:s_axis, INSERT_VIP 0, ASSOCIATED_CLKEN s_axis_aclken";
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.aclk_ctrl, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF s_axi_ctrl, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_io_axis : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_io_axis RST";
  attribute X_INTERFACE_PARAMETER of aresetn_io_axis : signal is "XIL_INTERFACENAME RST.aresetn_io_axis, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_mm_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARADDR";
  attribute X_INTERFACE_INFO of m_axi_mm_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARBURST";
  attribute X_INTERFACE_INFO of m_axi_mm_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_mm_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARID";
  attribute X_INTERFACE_INFO of m_axi_mm_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARLEN";
  attribute X_INTERFACE_INFO of m_axi_mm_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_mm_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARPROT";
  attribute X_INTERFACE_INFO of m_axi_mm_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARQOS";
  attribute X_INTERFACE_INFO of m_axi_mm_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_arregion : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARREGION";
  attribute X_INTERFACE_INFO of m_axi_mm_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_mm_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm ARVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWADDR";
  attribute X_INTERFACE_INFO of m_axi_mm_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWBURST";
  attribute X_INTERFACE_INFO of m_axi_mm_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_mm_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWID";
  attribute X_INTERFACE_INFO of m_axi_mm_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWLEN";
  attribute X_INTERFACE_INFO of m_axi_mm_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_mm_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWPROT";
  attribute X_INTERFACE_INFO of m_axi_mm_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWQOS";
  attribute X_INTERFACE_INFO of m_axi_mm_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_awregion : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWREGION";
  attribute X_INTERFACE_INFO of m_axi_mm_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_mm_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm AWVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BID";
  attribute X_INTERFACE_INFO of m_axi_mm_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BRESP";
  attribute X_INTERFACE_INFO of m_axi_mm_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm BVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RDATA";
  attribute X_INTERFACE_INFO of m_axi_mm_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RID";
  attribute X_INTERFACE_PARAMETER of m_axi_mm_rid : signal is "XIL_INTERFACENAME m_axi_mm, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 133333344, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_mm_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RLAST";
  attribute X_INTERFACE_INFO of m_axi_mm_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RRESP";
  attribute X_INTERFACE_INFO of m_axi_mm_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm RVALID";
  attribute X_INTERFACE_INFO of m_axi_mm_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WDATA";
  attribute X_INTERFACE_INFO of m_axi_mm_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WLAST";
  attribute X_INTERFACE_INFO of m_axi_mm_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WREADY";
  attribute X_INTERFACE_INFO of m_axi_mm_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WSTRB";
  attribute X_INTERFACE_INFO of m_axi_mm_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_mm WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m_axis TDEST";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 3, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 133333344, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_rready : signal is "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 133333344, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
inst: entity work.system_v_proc_ss_0_0_bd_2d50
     port map (
      aclk_axi_mm => aclk_axi_mm,
      aclk_axis => aclk_axis,
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      aresetn_io_axis(0) => aresetn_io_axis(0),
      deint_field_id => deint_field_id,
      m_axi_mm_araddr(31 downto 0) => m_axi_mm_araddr(31 downto 0),
      m_axi_mm_arburst(1 downto 0) => m_axi_mm_arburst(1 downto 0),
      m_axi_mm_arcache(3 downto 0) => m_axi_mm_arcache(3 downto 0),
      m_axi_mm_arid(1 downto 0) => m_axi_mm_arid(1 downto 0),
      m_axi_mm_arlen(7 downto 0) => m_axi_mm_arlen(7 downto 0),
      m_axi_mm_arlock(0) => m_axi_mm_arlock(0),
      m_axi_mm_arprot(2 downto 0) => m_axi_mm_arprot(2 downto 0),
      m_axi_mm_arqos(3 downto 0) => m_axi_mm_arqos(3 downto 0),
      m_axi_mm_arready(0) => m_axi_mm_arready(0),
      m_axi_mm_arregion(3 downto 0) => m_axi_mm_arregion(3 downto 0),
      m_axi_mm_arsize(2 downto 0) => m_axi_mm_arsize(2 downto 0),
      m_axi_mm_arvalid(0) => m_axi_mm_arvalid(0),
      m_axi_mm_awaddr(31 downto 0) => m_axi_mm_awaddr(31 downto 0),
      m_axi_mm_awburst(1 downto 0) => m_axi_mm_awburst(1 downto 0),
      m_axi_mm_awcache(3 downto 0) => m_axi_mm_awcache(3 downto 0),
      m_axi_mm_awid(1 downto 0) => m_axi_mm_awid(1 downto 0),
      m_axi_mm_awlen(7 downto 0) => m_axi_mm_awlen(7 downto 0),
      m_axi_mm_awlock(0) => m_axi_mm_awlock(0),
      m_axi_mm_awprot(2 downto 0) => m_axi_mm_awprot(2 downto 0),
      m_axi_mm_awqos(3 downto 0) => m_axi_mm_awqos(3 downto 0),
      m_axi_mm_awready(0) => m_axi_mm_awready(0),
      m_axi_mm_awregion(3 downto 0) => m_axi_mm_awregion(3 downto 0),
      m_axi_mm_awsize(2 downto 0) => m_axi_mm_awsize(2 downto 0),
      m_axi_mm_awvalid(0) => m_axi_mm_awvalid(0),
      m_axi_mm_bid(1 downto 0) => m_axi_mm_bid(1 downto 0),
      m_axi_mm_bready(0) => m_axi_mm_bready(0),
      m_axi_mm_bresp(1 downto 0) => m_axi_mm_bresp(1 downto 0),
      m_axi_mm_bvalid(0) => m_axi_mm_bvalid(0),
      m_axi_mm_rdata(255 downto 0) => m_axi_mm_rdata(255 downto 0),
      m_axi_mm_rid(1 downto 0) => m_axi_mm_rid(1 downto 0),
      m_axi_mm_rlast(0) => m_axi_mm_rlast(0),
      m_axi_mm_rready(0) => m_axi_mm_rready(0),
      m_axi_mm_rresp(1 downto 0) => m_axi_mm_rresp(1 downto 0),
      m_axi_mm_rvalid(0) => m_axi_mm_rvalid(0),
      m_axi_mm_wdata(255 downto 0) => m_axi_mm_wdata(255 downto 0),
      m_axi_mm_wlast(0) => m_axi_mm_wlast(0),
      m_axi_mm_wready(0) => m_axi_mm_wready(0),
      m_axi_mm_wstrb(31 downto 0) => m_axi_mm_wstrb(31 downto 0),
      m_axi_mm_wvalid(0) => m_axi_mm_wvalid(0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      s_axi_ctrl_araddr(19 downto 0) => s_axi_ctrl_araddr(19 downto 0),
      s_axi_ctrl_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      s_axi_ctrl_arready(0) => s_axi_ctrl_arready(0),
      s_axi_ctrl_arvalid(0) => s_axi_ctrl_arvalid(0),
      s_axi_ctrl_awaddr(19 downto 0) => s_axi_ctrl_awaddr(19 downto 0),
      s_axi_ctrl_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      s_axi_ctrl_awready(0) => s_axi_ctrl_awready(0),
      s_axi_ctrl_awvalid(0) => s_axi_ctrl_awvalid(0),
      s_axi_ctrl_bready(0) => s_axi_ctrl_bready(0),
      s_axi_ctrl_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      s_axi_ctrl_bvalid(0) => s_axi_ctrl_bvalid(0),
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready(0) => s_axi_ctrl_rready(0),
      s_axi_ctrl_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      s_axi_ctrl_rvalid(0) => s_axi_ctrl_rvalid(0),
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wready(0) => s_axi_ctrl_wready(0),
      s_axi_ctrl_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      s_axi_ctrl_wvalid(0) => s_axi_ctrl_wvalid(0),
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tid(0) => s_axis_tid(0),
      s_axis_tkeep(2 downto 0) => s_axis_tkeep(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => s_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
