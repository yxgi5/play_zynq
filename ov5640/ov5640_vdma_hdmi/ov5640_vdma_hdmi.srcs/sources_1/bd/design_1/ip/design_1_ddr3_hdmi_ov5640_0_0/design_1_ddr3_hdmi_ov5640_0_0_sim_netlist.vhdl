-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Apr 14 22:48:12 2021
-- Host        : archlinux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/andy/workdir/microphase/20_ov5640_hdmi/ov5640_hdmi/ov5640_hdmi.srcs/sources_1/bd/design_1/ip/design_1_ddr3_hdmi_ov5640_0_0/design_1_ddr3_hdmi_ov5640_0_0_sim_netlist.vhdl
-- Design      : design_1_ddr3_hdmi_ov5640_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture is
  port (
    capture_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cmos_clk_en : out STD_LOGIC;
    rst : in STD_LOGIC;
    cmos_pclk : in STD_LOGIC;
    cmos_href : in STD_LOGIC;
    cmos_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmos_vsync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture : entity is "cmos_img_capture";
end design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture;

architecture STRUCTURE of design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture is
  signal \^capture_data\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cmos_capture_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \cmos_capture_data[9]_i_1_n_0\ : STD_LOGIC;
  signal cmos_data_vld_r : STD_LOGIC;
  signal \cmos_vsync_dd_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_data[0]_i_1_n_0\ : STD_LOGIC;
  signal cnt_data_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ready : STD_LOGIC;
  signal \ready_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmos_capture_data[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cmos_capture_data[10]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cmos_capture_data[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cmos_capture_data[12]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cmos_capture_data[13]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cmos_capture_data[14]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cmos_capture_data[15]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cmos_capture_data[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cmos_capture_data[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cmos_capture_data[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cmos_capture_data[4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cmos_capture_data[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cmos_capture_data[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cmos_capture_data[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cmos_capture_data[8]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cmos_capture_data[9]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of cmos_clk_en_INST_0 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_data[0]_i_1\ : label is "soft_lutpair48";
begin
  capture_data(15 downto 0) <= \^capture_data\(15 downto 0);
\cmos_capture_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(0),
      O => \cmos_capture_data[0]_i_1_n_0\
    );
\cmos_capture_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(2),
      O => \cmos_capture_data[10]_i_1_n_0\
    );
\cmos_capture_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(3),
      O => \cmos_capture_data[11]_i_1_n_0\
    );
\cmos_capture_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(4),
      O => \cmos_capture_data[12]_i_1_n_0\
    );
\cmos_capture_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(5),
      O => \cmos_capture_data[13]_i_1_n_0\
    );
\cmos_capture_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(6),
      O => \cmos_capture_data[14]_i_1_n_0\
    );
\cmos_capture_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(7),
      O => \cmos_capture_data[15]_i_1_n_0\
    );
\cmos_capture_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(1),
      O => \cmos_capture_data[1]_i_1_n_0\
    );
\cmos_capture_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(2),
      O => \cmos_capture_data[2]_i_1_n_0\
    );
\cmos_capture_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(3),
      O => \cmos_capture_data[3]_i_1_n_0\
    );
\cmos_capture_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(4),
      O => \cmos_capture_data[4]_i_1_n_0\
    );
\cmos_capture_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(5),
      O => \cmos_capture_data[5]_i_1_n_0\
    );
\cmos_capture_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(6),
      O => \cmos_capture_data[6]_i_1_n_0\
    );
\cmos_capture_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => cmos_data(7),
      O => \cmos_capture_data[7]_i_1_n_0\
    );
\cmos_capture_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(0),
      O => \cmos_capture_data[8]_i_1_n_0\
    );
\cmos_capture_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => cmos_href,
      I2 => \^capture_data\(1),
      O => \cmos_capture_data[9]_i_1_n_0\
    );
\cmos_capture_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[0]_i_1_n_0\,
      Q => \^capture_data\(0),
      R => rst
    );
\cmos_capture_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[10]_i_1_n_0\,
      Q => \^capture_data\(10),
      R => rst
    );
\cmos_capture_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[11]_i_1_n_0\,
      Q => \^capture_data\(11),
      R => rst
    );
\cmos_capture_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[12]_i_1_n_0\,
      Q => \^capture_data\(12),
      R => rst
    );
\cmos_capture_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[13]_i_1_n_0\,
      Q => \^capture_data\(13),
      R => rst
    );
\cmos_capture_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[14]_i_1_n_0\,
      Q => \^capture_data\(14),
      R => rst
    );
\cmos_capture_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[15]_i_1_n_0\,
      Q => \^capture_data\(15),
      R => rst
    );
\cmos_capture_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[1]_i_1_n_0\,
      Q => \^capture_data\(1),
      R => rst
    );
\cmos_capture_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[2]_i_1_n_0\,
      Q => \^capture_data\(2),
      R => rst
    );
\cmos_capture_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[3]_i_1_n_0\,
      Q => \^capture_data\(3),
      R => rst
    );
\cmos_capture_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[4]_i_1_n_0\,
      Q => \^capture_data\(4),
      R => rst
    );
\cmos_capture_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[5]_i_1_n_0\,
      Q => \^capture_data\(5),
      R => rst
    );
\cmos_capture_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[6]_i_1_n_0\,
      Q => \^capture_data\(6),
      R => rst
    );
\cmos_capture_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[7]_i_1_n_0\,
      Q => \^capture_data\(7),
      R => rst
    );
\cmos_capture_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[8]_i_1_n_0\,
      Q => \^capture_data\(8),
      R => rst
    );
\cmos_capture_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cmos_capture_data[9]_i_1_n_0\,
      Q => \^capture_data\(9),
      R => rst
    );
cmos_clk_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cmos_data_vld_r,
      I1 => cmos_href,
      O => cmos_clk_en
    );
cmos_data_vld_r_reg: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => cnt_data_reg(0),
      Q => cmos_data_vld_r,
      R => rst
    );
\cmos_vsync_dd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => cmos_vsync,
      Q => p_1_in(1),
      R => rst
    );
\cmos_vsync_dd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => p_1_in(1),
      Q => \cmos_vsync_dd_reg_n_0_[1]\,
      R => rst
    );
\cnt_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => cmos_href,
      I1 => ready,
      I2 => rst,
      I3 => cnt_data_reg(0),
      O => \cnt_data[0]_i_1_n_0\
    );
\cnt_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \cnt_data[0]_i_1_n_0\,
      Q => cnt_data_reg(0),
      R => '0'
    );
\ready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \cmos_vsync_dd_reg_n_0_[1]\,
      I1 => p_1_in(1),
      I2 => ready,
      O => \ready_i_1__0_n_0\
    );
ready_reg: unisim.vcomponents.FDRE
     port map (
      C => cmos_pclk,
      CE => '1',
      D => \ready_i_1__0_n_0\,
      Q => ready,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ddr3_hdmi_ov5640_0_0_sccb_driver is
  port (
    cmos_scl : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_req_reg : out STD_LOGIC;
    wr_done_reg_0 : out STD_LOGIC;
    wr_done_reg_1 : out STD_LOGIC;
    cmos_sda : inout STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_req : in STD_LOGIC;
    start : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    wr_req0 : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ddr3_hdmi_ov5640_0_0_sccb_driver : entity is "sccb_driver";
end design_1_ddr3_hdmi_ov5640_0_0_sccb_driver;

architecture STRUCTURE of design_1_ddr3_hdmi_ov5640_0_0_sccb_driver is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \ack_flag0__0\ : STD_LOGIC;
  signal ack_flag_i_1_n_0 : STD_LOGIC;
  signal ack_flag_i_2_n_0 : STD_LOGIC;
  signal ack_flag_i_3_n_0 : STD_LOGIC;
  signal ack_flag_i_4_n_0 : STD_LOGIC;
  signal ack_flag_i_5_n_0 : STD_LOGIC;
  signal ack_flag_reg_n_0 : STD_LOGIC;
  signal \^cmos_scl\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal cnt_byte : STD_LOGIC;
  signal cnt_byte_i_1_n_0 : STD_LOGIC;
  signal \cnt_flag[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_flag[5]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_flag[5]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_flag[5]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_flag_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cnt_freq : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_freq[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_freq[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_freq[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal data_shift : STD_LOGIC;
  signal \data_shift044_out__1\ : STD_LOGIC;
  signal \data_shift125_out__0\ : STD_LOGIC;
  signal \data_shift127_out__0\ : STD_LOGIC;
  signal \data_shift1__0\ : STD_LOGIC;
  signal \data_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_11_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal drive_flag : STD_LOGIC;
  signal drive_flag0 : STD_LOGIC;
  signal drive_flag_i_2_n_0 : STD_LOGIC;
  signal drive_flag_i_3_n_0 : STD_LOGIC;
  signal drive_flag_i_5_n_0 : STD_LOGIC;
  signal drive_flag_i_6_n_0 : STD_LOGIC;
  signal \end_cnt_flag__0\ : STD_LOGIC;
  signal \end_cnt_freq__0\ : STD_LOGIC;
  signal in19 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in20 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal p_2_in6_in : STD_LOGIC;
  signal p_32_in : STD_LOGIC;
  signal p_45_in : STD_LOGIC;
  signal \scl1__0\ : STD_LOGIC;
  signal \scl3_out__1\ : STD_LOGIC;
  signal scl_i_1_n_0 : STD_LOGIC;
  signal scl_i_6_n_0 : STD_LOGIC;
  signal \state141_out__0\ : STD_LOGIC;
  signal \state142_out__0\ : STD_LOGIC;
  signal \state1__0\ : STD_LOGIC;
  signal state_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal work_flag_i_1_n_0 : STD_LOGIC;
  signal work_flag_reg_n_0 : STD_LOGIC;
  signal wr_done : STD_LOGIC;
  signal \wr_done1__0\ : STD_LOGIC;
  signal wr_done_i_1_n_0 : STD_LOGIC;
  signal wr_en_i_1_n_0 : STD_LOGIC;
  signal wr_en_reg_n_0 : STD_LOGIC;
  signal \wr_sda1__0\ : STD_LOGIC;
  signal wr_sda6_in : STD_LOGIC;
  signal wr_sda_i_10_n_0 : STD_LOGIC;
  signal wr_sda_i_11_n_0 : STD_LOGIC;
  signal wr_sda_i_12_n_0 : STD_LOGIC;
  signal wr_sda_i_13_n_0 : STD_LOGIC;
  signal wr_sda_i_1_n_0 : STD_LOGIC;
  signal wr_sda_i_2_n_0 : STD_LOGIC;
  signal wr_sda_i_3_n_0 : STD_LOGIC;
  signal wr_sda_i_4_n_0 : STD_LOGIC;
  signal wr_sda_i_5_n_0 : STD_LOGIC;
  signal wr_sda_i_6_n_0 : STD_LOGIC;
  signal wr_sda_i_9_n_0 : STD_LOGIC;
  signal wr_sda_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_7\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "WR_DEV:0000,RD_DATA:0011,WR_START:0101,RD_DEV:0110,WR_DATA:0111,IDLE:1000,RD_START:1001,iSTATE:0010,WR_MEM:0001,STOP:0100";
  attribute SOFT_HLUTNM of ack_flag_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[9]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_flag[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_flag[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_flag[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_flag[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_flag[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_flag[5]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_freq[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_freq[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_shift[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_shift[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_shift[4]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_shift[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_shift[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_shift[7]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_shift[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_shift[7]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_shift[7]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of drive_flag_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of scl_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of scl_i_5 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of scl_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of wr_done_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of wr_done_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_index[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of wr_sda_i_11 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of wr_sda_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of wr_sda_i_7 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of wr_sda_i_8 : label is "soft_lutpair13";
begin
  cmos_scl <= \^cmos_scl\;
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"220CFFFF220C0000"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \state141_out__0\,
      I4 => state_0(1),
      I5 => \FSM_sequential_state[0]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => wr_req,
      I1 => start,
      I2 => state_0(1),
      I3 => state_0(2),
      I4 => state_0(0),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477333344770000"
    )
        port map (
      I0 => \state142_out__0\,
      I1 => state_0(2),
      I2 => cnt_byte,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => state_0(0),
      I5 => \state141_out__0\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EEE2E22"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state_0(1),
      I2 => \state141_out__0\,
      I3 => state_0(0),
      I4 => state_0(2),
      I5 => state_0(3),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4C444C4"
    )
        port map (
      I0 => \state141_out__0\,
      I1 => \FSM_sequential_state[2]_i_5_n_0\,
      I2 => state_0(0),
      I3 => cnt_byte,
      I4 => wr_req,
      I5 => state_0(2),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ack_flag_reg_n_0,
      I1 => drive_flag,
      I2 => \cnt_flag_reg__0\(5),
      I3 => \cnt_flag_reg__0\(1),
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \cnt_flag_reg__0\(0),
      O => \state141_out__0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_flag_reg__0\(2),
      I1 => \cnt_flag_reg__0\(4),
      I2 => \cnt_flag_reg__0\(3),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => state_0(2),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => state_0(3),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => state_0(1),
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FFFFFF"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(2),
      I2 => state_0(1),
      I3 => start,
      I4 => wr_req,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => state_0(2),
      I2 => \state141_out__0\,
      I3 => state_0(0),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F30503050305030"
    )
        port map (
      I0 => \state142_out__0\,
      I1 => p_45_in,
      I2 => state_0(2),
      I3 => state_0(0),
      I4 => wr_req,
      I5 => \state1__0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => drive_flag,
      I1 => \cnt_flag_reg__0\(5),
      I2 => \cnt_flag_reg__0\(1),
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => \cnt_flag_reg__0\(0),
      I5 => ack_flag_reg_n_0,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => drive_flag,
      I1 => \FSM_sequential_state[2]_i_7_n_0\,
      I2 => \cnt_flag_reg__0\(1),
      O => \state142_out__0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => \cnt_flag_reg__0\(0),
      I2 => \cnt_flag_reg__0\(2),
      I3 => \cnt_flag_reg__0\(3),
      I4 => \cnt_flag_reg__0\(4),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(1),
      I2 => \state1__0\,
      I3 => wr_req,
      I4 => state_0(2),
      I5 => state_0(3),
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_byte,
      I1 => \state141_out__0\,
      O => \state1__0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004A004A054A004A"
    )
        port map (
      I0 => state_0(1),
      I1 => p_45_in,
      I2 => state_0(2),
      I3 => state_0(0),
      I4 => \state1__0\,
      I5 => wr_req,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => wr_req,
      I1 => start,
      I2 => state_0(0),
      I3 => state_0(2),
      I4 => state_0(1),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_7_n_0\,
      I1 => \cnt_flag_reg__0\(1),
      I2 => drive_flag,
      O => p_45_in
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \cnt_flag_reg__0\(0),
      I1 => \cnt_flag_reg__0\(5),
      I2 => \cnt_flag_reg__0\(2),
      I3 => \cnt_flag_reg__0\(4),
      I4 => \cnt_flag_reg__0\(3),
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \FSM_sequential_state_reg[0]_i_1_n_0\,
      Q => state_0(0),
      R => rst
    );
\FSM_sequential_state_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      O => \FSM_sequential_state_reg[0]_i_1_n_0\,
      S => state_0(3)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state_0(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state_0(2),
      R => rst
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \FSM_sequential_state_reg[3]_i_2_n_0\,
      Q => state_0(3),
      S => rst
    );
\FSM_sequential_state_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \FSM_sequential_state[3]_i_5_n_0\,
      O => \FSM_sequential_state_reg[3]_i_2_n_0\,
      S => state_0(3)
    );
ack_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => ack_flag_i_2_n_0,
      I1 => ack_flag_i_3_n_0,
      I2 => ack_flag_i_4_n_0,
      I3 => ack_flag_reg_n_0,
      O => ack_flag_i_1_n_0
    );
ack_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D4848484"
    )
        port map (
      I0 => state_0(2),
      I1 => ack_flag_i_5_n_0,
      I2 => state_0(1),
      I3 => \ack_flag0__0\,
      I4 => state_0(0),
      I5 => state_0(3),
      O => ack_flag_i_2_n_0
    );
ack_flag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(2),
      I2 => \end_cnt_flag__0\,
      I3 => \ack_flag0__0\,
      I4 => state_0(3),
      I5 => state_0(0),
      O => ack_flag_i_3_n_0
    );
ack_flag_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBE"
    )
        port map (
      I0 => state_0(3),
      I1 => state_0(1),
      I2 => state_0(2),
      I3 => ack_flag_i_5_n_0,
      I4 => \end_cnt_flag__0\,
      O => ack_flag_i_4_n_0
    );
ack_flag_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => drive_flag,
      I2 => \cnt_flag_reg__0\(0),
      I3 => \cnt_flag_reg__0\(1),
      I4 => cmos_sda,
      O => ack_flag_i_5_n_0
    );
ack_flag_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => drive_flag,
      I2 => \cnt_flag_reg__0\(0),
      I3 => \cnt_flag_reg__0\(1),
      I4 => cmos_sda,
      O => \ack_flag0__0\
    );
ack_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_flag_i_1_n_0,
      Q => ack_flag_reg_n_0,
      R => rst
    );
cmos_sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr_sda_reg_n_0,
      I1 => wr_en_reg_n_0,
      O => cmos_sda
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(4),
      I5 => \cnt_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[9]_i_3_n_0\,
      I1 => \cnt_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[9]_i_3_n_0\,
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(6),
      I1 => \cnt[9]_i_3_n_0\,
      I2 => \cnt_reg__0\(7),
      I3 => \cnt_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rst,
      I1 => work_flag_reg_n_0,
      I2 => drive_flag_i_2_n_0,
      O => \cnt[9]_i_1_n_0\
    );
\cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(7),
      I1 => \cnt[9]_i_3_n_0\,
      I2 => \cnt_reg__0\(6),
      I3 => \cnt_reg__0\(8),
      I4 => \cnt_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(2),
      I5 => \cnt_reg__0\(4),
      O => \cnt[9]_i_3_n_0\
    );
cnt_byte_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF00020000"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(3),
      I2 => state_0(1),
      I3 => state_0(2),
      I4 => \end_cnt_flag__0\,
      I5 => cnt_byte,
      O => cnt_byte_i_1_n_0
    );
cnt_byte_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_byte_i_1_n_0,
      Q => cnt_byte,
      R => rst
    );
\cnt_flag[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_flag_reg__0\(0),
      O => p_0_in(0)
    );
\cnt_flag[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_flag_reg__0\(0),
      I1 => \cnt_flag_reg__0\(1),
      O => p_0_in(1)
    );
\cnt_flag[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_flag_reg__0\(0),
      I1 => \cnt_flag_reg__0\(1),
      I2 => \cnt_flag_reg__0\(2),
      O => p_0_in(2)
    );
\cnt_flag[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_flag_reg__0\(1),
      I1 => \cnt_flag_reg__0\(0),
      I2 => \cnt_flag_reg__0\(2),
      I3 => \cnt_flag_reg__0\(3),
      O => p_0_in(3)
    );
\cnt_flag[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_flag_reg__0\(2),
      I1 => \cnt_flag_reg__0\(0),
      I2 => \cnt_flag_reg__0\(1),
      I3 => \cnt_flag_reg__0\(3),
      I4 => \cnt_flag_reg__0\(4),
      O => p_0_in(4)
    );
\cnt_flag[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => rst,
      I1 => work_flag_reg_n_0,
      I2 => drive_flag,
      I3 => \end_cnt_flag__0\,
      O => \cnt_flag[5]_i_1_n_0\
    );
\cnt_flag[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_flag_reg__0\(3),
      I1 => \cnt_flag_reg__0\(1),
      I2 => \cnt_flag_reg__0\(0),
      I3 => \cnt_flag_reg__0\(2),
      I4 => \cnt_flag_reg__0\(4),
      I5 => \cnt_flag_reg__0\(5),
      O => p_0_in(5)
    );
\cnt_flag[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \cnt_flag[5]_i_4_n_0\,
      I1 => \cnt_flag_reg__0\(3),
      I2 => \cnt_flag[5]_i_5_n_0\,
      I3 => \cnt_flag[5]_i_6_n_0\,
      I4 => drive_flag,
      O => \end_cnt_flag__0\
    );
\cnt_flag[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555A59A"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => state_0(2),
      I4 => state_0(3),
      I5 => \cnt_flag_reg__0\(4),
      O => \cnt_flag[5]_i_4_n_0\
    );
\cnt_flag[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"514DAEB2"
    )
        port map (
      I0 => state_0(3),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => state_0(2),
      I4 => \cnt_flag_reg__0\(0),
      O => \cnt_flag[5]_i_5_n_0\
    );
\cnt_flag[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1218122212121112"
    )
        port map (
      I0 => \cnt_flag_reg__0\(1),
      I1 => \cnt_flag_reg__0\(2),
      I2 => state_0(3),
      I3 => state_0(1),
      I4 => state_0(2),
      I5 => state_0(0),
      O => \cnt_flag[5]_i_6_n_0\
    );
\cnt_flag_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => drive_flag,
      D => p_0_in(0),
      Q => \cnt_flag_reg__0\(0),
      R => \cnt_flag[5]_i_1_n_0\
    );
\cnt_flag_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => drive_flag,
      D => p_0_in(1),
      Q => \cnt_flag_reg__0\(1),
      R => \cnt_flag[5]_i_1_n_0\
    );
\cnt_flag_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => drive_flag,
      D => p_0_in(2),
      Q => \cnt_flag_reg__0\(2),
      R => \cnt_flag[5]_i_1_n_0\
    );
\cnt_flag_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => drive_flag,
      D => p_0_in(3),
      Q => \cnt_flag_reg__0\(3),
      R => \cnt_flag[5]_i_1_n_0\
    );
\cnt_flag_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => drive_flag,
      D => p_0_in(4),
      Q => \cnt_flag_reg__0\(4),
      R => \cnt_flag[5]_i_1_n_0\
    );
\cnt_flag_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => drive_flag,
      D => p_0_in(5),
      Q => \cnt_flag_reg__0\(5),
      R => \cnt_flag[5]_i_1_n_0\
    );
\cnt_freq[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => cnt_freq(0),
      I1 => drive_flag,
      I2 => work_flag_reg_n_0,
      I3 => rst,
      O => \cnt_freq[0]_i_1_n_0\
    );
\cnt_freq[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006C00"
    )
        port map (
      I0 => cnt_freq(0),
      I1 => cnt_freq(1),
      I2 => drive_flag,
      I3 => work_flag_reg_n_0,
      I4 => rst,
      O => \cnt_freq[1]_i_1_n_0\
    );
\cnt_freq[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004CCC0000"
    )
        port map (
      I0 => cnt_freq(0),
      I1 => cnt_freq(2),
      I2 => cnt_freq(1),
      I3 => drive_flag,
      I4 => work_flag_reg_n_0,
      I5 => rst,
      O => \cnt_freq[2]_i_1_n_0\
    );
\cnt_freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_freq[0]_i_1_n_0\,
      Q => cnt_freq(0),
      R => '0'
    );
\cnt_freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_freq[1]_i_1_n_0\,
      Q => cnt_freq(1),
      R => '0'
    );
\cnt_freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_freq[2]_i_1_n_0\,
      Q => cnt_freq(2),
      R => '0'
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg__0\(0),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \cnt_reg__0\(1),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \cnt_reg__0\(2),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \cnt_reg__0\(3),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \cnt_reg__0\(4),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \cnt_reg__0\(5),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \cnt_reg__0\(6),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \cnt_reg__0\(7),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \cnt_reg__0\(8),
      R => \cnt[9]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => \cnt_reg__0\(9),
      R => \cnt[9]_i_1_n_0\
    );
\data_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(3),
      I2 => \data_shift[0]_i_2_n_0\,
      I3 => state_0(2),
      O => \data_shift[0]_i_1_n_0\
    );
\data_shift[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8880000B888"
    )
        port map (
      I0 => in19(0),
      I1 => state_0(0),
      I2 => \data_shift127_out__0\,
      I3 => Q(15),
      I4 => state_0(1),
      I5 => cmos_sda,
      O => \data_shift[0]_i_2_n_0\
    );
\data_shift[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0800080"
    )
        port map (
      I0 => Q(8),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(0),
      O => in19(0)
    );
\data_shift[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => state_0(0),
      I1 => Q(23),
      I2 => state_0(3),
      I3 => \data_shift[1]_i_2_n_0\,
      I4 => state_0(2),
      I5 => \data_shift[1]_i_3_n_0\,
      O => \data_shift[1]_i_1_n_0\
    );
\data_shift[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CFF8C00"
    )
        port map (
      I0 => state_0(0),
      I1 => in20(1),
      I2 => \data_shift127_out__0\,
      I3 => state_0(1),
      I4 => Q(23),
      O => \data_shift[1]_i_2_n_0\
    );
\data_shift[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(1),
      I2 => state_0(0),
      I3 => Q(16),
      I4 => \data_shift127_out__0\,
      I5 => in20(1),
      O => \data_shift[1]_i_3_n_0\
    );
\data_shift[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(9),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(1),
      I5 => in20(1),
      O => in19(1)
    );
\data_shift[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => state_0(0),
      I1 => Q(23),
      I2 => state_0(3),
      I3 => \data_shift[2]_i_2_n_0\,
      I4 => state_0(2),
      I5 => \data_shift[2]_i_3_n_0\,
      O => \data_shift[2]_i_1_n_0\
    );
\data_shift[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CFF8C00"
    )
        port map (
      I0 => state_0(0),
      I1 => in20(2),
      I2 => \data_shift127_out__0\,
      I3 => state_0(1),
      I4 => Q(23),
      O => \data_shift[2]_i_2_n_0\
    );
\data_shift[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(2),
      I2 => state_0(0),
      I3 => Q(17),
      I4 => \data_shift127_out__0\,
      I5 => in20(2),
      O => \data_shift[2]_i_3_n_0\
    );
\data_shift[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(10),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(2),
      I5 => in20(2),
      O => in19(2)
    );
\data_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(3),
      I2 => \data_shift[3]_i_2_n_0\,
      I3 => state_0(2),
      I4 => \data_shift[3]_i_3_n_0\,
      O => \data_shift[3]_i_1_n_0\
    );
\data_shift[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C4FF"
    )
        port map (
      I0 => \data_shift127_out__0\,
      I1 => in20(3),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \data_shift[3]_i_2_n_0\
    );
\data_shift[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(3),
      I2 => state_0(0),
      I3 => Q(18),
      I4 => \data_shift127_out__0\,
      I5 => in20(3),
      O => \data_shift[3]_i_3_n_0\
    );
\data_shift[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(11),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(3),
      I5 => in20(3),
      O => in19(3)
    );
\data_shift[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(3),
      I2 => \data_shift[4]_i_2_n_0\,
      I3 => state_0(2),
      I4 => \data_shift[4]_i_3_n_0\,
      O => \data_shift[4]_i_1_n_0\
    );
\data_shift[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C4FF"
    )
        port map (
      I0 => \data_shift127_out__0\,
      I1 => in20(4),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \data_shift[4]_i_2_n_0\
    );
\data_shift[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(4),
      I2 => state_0(0),
      I3 => Q(19),
      I4 => \data_shift127_out__0\,
      I5 => in20(4),
      O => \data_shift[4]_i_3_n_0\
    );
\data_shift[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(12),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(4),
      I5 => in20(4),
      O => in19(4)
    );
\data_shift[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(3),
      I2 => \data_shift[5]_i_2_n_0\,
      I3 => state_0(2),
      I4 => \data_shift[5]_i_3_n_0\,
      O => \data_shift[5]_i_1_n_0\
    );
\data_shift[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C4FF"
    )
        port map (
      I0 => \data_shift127_out__0\,
      I1 => in20(5),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \data_shift[5]_i_2_n_0\
    );
\data_shift[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(5),
      I2 => state_0(0),
      I3 => Q(20),
      I4 => \data_shift127_out__0\,
      I5 => in20(5),
      O => \data_shift[5]_i_3_n_0\
    );
\data_shift[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(13),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(5),
      I5 => in20(5),
      O => in19(5)
    );
\data_shift[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(3),
      I2 => \data_shift[6]_i_2_n_0\,
      I3 => state_0(2),
      I4 => \data_shift[6]_i_3_n_0\,
      O => \data_shift[6]_i_1_n_0\
    );
\data_shift[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C4FF"
    )
        port map (
      I0 => \data_shift127_out__0\,
      I1 => in20(6),
      I2 => state_0(0),
      I3 => state_0(1),
      O => \data_shift[6]_i_2_n_0\
    );
\data_shift[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(6),
      I2 => state_0(0),
      I3 => Q(21),
      I4 => \data_shift127_out__0\,
      I5 => in20(6),
      O => \data_shift[6]_i_3_n_0\
    );
\data_shift[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(23),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(6),
      I5 => in20(6),
      O => in19(6)
    );
\data_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100119011FF1190"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(1),
      I2 => \data_shift[7]_i_3_n_0\,
      I3 => state_0(3),
      I4 => state_0(0),
      I5 => \data_shift[7]_i_4_n_0\,
      O => data_shift
    );
\data_shift[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cnt_byte,
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      O => \data_shift1__0\
    );
\data_shift[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \cnt_flag_reg__0\(0),
      I1 => \cnt_flag_reg__0\(1),
      I2 => drive_flag,
      I3 => \cnt_flag_reg__0\(5),
      I4 => state_0(2),
      O => \data_shift[7]_i_11_n_0\
    );
\data_shift[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => Q(14),
      I1 => \data_shift127_out__0\,
      I2 => wr_req,
      I3 => cnt_byte,
      I4 => Q(7),
      I5 => in20(7),
      O => in19(7)
    );
\data_shift[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => state_0(0),
      I1 => Q(23),
      I2 => state_0(3),
      I3 => \data_shift[7]_i_5_n_0\,
      I4 => state_0(2),
      I5 => \data_shift[7]_i_6_n_0\,
      O => \data_shift[7]_i_2_n_0\
    );
\data_shift[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => \data_shift127_out__0\,
      I1 => \cnt_flag_reg__0\(0),
      I2 => \cnt_flag_reg__0\(1),
      I3 => drive_flag,
      I4 => \cnt_flag_reg__0\(5),
      O => \data_shift[7]_i_3_n_0\
    );
\data_shift[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000133FF0001"
    )
        port map (
      I0 => \data_shift125_out__0\,
      I1 => \data_shift044_out__1\,
      I2 => \data_shift1__0\,
      I3 => state_0(2),
      I4 => state_0(1),
      I5 => \data_shift[7]_i_11_n_0\,
      O => \data_shift[7]_i_4_n_0\
    );
\data_shift[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CFF8C00"
    )
        port map (
      I0 => state_0(0),
      I1 => in20(7),
      I2 => \data_shift127_out__0\,
      I3 => state_0(1),
      I4 => Q(23),
      O => \data_shift[7]_i_5_n_0\
    );
\data_shift[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => state_0(1),
      I1 => in19(7),
      I2 => state_0(0),
      I3 => Q(22),
      I4 => \data_shift127_out__0\,
      I5 => in20(7),
      O => \data_shift[7]_i_6_n_0\
    );
\data_shift[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => ack_flag_reg_n_0,
      I1 => drive_flag,
      I2 => \cnt_flag[5]_i_6_n_0\,
      I3 => \cnt_flag[5]_i_5_n_0\,
      I4 => \cnt_flag_reg__0\(3),
      I5 => \cnt_flag[5]_i_4_n_0\,
      O => \data_shift127_out__0\
    );
\data_shift[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_shift127_out__0\,
      I1 => wr_req,
      I2 => cnt_byte,
      O => \data_shift125_out__0\
    );
\data_shift[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => drive_flag,
      I2 => \cnt_flag_reg__0\(1),
      I3 => \cnt_flag_reg__0\(0),
      O => \data_shift044_out__1\
    );
\data_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[0]_i_1_n_0\,
      Q => in20(1),
      R => rst
    );
\data_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[1]_i_1_n_0\,
      Q => in20(2),
      R => rst
    );
\data_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[2]_i_1_n_0\,
      Q => in20(3),
      R => rst
    );
\data_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[3]_i_1_n_0\,
      Q => in20(4),
      R => rst
    );
\data_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[4]_i_1_n_0\,
      Q => in20(5),
      R => rst
    );
\data_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[5]_i_1_n_0\,
      Q => in20(6),
      R => rst
    );
\data_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[6]_i_1_n_0\,
      Q => in20(7),
      R => rst
    );
\data_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_shift,
      D => \data_shift[7]_i_2_n_0\,
      Q => \data_shift_reg_n_0_[7]\,
      R => rst
    );
drive_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABEAAAAA"
    )
        port map (
      I0 => drive_flag_i_2_n_0,
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(6),
      I3 => \cnt_reg__0\(4),
      I4 => drive_flag_i_3_n_0,
      I5 => p_2_in6_in,
      O => drive_flag0
    );
drive_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \cnt_reg__0\(4),
      I1 => \cnt_reg__0\(7),
      I2 => \cnt_reg__0\(6),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(1),
      I5 => drive_flag_i_5_n_0,
      O => drive_flag_i_2_n_0
    );
drive_flag_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(7),
      I2 => drive_flag_i_5_n_0,
      O => drive_flag_i_3_n_0
    );
drive_flag_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(7),
      I2 => \cnt_reg__0\(4),
      I3 => \cnt_reg__0\(6),
      I4 => drive_flag_i_6_n_0,
      O => p_2_in6_in
    );
drive_flag_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(5),
      I2 => \cnt_reg__0\(9),
      I3 => \cnt_reg__0\(8),
      I4 => \cnt_reg__0\(0),
      O => drive_flag_i_5_n_0
    );
drive_flag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(5),
      I3 => \cnt_reg__0\(9),
      I4 => \cnt_reg__0\(8),
      I5 => \cnt_reg__0\(1),
      O => drive_flag_i_6_n_0
    );
drive_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => drive_flag0,
      Q => drive_flag,
      R => rst
    );
scl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3F3B"
    )
        port map (
      I0 => \^cmos_scl\,
      I1 => work_flag_reg_n_0,
      I2 => \scl1__0\,
      I3 => \end_cnt_freq__0\,
      I4 => \scl3_out__1\,
      I5 => rst,
      O => scl_i_1_n_0
    );
scl_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(0),
      I2 => state_0(3),
      I3 => state_0(2),
      I4 => p_32_in,
      O => \scl1__0\
    );
scl_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => cnt_freq(0),
      I1 => cnt_freq(2),
      I2 => cnt_freq(1),
      I3 => drive_flag,
      O => \end_cnt_freq__0\
    );
scl_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => scl_i_6_n_0,
      I1 => cnt_freq(1),
      I2 => cnt_freq(0),
      I3 => cnt_freq(2),
      I4 => drive_flag,
      I5 => work_flag_reg_n_0,
      O => \scl3_out__1\
    );
scl_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => cnt_freq(1),
      I1 => cnt_freq(0),
      I2 => cnt_freq(2),
      I3 => drive_flag,
      O => p_32_in
    );
scl_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(3),
      I2 => state_0(2),
      I3 => state_0(0),
      O => scl_i_6_n_0
    );
scl_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => scl_i_1_n_0,
      Q => \^cmos_scl\,
      R => '0'
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000033223333CC0C"
    )
        port map (
      I0 => wr_done,
      I1 => state(1),
      I2 => \state_reg[2]_0\,
      I3 => \state_reg[2]\,
      I4 => state(0),
      I5 => state(2),
      O => wr_done_reg_1
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000011000000C0"
    )
        port map (
      I0 => wr_done,
      I1 => state(1),
      I2 => \state_reg[2]_0\,
      I3 => \state_reg[2]\,
      I4 => state(0),
      I5 => state(2),
      O => wr_done_reg_0
    );
work_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555D5000000C0"
    )
        port map (
      I0 => wr_done,
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => state_0(3),
      I4 => state_0(1),
      I5 => work_flag_reg_n_0,
      O => work_flag_i_1_n_0
    );
work_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => work_flag_i_1_n_0,
      Q => work_flag_reg_n_0,
      R => rst
    );
wr_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => wr_req,
      I1 => \wr_done1__0\,
      I2 => wr_done,
      O => wr_done_i_1_n_0
    );
wr_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(2),
      I2 => state_0(3),
      I3 => state_0(1),
      I4 => \end_cnt_flag__0\,
      O => \wr_done1__0\
    );
wr_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_done_i_1_n_0,
      Q => wr_done,
      R => rst
    );
wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"036D004D"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => state_0(2),
      I2 => state_0(1),
      I3 => state_0(3),
      I4 => state_0(0),
      O => wr_en_i_1_n_0
    );
wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_en_i_1_n_0,
      Q => wr_en_reg_n_0,
      R => rst
    );
\wr_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg[2]\,
      I1 => wr_done,
      I2 => Q(23),
      O => E(0)
    );
wr_req_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => wr_req,
      I1 => wr_req0,
      I2 => \state_reg[2]\,
      I3 => wr_done,
      I4 => rst,
      O => wr_req_reg
    );
wr_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FFF8F8F8F0"
    )
        port map (
      I0 => wr_sda_i_2_n_0,
      I1 => wr_sda_i_3_n_0,
      I2 => rst,
      I3 => wr_sda_i_4_n_0,
      I4 => wr_sda_i_5_n_0,
      I5 => wr_sda_reg_n_0,
      O => wr_sda_i_1_n_0
    );
wr_sda_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0F8F0F8F0F800F"
    )
        port map (
      I0 => drive_flag,
      I1 => wr_sda_i_12_n_0,
      I2 => state_0(0),
      I3 => state_0(2),
      I4 => state_0(1),
      I5 => wr_sda_i_13_n_0,
      O => wr_sda_i_10_n_0
    );
wr_sda_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_flag_reg__0\(3),
      I1 => \cnt_flag_reg__0\(4),
      I2 => \cnt_flag_reg__0\(2),
      I3 => \cnt_flag_reg__0\(5),
      O => wr_sda_i_11_n_0
    );
wr_sda_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \cnt_flag_reg__0\(4),
      I1 => \cnt_flag_reg__0\(3),
      I2 => \cnt_flag_reg__0\(2),
      I3 => \cnt_flag_reg__0\(0),
      I4 => \cnt_flag_reg__0\(5),
      I5 => \cnt_flag_reg__0\(1),
      O => wr_sda_i_12_n_0
    );
wr_sda_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFCCCEECCCCCCCC"
    )
        port map (
      I0 => wr_en_reg_n_0,
      I1 => rst,
      I2 => drive_flag,
      I3 => \cnt_flag_reg__0\(1),
      I4 => \cnt_flag_reg__0\(0),
      I5 => wr_sda_i_11_n_0,
      O => wr_sda_i_13_n_0
    );
wr_sda_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF5D5D5DFDF"
    )
        port map (
      I0 => state_0(0),
      I1 => wr_sda_i_6_n_0,
      I2 => state_0(3),
      I3 => \cnt_flag_reg__0\(5),
      I4 => state_0(2),
      I5 => state_0(1),
      O => wr_sda_i_2_n_0
    );
wr_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFFAAFFAEAA"
    )
        port map (
      I0 => state_0(3),
      I1 => wr_sda6_in,
      I2 => \wr_sda1__0\,
      I3 => state_0(2),
      I4 => state_0(1),
      I5 => \data_shift_reg_n_0_[7]\,
      O => wr_sda_i_3_n_0
    );
wr_sda_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F4A4"
    )
        port map (
      I0 => state_0(2),
      I1 => \cnt_flag_reg__0\(5),
      I2 => state_0(3),
      I3 => wr_sda6_in,
      I4 => wr_sda_i_9_n_0,
      I5 => wr_sda_i_10_n_0,
      O => wr_sda_i_4_n_0
    );
wr_sda_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(3),
      I2 => state_0(2),
      O => wr_sda_i_5_n_0
    );
wr_sda_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEEEFEFEFEFEFE"
    )
        port map (
      I0 => state_0(2),
      I1 => wr_sda_i_9_n_0,
      I2 => rst,
      I3 => \FSM_sequential_state[3]_i_7_n_0\,
      I4 => \cnt_flag_reg__0\(1),
      I5 => drive_flag,
      O => wr_sda_i_6_n_0
    );
wr_sda_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_7_n_0\,
      I1 => \cnt_flag_reg__0\(1),
      I2 => drive_flag,
      I3 => rst,
      O => wr_sda6_in
    );
wr_sda_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => wr_en_reg_n_0,
      I1 => wr_sda_i_11_n_0,
      I2 => \cnt_flag_reg__0\(0),
      I3 => \cnt_flag_reg__0\(1),
      O => \wr_sda1__0\
    );
wr_sda_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cnt_flag_reg__0\(5),
      I1 => \cnt_flag_reg__0\(4),
      I2 => \cnt_flag_reg__0\(0),
      I3 => \cnt_flag_reg__0\(1),
      I4 => \cnt_flag_reg__0\(3),
      I5 => \cnt_flag_reg__0\(2),
      O => wr_sda_i_9_n_0
    );
wr_sda_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_sda_i_1_n_0,
      Q => wr_sda_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg is
  port (
    cmos_scl : out STD_LOGIC;
    cmos_sda : inout STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg : entity is "cmos_cfg";
end design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg;

architecture STRUCTURE of design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg is
  signal cfg_done_i_1_n_0 : STD_LOGIC;
  signal cfg_done_reg_n_0 : STD_LOGIC;
  signal cnt_wait : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal \cnt_wait[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_wait[24]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_wait_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_wait_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_wait_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_wait_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_wait_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_wait_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_wait_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_wait_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_wait_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_wait_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_wait_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_wait_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_wait_reg[24]_i_6_n_1\ : STD_LOGIC;
  signal \cnt_wait_reg[24]_i_6_n_2\ : STD_LOGIC;
  signal \cnt_wait_reg[24]_i_6_n_3\ : STD_LOGIC;
  signal \cnt_wait_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_wait_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_wait_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_wait_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_wait_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_wait_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_wait_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_wait_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_wait_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal dev_addr : STD_LOGIC_VECTOR ( 7 to 7 );
  signal inst_sccb_driver_n_1 : STD_LOGIC;
  signal inst_sccb_driver_n_2 : STD_LOGIC;
  signal inst_sccb_driver_n_3 : STD_LOGIC;
  signal inst_sccb_driver_n_4 : STD_LOGIC;
  signal \lut_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[10]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[11]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_13_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[12]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[13]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[13]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[13]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[16]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[17]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[17]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[17]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[17]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[17]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[18]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[19]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[19]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[19]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_13_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_14_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[1]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[20]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[21]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[21]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[22]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[2]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[3]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[4]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[5]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_13_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[6]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[7]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[8]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_10_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_12_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data[9]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[12]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data_reg[12]_i_9_n_0\ : STD_LOGIC;
  signal \lut_data_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[18]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[18]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \lut_data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \lut_data_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \lut_data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \lut_data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \lut_data_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \lut_data_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \lut_data_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \lut_data_reg_n_0_[7]\ : STD_LOGIC;
  signal mem_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ready_i_1_n_0 : STD_LOGIC;
  signal ready_i_2_n_0 : STD_LOGIC;
  signal ready_i_3_n_0 : STD_LOGIC;
  signal ready_i_4_n_0 : STD_LOGIC;
  signal ready_i_5_n_0 : STD_LOGIC;
  signal ready_i_6_n_0 : STD_LOGIC;
  signal ready_i_7_n_0 : STD_LOGIC;
  signal ready_i_8_n_0 : STD_LOGIC;
  signal ready_reg_n_0 : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal wr_index1 : STD_LOGIC;
  signal \wr_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \wr_index_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_req : STD_LOGIC;
  signal wr_req0 : STD_LOGIC;
  signal \NLW_cnt_wait_reg[24]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_wait[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt_wait[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_wait[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt_wait[12]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt_wait[13]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt_wait[14]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt_wait[15]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt_wait[16]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt_wait[17]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_wait[18]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_wait[19]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_wait[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt_wait[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt_wait[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt_wait[22]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt_wait[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt_wait[24]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt_wait[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt_wait[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt_wait[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt_wait[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt_wait[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_wait[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt_wait[9]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lut_data[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \lut_data[15]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \lut_data[16]_i_11\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \lut_data[16]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lut_data[17]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lut_data[17]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lut_data[18]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lut_data[18]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lut_data[19]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lut_data[1]_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lut_data[20]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \lut_data[20]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lut_data[21]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \lut_data[2]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lut_data[4]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \lut_data[6]_i_10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lut_data[7]_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \lut_data[9]_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lut_data[9]_i_9\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "IDLE:0001,WRITE:0100,WR_CHECK:0010";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "IDLE:0001,WRITE:0100,WR_CHECK:0010";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "IDLE:0001,WRITE:0100,WR_CHECK:0010";
  attribute SOFT_HLUTNM of \wr_index[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \wr_index[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_index[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \wr_index[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wr_index[8]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of wr_req_i_2 : label is "soft_lutpair29";
begin
cfg_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dev_addr(7),
      I1 => cfg_done_reg_n_0,
      O => cfg_done_i_1_n_0
    );
cfg_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cfg_done_i_1_n_0,
      Q => cfg_done_reg_n_0,
      R => rst
    );
\cnt_wait[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => \cnt_wait_reg_n_0_[0]\,
      O => \cnt_wait[0]_i_1_n_0\
    );
\cnt_wait[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(10),
      O => cnt_wait(10)
    );
\cnt_wait[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(11),
      O => cnt_wait(11)
    );
\cnt_wait[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(12),
      O => cnt_wait(12)
    );
\cnt_wait[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(13),
      O => cnt_wait(13)
    );
\cnt_wait[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(14),
      O => cnt_wait(14)
    );
\cnt_wait[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(15),
      O => cnt_wait(15)
    );
\cnt_wait[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(16),
      O => cnt_wait(16)
    );
\cnt_wait[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(17),
      O => cnt_wait(17)
    );
\cnt_wait[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(18),
      O => cnt_wait(18)
    );
\cnt_wait[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(19),
      O => cnt_wait(19)
    );
\cnt_wait[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(1),
      O => cnt_wait(1)
    );
\cnt_wait[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(20),
      O => cnt_wait(20)
    );
\cnt_wait[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(21),
      O => cnt_wait(21)
    );
\cnt_wait[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(22),
      O => cnt_wait(22)
    );
\cnt_wait[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(23),
      O => cnt_wait(23)
    );
\cnt_wait[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => rst,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(24),
      O => cnt_wait(24)
    );
\cnt_wait[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[9]\,
      I1 => \cnt_wait[24]_i_7_n_0\,
      I2 => \cnt_wait_reg_n_0_[1]\,
      I3 => \cnt_wait_reg_n_0_[0]\,
      I4 => \cnt_wait_reg_n_0_[3]\,
      I5 => \cnt_wait_reg_n_0_[2]\,
      O => \cnt_wait[24]_i_3_n_0\
    );
\cnt_wait[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[13]\,
      I1 => \cnt_wait_reg_n_0_[15]\,
      I2 => \cnt_wait_reg_n_0_[7]\,
      I3 => \cnt_wait_reg_n_0_[6]\,
      I4 => \cnt_wait[24]_i_8_n_0\,
      O => \cnt_wait[24]_i_4_n_0\
    );
\cnt_wait[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[23]\,
      I1 => \cnt_wait_reg_n_0_[5]\,
      I2 => \cnt_wait_reg_n_0_[4]\,
      I3 => \cnt_wait_reg_n_0_[14]\,
      I4 => \cnt_wait[24]_i_9_n_0\,
      O => \cnt_wait[24]_i_5_n_0\
    );
\cnt_wait[24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[18]\,
      I1 => \cnt_wait_reg_n_0_[19]\,
      I2 => \cnt_wait_reg_n_0_[16]\,
      I3 => \cnt_wait_reg_n_0_[17]\,
      O => \cnt_wait[24]_i_7_n_0\
    );
\cnt_wait[24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[21]\,
      I1 => \cnt_wait_reg_n_0_[20]\,
      I2 => \cnt_wait_reg_n_0_[24]\,
      I3 => \cnt_wait_reg_n_0_[22]\,
      O => \cnt_wait[24]_i_8_n_0\
    );
\cnt_wait[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[10]\,
      I1 => \cnt_wait_reg_n_0_[11]\,
      I2 => \cnt_wait_reg_n_0_[8]\,
      I3 => \cnt_wait_reg_n_0_[12]\,
      O => \cnt_wait[24]_i_9_n_0\
    );
\cnt_wait[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(2),
      O => cnt_wait(2)
    );
\cnt_wait[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(3),
      O => cnt_wait(3)
    );
\cnt_wait[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(4),
      O => cnt_wait(4)
    );
\cnt_wait[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(5),
      O => cnt_wait(5)
    );
\cnt_wait[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(6),
      O => cnt_wait(6)
    );
\cnt_wait[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(7),
      O => cnt_wait(7)
    );
\cnt_wait[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(8),
      O => cnt_wait(8)
    );
\cnt_wait[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \cnt_wait[24]_i_3_n_0\,
      I1 => \cnt_wait[24]_i_4_n_0\,
      I2 => \cnt_wait[24]_i_5_n_0\,
      I3 => data0(9),
      O => cnt_wait(9)
    );
\cnt_wait_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_wait[0]_i_1_n_0\,
      Q => \cnt_wait_reg_n_0_[0]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(10),
      Q => \cnt_wait_reg_n_0_[10]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(11),
      Q => \cnt_wait_reg_n_0_[11]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(12),
      Q => \cnt_wait_reg_n_0_[12]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_wait_reg[8]_i_2_n_0\,
      CO(3) => \cnt_wait_reg[12]_i_2_n_0\,
      CO(2) => \cnt_wait_reg[12]_i_2_n_1\,
      CO(1) => \cnt_wait_reg[12]_i_2_n_2\,
      CO(0) => \cnt_wait_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \cnt_wait_reg_n_0_[12]\,
      S(2) => \cnt_wait_reg_n_0_[11]\,
      S(1) => \cnt_wait_reg_n_0_[10]\,
      S(0) => \cnt_wait_reg_n_0_[9]\
    );
\cnt_wait_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(13),
      Q => \cnt_wait_reg_n_0_[13]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(14),
      Q => \cnt_wait_reg_n_0_[14]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(15),
      Q => \cnt_wait_reg_n_0_[15]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(16),
      Q => \cnt_wait_reg_n_0_[16]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_wait_reg[12]_i_2_n_0\,
      CO(3) => \cnt_wait_reg[16]_i_2_n_0\,
      CO(2) => \cnt_wait_reg[16]_i_2_n_1\,
      CO(1) => \cnt_wait_reg[16]_i_2_n_2\,
      CO(0) => \cnt_wait_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \cnt_wait_reg_n_0_[16]\,
      S(2) => \cnt_wait_reg_n_0_[15]\,
      S(1) => \cnt_wait_reg_n_0_[14]\,
      S(0) => \cnt_wait_reg_n_0_[13]\
    );
\cnt_wait_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(17),
      Q => \cnt_wait_reg_n_0_[17]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(18),
      Q => \cnt_wait_reg_n_0_[18]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(19),
      Q => \cnt_wait_reg_n_0_[19]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(1),
      Q => \cnt_wait_reg_n_0_[1]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(20),
      Q => \cnt_wait_reg_n_0_[20]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_wait_reg[16]_i_2_n_0\,
      CO(3) => \cnt_wait_reg[20]_i_2_n_0\,
      CO(2) => \cnt_wait_reg[20]_i_2_n_1\,
      CO(1) => \cnt_wait_reg[20]_i_2_n_2\,
      CO(0) => \cnt_wait_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \cnt_wait_reg_n_0_[20]\,
      S(2) => \cnt_wait_reg_n_0_[19]\,
      S(1) => \cnt_wait_reg_n_0_[18]\,
      S(0) => \cnt_wait_reg_n_0_[17]\
    );
\cnt_wait_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(21),
      Q => \cnt_wait_reg_n_0_[21]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(22),
      Q => \cnt_wait_reg_n_0_[22]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(23),
      Q => \cnt_wait_reg_n_0_[23]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(24),
      Q => \cnt_wait_reg_n_0_[24]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[24]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_wait_reg[20]_i_2_n_0\,
      CO(3) => \NLW_cnt_wait_reg[24]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \cnt_wait_reg[24]_i_6_n_1\,
      CO(1) => \cnt_wait_reg[24]_i_6_n_2\,
      CO(0) => \cnt_wait_reg[24]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \cnt_wait_reg_n_0_[24]\,
      S(2) => \cnt_wait_reg_n_0_[23]\,
      S(1) => \cnt_wait_reg_n_0_[22]\,
      S(0) => \cnt_wait_reg_n_0_[21]\
    );
\cnt_wait_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(2),
      Q => \cnt_wait_reg_n_0_[2]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(3),
      Q => \cnt_wait_reg_n_0_[3]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(4),
      Q => \cnt_wait_reg_n_0_[4]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_wait_reg[4]_i_2_n_0\,
      CO(2) => \cnt_wait_reg[4]_i_2_n_1\,
      CO(1) => \cnt_wait_reg[4]_i_2_n_2\,
      CO(0) => \cnt_wait_reg[4]_i_2_n_3\,
      CYINIT => \cnt_wait_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \cnt_wait_reg_n_0_[4]\,
      S(2) => \cnt_wait_reg_n_0_[3]\,
      S(1) => \cnt_wait_reg_n_0_[2]\,
      S(0) => \cnt_wait_reg_n_0_[1]\
    );
\cnt_wait_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(5),
      Q => \cnt_wait_reg_n_0_[5]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(6),
      Q => \cnt_wait_reg_n_0_[6]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(7),
      Q => \cnt_wait_reg_n_0_[7]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(8),
      Q => \cnt_wait_reg_n_0_[8]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
\cnt_wait_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_wait_reg[4]_i_2_n_0\,
      CO(3) => \cnt_wait_reg[8]_i_2_n_0\,
      CO(2) => \cnt_wait_reg[8]_i_2_n_1\,
      CO(1) => \cnt_wait_reg[8]_i_2_n_2\,
      CO(0) => \cnt_wait_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \cnt_wait_reg_n_0_[8]\,
      S(2) => \cnt_wait_reg_n_0_[7]\,
      S(1) => \cnt_wait_reg_n_0_[6]\,
      S(0) => \cnt_wait_reg_n_0_[5]\
    );
\cnt_wait_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_wait(9),
      Q => \cnt_wait_reg_n_0_[9]\,
      R => \cnt_wait[24]_i_1_n_0\
    );
inst_sccb_driver: entity work.design_1_ddr3_hdmi_ov5640_0_0_sccb_driver
     port map (
      E(0) => inst_sccb_driver_n_1,
      Q(23) => dev_addr(7),
      Q(22 downto 14) => mem_addr(15 downto 7),
      Q(13 downto 8) => mem_addr(5 downto 0),
      Q(7) => \lut_data_reg_n_0_[7]\,
      Q(6) => \lut_data_reg_n_0_[6]\,
      Q(5) => \lut_data_reg_n_0_[5]\,
      Q(4) => \lut_data_reg_n_0_[4]\,
      Q(3) => \lut_data_reg_n_0_[3]\,
      Q(2) => \lut_data_reg_n_0_[2]\,
      Q(1) => \lut_data_reg_n_0_[1]\,
      Q(0) => \lut_data_reg_n_0_[0]\,
      clk => clk,
      cmos_scl => cmos_scl,
      cmos_sda => cmos_sda,
      rst => rst,
      start => start,
      state(2 downto 0) => state(2 downto 0),
      \state_reg[2]\ => cfg_done_reg_n_0,
      \state_reg[2]_0\ => ready_reg_n_0,
      wr_done_reg_0 => inst_sccb_driver_n_3,
      wr_done_reg_1 => inst_sccb_driver_n_4,
      wr_req => wr_req,
      wr_req0 => wr_req0,
      wr_req_reg => inst_sccb_driver_n_2
    );
\lut_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEEEFE"
    )
        port map (
      I0 => \lut_data_reg[0]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data[0]_i_3_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data_reg[0]_i_4_n_0\,
      I5 => \lut_data[0]_i_5_n_0\,
      O => \lut_data[0]_i_1_n_0\
    );
\lut_data[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1044440140724441"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[0]_i_10_n_0\
    );
\lut_data[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880080C3AE000000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[0]_i_11_n_0\
    );
\lut_data[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000008"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[0]_i_12_n_0\
    );
\lut_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008009"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \lut_data[1]_i_8_n_0\,
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(3),
      I5 => \lut_data_reg[0]_i_8_n_0\,
      O => \lut_data[0]_i_3_n_0\
    );
\lut_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010400400000"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[0]_i_5_n_0\
    );
\lut_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000404040244000A"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[0]_i_6_n_0\
    );
\lut_data[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0540804B0001011"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[0]_i_7_n_0\
    );
\lut_data[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040008040408000"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[0]_i_9_n_0\
    );
\lut_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAE"
    )
        port map (
      I0 => \lut_data[10]_i_2_n_0\,
      I1 => \lut_data[10]_i_3_n_0\,
      I2 => \wr_index_reg__0\(1),
      I3 => \lut_data[10]_i_4_n_0\,
      I4 => \wr_index_reg__0\(8),
      I5 => \lut_data[10]_i_5_n_0\,
      O => \lut_data[10]_i_1_n_0\
    );
\lut_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080020100000A"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[10]_i_2_n_0\
    );
\lut_data[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22105A501A51AA10"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[10]_i_3_n_0\
    );
\lut_data[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4848450544454644"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[10]_i_4_n_0\
    );
\lut_data[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => \lut_data[10]_i_6_n_0\,
      I1 => \lut_data[10]_i_7_n_0\,
      I2 => \wr_index_reg__0\(0),
      I3 => \lut_data[10]_i_8_n_0\,
      I4 => \wr_index_reg__0\(7),
      I5 => \lut_data[10]_i_9_n_0\,
      O => \lut_data[10]_i_5_n_0\
    );
\lut_data[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0855000000A045A2"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[10]_i_6_n_0\
    );
\lut_data[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040600000000580"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[10]_i_7_n_0\
    );
\lut_data[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FA0105000005050"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[10]_i_8_n_0\
    );
\lut_data[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005400001000000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[10]_i_9_n_0\
    );
\lut_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBB8FFFFFFFF"
    )
        port map (
      I0 => \lut_data[11]_i_2_n_0\,
      I1 => \wr_index_reg__0\(0),
      I2 => \lut_data[11]_i_3_n_0\,
      I3 => \lut_data_reg[11]_i_4_n_0\,
      I4 => \wr_index_reg__0\(8),
      I5 => \lut_data_reg[11]_i_5_n_0\,
      O => \lut_data[11]_i_1_n_0\
    );
\lut_data[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7376F0F13678D455"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[11]_i_10_n_0\
    );
\lut_data[11]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02800080"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      O => \lut_data[11]_i_11_n_0\
    );
\lut_data[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000200A20"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[11]_i_12_n_0\
    );
\lut_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000800"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(1),
      I5 => \lut_data_reg[11]_i_6_n_0\,
      O => \lut_data[11]_i_2_n_0\
    );
\lut_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0212100012121002"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[11]_i_3_n_0\
    );
\lut_data[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      O => \lut_data[11]_i_7_n_0\
    );
\lut_data[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002800080088000"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[11]_i_8_n_0\
    );
\lut_data[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EF577FFF75577FE"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[11]_i_9_n_0\
    );
\lut_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFFFE"
    )
        port map (
      I0 => \lut_data[12]_i_2_n_0\,
      I1 => \lut_data_reg[12]_i_3_n_0\,
      I2 => \wr_index_reg__0\(8),
      I3 => \lut_data[12]_i_4_n_0\,
      I4 => \wr_index_reg__0\(0),
      I5 => \lut_data[12]_i_5_n_0\,
      O => \lut_data[12]_i_1_n_0\
    );
\lut_data[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800000800000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[12]_i_10_n_0\
    );
\lut_data[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0602060204000000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[12]_i_11_n_0\
    );
\lut_data[12]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000408000004"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[12]_i_12_n_0\
    );
\lut_data[12]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"511BA44050000000"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[12]_i_13_n_0\
    );
\lut_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8012882888080828"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[12]_i_2_n_0\
    );
\lut_data[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(5),
      I5 => \lut_data_reg[12]_i_8_n_0\,
      O => \lut_data[12]_i_4_n_0\
    );
\lut_data[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(2),
      I5 => \lut_data_reg[12]_i_9_n_0\,
      O => \lut_data[12]_i_5_n_0\
    );
\lut_data[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10221001006E0110"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[12]_i_6_n_0\
    );
\lut_data[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011000095000080"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[12]_i_7_n_0\
    );
\lut_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8FFF80"
    )
        port map (
      I0 => \lut_data[13]_i_2_n_0\,
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(8),
      I4 => \lut_data_reg[13]_i_3_n_0\,
      O => \lut_data[13]_i_1_n_0\
    );
\lut_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA44884488008A40"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(0),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[13]_i_2_n_0\
    );
\lut_data[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8082"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(1),
      O => \lut_data[13]_i_4_n_0\
    );
\lut_data[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000700000FC0"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(0),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[13]_i_5_n_0\
    );
\lut_data[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000000000000"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(0),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[13]_i_6_n_0\
    );
\lut_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \lut_data[15]_i_2_n_0\,
      I2 => \lut_data[15]_i_3_n_0\,
      O => \lut_data[15]_i_1_n_0\
    );
\lut_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044404440444C444"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \lut_data[15]_i_4_n_0\,
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(1),
      I5 => \wr_index_reg__0\(0),
      O => \lut_data[15]_i_2_n_0\
    );
\lut_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[15]_i_3_n_0\
    );
\lut_data[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(3),
      O => \lut_data[15]_i_4_n_0\
    );
\lut_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAEAFF"
    )
        port map (
      I0 => \lut_data[16]_i_2_n_0\,
      I1 => \wr_index_reg__0\(7),
      I2 => \lut_data_reg[16]_i_3_n_0\,
      I3 => \wr_index_reg__0\(6),
      I4 => \lut_data[16]_i_4_n_0\,
      O => \lut_data[16]_i_1_n_0\
    );
\lut_data[16]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(1),
      O => \lut_data[16]_i_10_n_0\
    );
\lut_data[16]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(6),
      O => \lut_data[16]_i_11_n_0\
    );
\lut_data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \lut_data[16]_i_5_n_0\,
      I2 => \wr_index_reg__0\(8),
      I3 => \lut_data[16]_i_6_n_0\,
      I4 => \lut_data[16]_i_7_n_0\,
      I5 => \lut_data[16]_i_8_n_0\,
      O => \lut_data[16]_i_2_n_0\
    );
\lut_data[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFBFF7BFDF95"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(0),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[16]_i_4_n_0\
    );
\lut_data[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      O => \lut_data[16]_i_5_n_0\
    );
\lut_data[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA8A0022AA8A00"
    )
        port map (
      I0 => \lut_data[16]_i_11_n_0\,
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[16]_i_6_n_0\
    );
\lut_data[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088000000022222"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[16]_i_7_n_0\
    );
\lut_data[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02F00F0000000000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(3),
      I5 => \lut_data[6]_i_10_n_0\,
      O => \lut_data[16]_i_8_n_0\
    );
\lut_data[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000040800000"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[16]_i_9_n_0\
    );
\lut_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \lut_data_reg[17]_i_2_n_0\,
      I2 => \lut_data[17]_i_3_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \wr_index_reg__0\(5),
      I5 => \lut_data[17]_i_4_n_0\,
      O => \lut_data[17]_i_1_n_0\
    );
\lut_data[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006F2C"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(2),
      I4 => \lut_data[17]_i_7_n_0\,
      O => \lut_data[17]_i_3_n_0\
    );
\lut_data[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3004B00000C480C3"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[17]_i_4_n_0\
    );
\lut_data[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40058A0062058A10"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[17]_i_5_n_0\
    );
\lut_data[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A09554000024A1"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[17]_i_6_n_0\
    );
\lut_data[17]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFDFFF1"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(5),
      O => \lut_data[17]_i_7_n_0\
    );
\lut_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \lut_data[18]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data[18]_i_3_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data[18]_i_4_n_0\,
      O => \lut_data[18]_i_1_n_0\
    );
\lut_data[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110505001100000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[18]_i_10_n_0\
    );
\lut_data[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000800888"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[18]_i_11_n_0\
    );
\lut_data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80100110"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      I5 => \lut_data_reg[18]_i_5_n_0\,
      O => \lut_data[18]_i_2_n_0\
    );
\lut_data[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2000000"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(2),
      I4 => \lut_data[18]_i_6_n_0\,
      O => \lut_data[18]_i_3_n_0\
    );
\lut_data[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(4),
      I5 => \lut_data_reg[18]_i_7_n_0\,
      O => \lut_data[18]_i_4_n_0\
    );
\lut_data[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03ABC0AA"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(1),
      O => \lut_data[18]_i_6_n_0\
    );
\lut_data[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000505000410000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[18]_i_8_n_0\
    );
\lut_data[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000044000040"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[18]_i_9_n_0\
    );
\lut_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEEEEEEEEEE"
    )
        port map (
      I0 => \lut_data[19]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(4),
      I4 => \lut_data[19]_i_3_n_0\,
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[19]_i_1_n_0\
    );
\lut_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC2201010"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \lut_data[19]_i_4_n_0\,
      O => \lut_data[19]_i_2_n_0\
    );
\lut_data[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40A8406444644444"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(1),
      I5 => \wr_index_reg__0\(0),
      O => \lut_data[19]_i_3_n_0\
    );
\lut_data[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D7F30EC00000000"
    )
        port map (
      I0 => \wr_index_reg__0\(0),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(2),
      I5 => \lut_data[19]_i_5_n_0\,
      O => \lut_data[19]_i_4_n_0\
    );
\lut_data[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(7),
      O => \lut_data[19]_i_5_n_0\
    );
\lut_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEAAFE"
    )
        port map (
      I0 => \lut_data[1]_i_2_n_0\,
      I1 => \lut_data_reg[1]_i_3_n_0\,
      I2 => \lut_data[1]_i_4_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data_reg[1]_i_5_n_0\,
      I5 => \lut_data[1]_i_6_n_0\,
      O => \lut_data[1]_i_1_n_0\
    );
\lut_data[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00201E0001018080"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[1]_i_10_n_0\
    );
\lut_data[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03001C472020208C"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[1]_i_11_n_0\
    );
\lut_data[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000201000057A00"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[1]_i_12_n_0\
    );
\lut_data[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800C850A8050500"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[1]_i_13_n_0\
    );
\lut_data[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A008000000008200"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[1]_i_14_n_0\
    );
\lut_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEFEEEE"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \lut_data_reg[1]_i_7_n_0\,
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(4),
      I4 => \lut_data[1]_i_8_n_0\,
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[1]_i_2_n_0\
    );
\lut_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0008000C8000003"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[1]_i_4_n_0\
    );
\lut_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A0224820100508"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[1]_i_6_n_0\
    );
\lut_data[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(7),
      O => \lut_data[1]_i_8_n_0\
    );
\lut_data[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C30004C40008000B"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[1]_i_9_n_0\
    );
\lut_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBABAAFAA"
    )
        port map (
      I0 => \lut_data[20]_i_2_n_0\,
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(0),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(2),
      I5 => \lut_data[20]_i_3_n_0\,
      O => \lut_data[20]_i_1_n_0\
    );
\lut_data[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7F50F3F"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(4),
      O => \lut_data[20]_i_2_n_0\
    );
\lut_data[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFCF"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(8),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(7),
      O => \lut_data[20]_i_3_n_0\
    );
\lut_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAABAAAB"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \lut_data[21]_i_2_n_0\,
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \lut_data[21]_i_3_n_0\,
      O => \lut_data[21]_i_1_n_0\
    );
\lut_data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CF000020000000"
    )
        port map (
      I0 => \wr_index_reg__0\(0),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[21]_i_2_n_0\
    );
\lut_data[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDEDEDEE6E6EEEE"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(0),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[21]_i_3_n_0\
    );
\lut_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF6F6F6FFF6"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(8),
      I3 => \lut_data[22]_i_2_n_0\,
      I4 => \wr_index_reg__0\(5),
      I5 => \lut_data[22]_i_3_n_0\,
      O => \lut_data[22]_i_1_n_0\
    );
\lut_data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080557F0000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(0),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[22]_i_2_n_0\
    );
\lut_data[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC30CC30C880C0B0"
    )
        port map (
      I0 => \wr_index_reg__0\(0),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(1),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[22]_i_3_n_0\
    );
\lut_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEAAFE"
    )
        port map (
      I0 => \lut_data[2]_i_2_n_0\,
      I1 => \lut_data_reg[2]_i_3_n_0\,
      I2 => \lut_data[2]_i_4_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data_reg[2]_i_5_n_0\,
      I5 => \lut_data[2]_i_6_n_0\,
      O => \lut_data[2]_i_1_n_0\
    );
\lut_data[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004602024000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[2]_i_10_n_0\
    );
\lut_data[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"828580A808000828"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[2]_i_11_n_0\
    );
\lut_data[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0F050500040909F"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[2]_i_12_n_0\
    );
\lut_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBABFFFFBBFB"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \lut_data[2]_i_7_n_0\,
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(5),
      I5 => \lut_data[2]_i_8_n_0\,
      O => \lut_data[2]_i_2_n_0\
    );
\lut_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4418121810000000"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[2]_i_4_n_0\
    );
\lut_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220180002400000"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[2]_i_6_n_0\
    );
\lut_data[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFBFEB"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(1),
      O => \lut_data[2]_i_7_n_0\
    );
\lut_data[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77DFFFDF77FDFB5F"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[2]_i_8_n_0\
    );
\lut_data[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5111002051058094"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[2]_i_9_n_0\
    );
\lut_data[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cfg_done_reg_n_0,
      O => wr_index1
    );
\lut_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[31]_i_2_n_0\
    );
\lut_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEEFFFE"
    )
        port map (
      I0 => \lut_data_reg[3]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data[3]_i_3_n_0\,
      I3 => \lut_data_reg[3]_i_4_n_0\,
      I4 => \wr_index_reg__0\(0),
      I5 => \lut_data_reg[3]_i_5_n_0\,
      O => \lut_data[3]_i_1_n_0\
    );
\lut_data[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0005005B5805A10"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[3]_i_10_n_0\
    );
\lut_data[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000021210050212"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[3]_i_11_n_0\
    );
\lut_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002010088000008"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[3]_i_3_n_0\
    );
\lut_data[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200220000008404"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(1),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[3]_i_6_n_0\
    );
\lut_data[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA11400000006000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[3]_i_7_n_0\
    );
\lut_data[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8808000000038C4C"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[3]_i_8_n_0\
    );
\lut_data[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01144001504C700"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[3]_i_9_n_0\
    );
\lut_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEEEFE"
    )
        port map (
      I0 => \lut_data_reg[4]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data[4]_i_3_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data_reg[4]_i_4_n_0\,
      I5 => \lut_data[4]_i_5_n_0\,
      O => \lut_data[4]_i_1_n_0\
    );
\lut_data[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500040000151402"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[4]_i_10_n_0\
    );
\lut_data[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033303032FC00200"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[4]_i_11_n_0\
    );
\lut_data[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20020001000A9009"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[4]_i_12_n_0\
    );
\lut_data[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \lut_data[4]_i_8_n_0\,
      I1 => \lut_data[4]_i_9_n_0\,
      I2 => \wr_index_reg__0\(1),
      I3 => \lut_data[4]_i_10_n_0\,
      O => \lut_data[4]_i_3_n_0\
    );
\lut_data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400490801880584"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[4]_i_5_n_0\
    );
\lut_data[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100000000010"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[4]_i_6_n_0\
    );
\lut_data[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8830000000000C"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[4]_i_7_n_0\
    );
\lut_data[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000520020000020"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[4]_i_8_n_0\
    );
\lut_data[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900009100000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[4]_i_9_n_0\
    );
\lut_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEEEFE"
    )
        port map (
      I0 => \lut_data[5]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data_reg[5]_i_3_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data[5]_i_4_n_0\,
      I5 => \lut_data_reg[5]_i_5_n_0\,
      O => \lut_data[5]_i_1_n_0\
    );
\lut_data[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      O => \lut_data[5]_i_10_n_0\
    );
\lut_data[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208208404040004"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[5]_i_11_n_0\
    );
\lut_data[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0008000C00C0C00"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[5]_i_12_n_0\
    );
\lut_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(4),
      I5 => \lut_data_reg[5]_i_6_n_0\,
      O => \lut_data[5]_i_2_n_0\
    );
\lut_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404044E00820000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[5]_i_4_n_0\
    );
\lut_data[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A22EA080C75730"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[5]_i_7_n_0\
    );
\lut_data[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040000004000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[5]_i_8_n_0\
    );
\lut_data[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001221D00002210"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[5]_i_9_n_0\
    );
\lut_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEEFFFE"
    )
        port map (
      I0 => \lut_data_reg[6]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data_reg[6]_i_3_n_0\,
      I3 => \lut_data[6]_i_4_n_0\,
      I4 => \wr_index_reg__0\(0),
      I5 => \lut_data[6]_i_5_n_0\,
      O => \lut_data[6]_i_1_n_0\
    );
\lut_data[6]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(6),
      O => \lut_data[6]_i_10_n_0\
    );
\lut_data[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000055041104"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[6]_i_12_n_0\
    );
\lut_data[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000008304045"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[6]_i_13_n_0\
    );
\lut_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010020000000200"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[6]_i_4_n_0\
    );
\lut_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22700000"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(2),
      I4 => \lut_data[6]_i_10_n_0\,
      I5 => \lut_data_reg[6]_i_11_n_0\,
      O => \lut_data[6]_i_5_n_0\
    );
\lut_data[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040040000040000"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[6]_i_6_n_0\
    );
\lut_data[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0E8400000000008"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(1),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[6]_i_7_n_0\
    );
\lut_data[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505000050000510"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(7),
      O => \lut_data[6]_i_8_n_0\
    );
\lut_data[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002B000020000020"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[6]_i_9_n_0\
    );
\lut_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEFEEEEEEEF"
    )
        port map (
      I0 => \lut_data_reg[7]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data[7]_i_3_n_0\,
      I3 => \wr_index_reg__0\(6),
      I4 => \wr_index_reg__0\(0),
      I5 => \lut_data[7]_i_4_n_0\,
      O => \lut_data[7]_i_1_n_0\
    );
\lut_data[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A00800011440041"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(6),
      O => \lut_data[7]_i_10_n_0\
    );
\lut_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFF65FFEDEDFFFFE"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[7]_i_3_n_0\
    );
\lut_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(2),
      I4 => \lut_data[7]_i_7_n_0\,
      I5 => \lut_data_reg[7]_i_8_n_0\,
      O => \lut_data[7]_i_4_n_0\
    );
\lut_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000040000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[7]_i_5_n_0\
    );
\lut_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08000000000200"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(7),
      I4 => \wr_index_reg__0\(6),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[7]_i_6_n_0\
    );
\lut_data[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index_reg__0\(7),
      O => \lut_data[7]_i_7_n_0\
    );
\lut_data[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050500000206200"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[7]_i_9_n_0\
    );
\lut_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEAE"
    )
        port map (
      I0 => \lut_data[8]_i_2_n_0\,
      I1 => \lut_data[8]_i_3_n_0\,
      I2 => \wr_index_reg__0\(0),
      I3 => \lut_data[8]_i_4_n_0\,
      I4 => \lut_data_reg[8]_i_5_n_0\,
      I5 => \lut_data[8]_i_6_n_0\,
      O => \lut_data[8]_i_1_n_0\
    );
\lut_data[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040000110400001"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[8]_i_10_n_0\
    );
\lut_data[8]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01550000"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      O => \lut_data[8]_i_11_n_0\
    );
\lut_data[8]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDF7DD5F"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(2),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      O => \lut_data[8]_i_12_n_0\
    );
\lut_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABEFABABABABAB"
    )
        port map (
      I0 => \wr_index_reg__0\(8),
      I1 => \wr_index_reg__0\(6),
      I2 => \lut_data[8]_i_7_n_0\,
      I3 => \wr_index_reg__0\(4),
      I4 => \lut_data[8]_i_8_n_0\,
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[8]_i_2_n_0\
    );
\lut_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF80FF00FF80"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(7),
      I3 => \lut_data[8]_i_9_n_0\,
      I4 => \wr_index_reg__0\(1),
      I5 => \lut_data[8]_i_10_n_0\,
      O => \lut_data[8]_i_3_n_0\
    );
\lut_data[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"231011105558AF58"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[8]_i_4_n_0\
    );
\lut_data[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000800C0C00"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(5),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[8]_i_6_n_0\
    );
\lut_data[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFFFBFFFFBBB"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[8]_i_7_n_0\
    );
\lut_data[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \wr_index_reg__0\(7),
      I1 => \wr_index_reg__0\(5),
      O => \lut_data[8]_i_8_n_0\
    );
\lut_data[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"112020202320E120"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(2),
      O => \lut_data[8]_i_9_n_0\
    );
\lut_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEEEFE"
    )
        port map (
      I0 => \lut_data_reg[9]_i_2_n_0\,
      I1 => \wr_index_reg__0\(8),
      I2 => \lut_data[9]_i_3_n_0\,
      I3 => \wr_index_reg__0\(0),
      I4 => \lut_data_reg[9]_i_4_n_0\,
      I5 => \lut_data[9]_i_5_n_0\,
      O => \lut_data[9]_i_1_n_0\
    );
\lut_data[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444404444A020206"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(3),
      O => \lut_data[9]_i_10_n_0\
    );
\lut_data[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008200"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(5),
      I3 => \wr_index_reg__0\(4),
      I4 => \wr_index_reg__0\(6),
      O => \lut_data[9]_i_11_n_0\
    );
\lut_data[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2030010044101919"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(6),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(7),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[9]_i_12_n_0\
    );
\lut_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55ABFFFF55AB0000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \lut_data[9]_i_8_n_0\,
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(6),
      I4 => \lut_data[9]_i_9_n_0\,
      I5 => \lut_data[9]_i_10_n_0\,
      O => \lut_data[9]_i_3_n_0\
    );
\lut_data[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100010011000"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(5),
      I4 => \wr_index_reg__0\(3),
      I5 => \wr_index_reg__0\(4),
      O => \lut_data[9]_i_5_n_0\
    );
\lut_data[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020A0020A020A2"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(4),
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(5),
      O => \lut_data[9]_i_6_n_0\
    );
\lut_data[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A08000009BB7FFB7"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(4),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(5),
      I5 => \wr_index_reg__0\(1),
      O => \lut_data[9]_i_7_n_0\
    );
\lut_data[9]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(5),
      O => \lut_data[9]_i_8_n_0\
    );
\lut_data[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F51C0F5"
    )
        port map (
      I0 => \wr_index_reg__0\(4),
      I1 => \wr_index_reg__0\(7),
      I2 => \wr_index_reg__0\(3),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(5),
      O => \lut_data[9]_i_9_n_0\
    );
\lut_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[0]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[0]\,
      R => rst
    );
\lut_data_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[0]_i_6_n_0\,
      I1 => \lut_data[0]_i_7_n_0\,
      O => \lut_data_reg[0]_i_2_n_0\,
      S => \wr_index_reg__0\(6)
    );
\lut_data_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[0]_i_9_n_0\,
      I1 => \lut_data[0]_i_10_n_0\,
      O => \lut_data_reg[0]_i_4_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[0]_i_11_n_0\,
      I1 => \lut_data[0]_i_12_n_0\,
      O => \lut_data_reg[0]_i_8_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[10]_i_1_n_0\,
      Q => mem_addr(2),
      R => rst
    );
\lut_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[11]_i_1_n_0\,
      Q => mem_addr(3),
      R => rst
    );
\lut_data_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[11]_i_7_n_0\,
      I1 => \lut_data[11]_i_8_n_0\,
      O => \lut_data_reg[11]_i_4_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[11]_i_9_n_0\,
      I1 => \lut_data[11]_i_10_n_0\,
      O => \lut_data_reg[11]_i_5_n_0\,
      S => \wr_index_reg__0\(3)
    );
\lut_data_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[11]_i_11_n_0\,
      I1 => \lut_data[11]_i_12_n_0\,
      O => \lut_data_reg[11]_i_6_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[12]_i_1_n_0\,
      Q => mem_addr(4),
      R => rst
    );
\lut_data_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[12]_i_6_n_0\,
      I1 => \lut_data[12]_i_7_n_0\,
      O => \lut_data_reg[12]_i_3_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[12]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[12]_i_10_n_0\,
      I1 => \lut_data[12]_i_11_n_0\,
      O => \lut_data_reg[12]_i_8_n_0\,
      S => \wr_index_reg__0\(2)
    );
\lut_data_reg[12]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[12]_i_12_n_0\,
      I1 => \lut_data[12]_i_13_n_0\,
      O => \lut_data_reg[12]_i_9_n_0\,
      S => \wr_index_reg__0\(5)
    );
\lut_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[13]_i_1_n_0\,
      Q => mem_addr(5),
      R => rst
    );
\lut_data_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[13]_i_5_n_0\,
      I1 => \lut_data[13]_i_6_n_0\,
      O => \lut_data_reg[13]_i_3_n_0\,
      S => \lut_data[13]_i_4_n_0\
    );
\lut_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[15]_i_1_n_0\,
      Q => mem_addr(7),
      R => rst
    );
\lut_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[16]_i_1_n_0\,
      Q => mem_addr(8),
      R => rst
    );
\lut_data_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[16]_i_9_n_0\,
      I1 => \lut_data[16]_i_10_n_0\,
      O => \lut_data_reg[16]_i_3_n_0\,
      S => \wr_index_reg__0\(0)
    );
\lut_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[17]_i_1_n_0\,
      Q => mem_addr(9),
      R => rst
    );
\lut_data_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[17]_i_5_n_0\,
      I1 => \lut_data[17]_i_6_n_0\,
      O => \lut_data_reg[17]_i_2_n_0\,
      S => \wr_index_reg__0\(4)
    );
\lut_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[18]_i_1_n_0\,
      Q => mem_addr(10),
      R => rst
    );
\lut_data_reg[18]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[18]_i_8_n_0\,
      I1 => \lut_data[18]_i_9_n_0\,
      O => \lut_data_reg[18]_i_5_n_0\,
      S => \wr_index_reg__0\(2)
    );
\lut_data_reg[18]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[18]_i_10_n_0\,
      I1 => \lut_data[18]_i_11_n_0\,
      O => \lut_data_reg[18]_i_7_n_0\,
      S => \wr_index_reg__0\(7)
    );
\lut_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[19]_i_1_n_0\,
      Q => mem_addr(11),
      R => rst
    );
\lut_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[1]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[1]\,
      R => rst
    );
\lut_data_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[1]_i_9_n_0\,
      I1 => \lut_data[1]_i_10_n_0\,
      O => \lut_data_reg[1]_i_3_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[1]_i_11_n_0\,
      I1 => \lut_data[1]_i_12_n_0\,
      O => \lut_data_reg[1]_i_5_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[1]_i_13_n_0\,
      I1 => \lut_data[1]_i_14_n_0\,
      O => \lut_data_reg[1]_i_7_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[20]_i_1_n_0\,
      Q => mem_addr(12),
      R => rst
    );
\lut_data_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[21]_i_1_n_0\,
      Q => mem_addr(13),
      S => rst
    );
\lut_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[22]_i_1_n_0\,
      Q => mem_addr(14),
      R => rst
    );
\lut_data_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[31]_i_2_n_0\,
      Q => mem_addr(15),
      S => rst
    );
\lut_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[2]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[2]\,
      R => rst
    );
\lut_data_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[2]_i_9_n_0\,
      I1 => \lut_data[2]_i_10_n_0\,
      O => \lut_data_reg[2]_i_3_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[2]_i_11_n_0\,
      I1 => \lut_data[2]_i_12_n_0\,
      O => \lut_data_reg[2]_i_5_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[31]_i_2_n_0\,
      Q => dev_addr(7),
      R => rst
    );
\lut_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[3]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[3]\,
      R => rst
    );
\lut_data_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[3]_i_6_n_0\,
      I1 => \lut_data[3]_i_7_n_0\,
      O => \lut_data_reg[3]_i_2_n_0\,
      S => \wr_index_reg__0\(4)
    );
\lut_data_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[3]_i_8_n_0\,
      I1 => \lut_data[3]_i_9_n_0\,
      O => \lut_data_reg[3]_i_4_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[3]_i_10_n_0\,
      I1 => \lut_data[3]_i_11_n_0\,
      O => \lut_data_reg[3]_i_5_n_0\,
      S => \wr_index_reg__0\(2)
    );
\lut_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[4]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[4]\,
      R => rst
    );
\lut_data_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[4]_i_6_n_0\,
      I1 => \lut_data[4]_i_7_n_0\,
      O => \lut_data_reg[4]_i_2_n_0\,
      S => \wr_index_reg__0\(4)
    );
\lut_data_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[4]_i_11_n_0\,
      I1 => \lut_data[4]_i_12_n_0\,
      O => \lut_data_reg[4]_i_4_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[5]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[5]\,
      R => rst
    );
\lut_data_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[5]_i_7_n_0\,
      I1 => \lut_data[5]_i_8_n_0\,
      O => \lut_data_reg[5]_i_3_n_0\,
      S => \wr_index_reg__0\(6)
    );
\lut_data_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[5]_i_9_n_0\,
      I1 => \lut_data[5]_i_10_n_0\,
      O => \lut_data_reg[5]_i_5_n_0\,
      S => \wr_index_reg__0\(4)
    );
\lut_data_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[5]_i_11_n_0\,
      I1 => \lut_data[5]_i_12_n_0\,
      O => \lut_data_reg[5]_i_6_n_0\,
      S => \wr_index_reg__0\(3)
    );
\lut_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[6]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[6]\,
      R => rst
    );
\lut_data_reg[6]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[6]_i_12_n_0\,
      I1 => \lut_data[6]_i_13_n_0\,
      O => \lut_data_reg[6]_i_11_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[6]_i_6_n_0\,
      I1 => \lut_data[6]_i_7_n_0\,
      O => \lut_data_reg[6]_i_2_n_0\,
      S => \wr_index_reg__0\(3)
    );
\lut_data_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[6]_i_8_n_0\,
      I1 => \lut_data[6]_i_9_n_0\,
      O => \lut_data_reg[6]_i_3_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[7]_i_1_n_0\,
      Q => \lut_data_reg_n_0_[7]\,
      R => rst
    );
\lut_data_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[7]_i_5_n_0\,
      I1 => \lut_data[7]_i_6_n_0\,
      O => \lut_data_reg[7]_i_2_n_0\,
      S => \wr_index_reg__0\(3)
    );
\lut_data_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[7]_i_9_n_0\,
      I1 => \lut_data[7]_i_10_n_0\,
      O => \lut_data_reg[7]_i_8_n_0\,
      S => \wr_index_reg__0\(1)
    );
\lut_data_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[8]_i_1_n_0\,
      Q => mem_addr(0),
      S => rst
    );
\lut_data_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[8]_i_11_n_0\,
      I1 => \lut_data[8]_i_12_n_0\,
      O => \lut_data_reg[8]_i_5_n_0\,
      S => \wr_index_reg__0\(6)
    );
\lut_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wr_index1,
      D => \lut_data[9]_i_1_n_0\,
      Q => mem_addr(1),
      R => rst
    );
\lut_data_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[9]_i_6_n_0\,
      I1 => \lut_data[9]_i_7_n_0\,
      O => \lut_data_reg[9]_i_2_n_0\,
      S => \wr_index_reg__0\(6)
    );
\lut_data_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \lut_data[9]_i_11_n_0\,
      I1 => \lut_data[9]_i_12_n_0\,
      O => \lut_data_reg[9]_i_4_n_0\,
      S => \wr_index_reg__0\(2)
    );
ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFFFF00010001"
    )
        port map (
      I0 => ready_i_2_n_0,
      I1 => ready_i_3_n_0,
      I2 => ready_i_4_n_0,
      I3 => state(2),
      I4 => start,
      I5 => ready_reg_n_0,
      O => ready_i_1_n_0
    );
ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[0]\,
      I1 => ready_i_5_n_0,
      I2 => \cnt_wait_reg_n_0_[24]\,
      I3 => \cnt_wait_reg_n_0_[23]\,
      I4 => \cnt_wait_reg_n_0_[21]\,
      I5 => \cnt_wait_reg_n_0_[22]\,
      O => ready_i_2_n_0
    );
ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => ready_i_6_n_0,
      I1 => \cnt_wait_reg_n_0_[15]\,
      I2 => \cnt_wait_reg_n_0_[8]\,
      I3 => \cnt_wait_reg_n_0_[13]\,
      I4 => \cnt_wait_reg_n_0_[10]\,
      I5 => ready_i_7_n_0,
      O => ready_i_3_n_0
    );
ready_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => ready_i_4_n_0
    );
ready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[11]\,
      I1 => \cnt_wait_reg_n_0_[20]\,
      I2 => \cnt_wait_reg_n_0_[7]\,
      I3 => \cnt_wait_reg_n_0_[6]\,
      O => ready_i_5_n_0
    );
ready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[19]\,
      I1 => \cnt_wait_reg_n_0_[12]\,
      I2 => \cnt_wait_reg_n_0_[9]\,
      I3 => \cnt_wait_reg_n_0_[14]\,
      O => ready_i_6_n_0
    );
ready_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[18]\,
      I1 => \cnt_wait_reg_n_0_[5]\,
      I2 => \cnt_wait_reg_n_0_[16]\,
      I3 => \cnt_wait_reg_n_0_[17]\,
      I4 => ready_i_8_n_0,
      O => ready_i_7_n_0
    );
ready_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_wait_reg_n_0_[3]\,
      I1 => \cnt_wait_reg_n_0_[4]\,
      I2 => \cnt_wait_reg_n_0_[1]\,
      I3 => \cnt_wait_reg_n_0_[2]\,
      O => ready_i_8_n_0
    );
ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => ready_reg_n_0,
      R => rst
    );
start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => ready_reg_n_0,
      I1 => dev_addr(7),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => cfg_done_reg_n_0,
      O => start_i_1_n_0
    );
start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_i_1_n_0,
      Q => start,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E9"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \state[0]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      S => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_sccb_driver_n_4,
      Q => state(1),
      R => rst
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_sccb_driver_n_3,
      Q => state(2),
      R => rst
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_index_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_index_reg__0\(0),
      I1 => \wr_index_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wr_index_reg__0\(0),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \wr_index_reg__0\(1),
      I1 => \wr_index_reg__0\(0),
      I2 => \wr_index_reg__0\(2),
      I3 => \wr_index_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\wr_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \wr_index_reg__0\(2),
      I1 => \wr_index_reg__0\(0),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(3),
      I4 => \wr_index_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\wr_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \wr_index_reg__0\(3),
      I1 => \wr_index_reg__0\(1),
      I2 => \wr_index_reg__0\(0),
      I3 => \wr_index_reg__0\(2),
      I4 => \wr_index_reg__0\(4),
      I5 => \wr_index_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\wr_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_index[8]_i_3_n_0\,
      I1 => \wr_index_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\wr_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wr_index[8]_i_3_n_0\,
      I1 => \wr_index_reg__0\(6),
      I2 => \wr_index_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\wr_index[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \wr_index_reg__0\(6),
      I1 => \wr_index[8]_i_3_n_0\,
      I2 => \wr_index_reg__0\(7),
      I3 => \wr_index_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\wr_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \wr_index_reg__0\(5),
      I1 => \wr_index_reg__0\(3),
      I2 => \wr_index_reg__0\(1),
      I3 => \wr_index_reg__0\(0),
      I4 => \wr_index_reg__0\(2),
      I5 => \wr_index_reg__0\(4),
      O => \wr_index[8]_i_3_n_0\
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(0),
      Q => \wr_index_reg__0\(0),
      R => rst
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(1),
      Q => \wr_index_reg__0\(1),
      R => rst
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(2),
      Q => \wr_index_reg__0\(2),
      R => rst
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(3),
      Q => \wr_index_reg__0\(3),
      R => rst
    );
\wr_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(4),
      Q => \wr_index_reg__0\(4),
      R => rst
    );
\wr_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(5),
      Q => \wr_index_reg__0\(5),
      R => rst
    );
\wr_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(6),
      Q => \wr_index_reg__0\(6),
      R => rst
    );
\wr_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(7),
      Q => \wr_index_reg__0\(7),
      R => rst
    );
\wr_index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_sccb_driver_n_1,
      D => \p_0_in__1\(8),
      Q => \wr_index_reg__0\(8),
      R => rst
    );
wr_req_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => dev_addr(7),
      I4 => ready_reg_n_0,
      O => wr_req0
    );
wr_req_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inst_sccb_driver_n_2,
      Q => wr_req,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture is
  port (
    capture_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cmos_scl : out STD_LOGIC;
    cmos_clk_en : out STD_LOGIC;
    cmos_sda : inout STD_LOGIC;
    cmos_href : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    cmos_pclk : in STD_LOGIC;
    cmos_vsync : in STD_LOGIC;
    cmos_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture : entity is "ov5640_capture";
end design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture;

architecture STRUCTURE of design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture is
begin
inst_cmos_cfg: entity work.design_1_ddr3_hdmi_ov5640_0_0_cmos_cfg
     port map (
      clk => clk,
      cmos_scl => cmos_scl,
      cmos_sda => cmos_sda,
      rst => rst
    );
inst_cmos_img_capture: entity work.design_1_ddr3_hdmi_ov5640_0_0_cmos_img_capture
     port map (
      capture_data(15 downto 0) => capture_data(15 downto 0),
      cmos_clk_en => cmos_clk_en,
      cmos_data(7 downto 0) => cmos_data(7 downto 0),
      cmos_href => cmos_href,
      cmos_pclk => cmos_pclk,
      cmos_vsync => cmos_vsync,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ddr3_hdmi_ov5640_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    cmos_scl : out STD_LOGIC;
    cmos_sda : inout STD_LOGIC;
    cmos_pclk : in STD_LOGIC;
    cmos_vsync : in STD_LOGIC;
    cmos_href : in STD_LOGIC;
    cmos_rst_n : out STD_LOGIC;
    cmos_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pclk : out STD_LOGIC;
    data_active : out STD_LOGIC;
    cmos_clk_en : out STD_LOGIC;
    capture_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vsync : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ddr3_hdmi_ov5640_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ddr3_hdmi_ov5640_0_0 : entity is "design_1_ddr3_hdmi_ov5640_0_0,ov5640_capture,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ddr3_hdmi_ov5640_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ddr3_hdmi_ov5640_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ddr3_hdmi_ov5640_0_0 : entity is "ov5640_capture,Vivado 2018.3";
end design_1_ddr3_hdmi_ov5640_0_0;

architecture STRUCTURE of design_1_ddr3_hdmi_ov5640_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^capture_data\ : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal \^cmos_href\ : STD_LOGIC;
  signal \^cmos_pclk\ : STD_LOGIC;
  signal \^cmos_vsync\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cmos_rst_n : signal is "xilinx.com:signal:reset:1.0 cmos_rst_n RST";
  attribute X_INTERFACE_PARAMETER of cmos_rst_n : signal is "XIL_INTERFACENAME cmos_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  \^cmos_href\ <= cmos_href;
  \^cmos_pclk\ <= cmos_pclk;
  \^cmos_vsync\ <= cmos_vsync;
  capture_data(23 downto 22) <= \^capture_data\(23 downto 22);
  capture_data(21 downto 19) <= \^capture_data\(18 downto 16);
  capture_data(18 downto 10) <= \^capture_data\(18 downto 10);
  capture_data(9 downto 8) <= \^capture_data\(11 downto 10);
  capture_data(7 downto 3) <= \^capture_data\(7 downto 3);
  capture_data(2 downto 0) <= \^capture_data\(5 downto 3);
  cmos_rst_n <= \<const1>\;
  data_active <= \^cmos_href\;
  pclk <= \^cmos_pclk\;
  vsync <= \^cmos_vsync\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_ddr3_hdmi_ov5640_0_0_ov5640_capture
     port map (
      capture_data(15 downto 14) => \^capture_data\(23 downto 22),
      capture_data(13 downto 5) => \^capture_data\(18 downto 10),
      capture_data(4 downto 0) => \^capture_data\(7 downto 3),
      clk => clk,
      cmos_clk_en => cmos_clk_en,
      cmos_data(7 downto 0) => cmos_data(9 downto 2),
      cmos_href => \^cmos_href\,
      cmos_pclk => \^cmos_pclk\,
      cmos_scl => cmos_scl,
      cmos_sda => cmos_sda,
      cmos_vsync => \^cmos_vsync\,
      rst => rst
    );
end STRUCTURE;
