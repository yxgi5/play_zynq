-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Apr 19 21:56:46 2021
-- Host        : archlinux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_raw_colorbar_gen_0_0 -prefix
--               design_1_raw_colorbar_gen_0_0_ design_1_raw_colorbar_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_raw_colorbar_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_raw_colorbar_gen_0_0_raw_colorbar_gen is
  port (
    x_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fv : out STD_LOGIC;
    lv : out STD_LOGIC;
    de : out STD_LOGIC;
    vsync : out STD_LOGIC;
    hsync : out STD_LOGIC;
    h_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 );
    v_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ready : out STD_LOGIC;
    y_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end design_1_raw_colorbar_gen_0_0_raw_colorbar_gen;

architecture STRUCTURE of design_1_raw_colorbar_gen_0_0_raw_colorbar_gen is
  signal ative_line_cnt0 : STD_LOGIC;
  signal \ative_line_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \ative_line_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \ative_line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \ative_line_cnt_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \ative_line_cnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \ative_line_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \color_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \color_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \color_cntr_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \color_cntr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \color_cntr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal de_r : STD_LOGIC;
  signal de_r_i_1_n_0 : STD_LOGIC;
  signal fv_r : STD_LOGIC;
  signal \^h_cnt\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal hsync_r : STD_LOGIC;
  signal hsync_r0 : STD_LOGIC;
  signal hsync_r_i_2_n_0 : STD_LOGIC;
  signal linecnt08_out : STD_LOGIC;
  signal \linecnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \linecnt[0]_i_9_n_0\ : STD_LOGIC;
  signal linecnt_dly_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal linecnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \linecnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \linecnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \linecnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \linecnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal lv_r : STD_LOGIC;
  signal lv_r0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 9 to 9 );
  signal p_4_in : STD_LOGIC;
  signal \pixcnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixcnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \pixcnt[10]_i_4_n_0\ : STD_LOGIC;
  signal pixcnt_dly_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \pixcnt_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \raw_data1__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_n_1\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_n_2\ : STD_LOGIC;
  signal \raw_data1__0_carry__0_n_3\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_n_1\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_n_2\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_n_3\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_n_4\ : STD_LOGIC;
  signal \raw_data1__0_carry__1_n_5\ : STD_LOGIC;
  signal \raw_data1__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry__2_n_3\ : STD_LOGIC;
  signal \raw_data1__0_carry__2_n_6\ : STD_LOGIC;
  signal \raw_data1__0_carry__2_n_7\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_n_0\ : STD_LOGIC;
  signal \raw_data1__0_carry_n_1\ : STD_LOGIC;
  signal \raw_data1__0_carry_n_2\ : STD_LOGIC;
  signal \raw_data1__0_carry_n_3\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_1\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_2\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_3\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_4\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_5\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_6\ : STD_LOGIC;
  signal \raw_data1__30_carry__0_n_7\ : STD_LOGIC;
  signal \raw_data1__30_carry_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_0\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_1\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_2\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_3\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_4\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_5\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_6\ : STD_LOGIC;
  signal \raw_data1__30_carry_n_7\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_1\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_2\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_3\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_4\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_5\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_6\ : STD_LOGIC;
  signal \raw_data1__50_carry__0_n_7\ : STD_LOGIC;
  signal \raw_data1__50_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry__1_n_3\ : STD_LOGIC;
  signal \raw_data1__50_carry__1_n_6\ : STD_LOGIC;
  signal \raw_data1__50_carry__1_n_7\ : STD_LOGIC;
  signal \raw_data1__50_carry_i_1_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry_i_2_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry_i_3_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry_i_4_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry_n_0\ : STD_LOGIC;
  signal \raw_data1__50_carry_n_1\ : STD_LOGIC;
  signal \raw_data1__50_carry_n_2\ : STD_LOGIC;
  signal \raw_data1__50_carry_n_3\ : STD_LOGIC;
  signal \raw_data1__50_carry_n_4\ : STD_LOGIC;
  signal \raw_data1__50_carry_n_5\ : STD_LOGIC;
  signal \raw_data[9]_i_10_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_11_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_12_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_13_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_14_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_15_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_16_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_4_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_5_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_6_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_7_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_8_n_0\ : STD_LOGIC;
  signal \raw_data[9]_i_9_n_0\ : STD_LOGIC;
  signal vsync_r : STD_LOGIC;
  signal vsync_r0 : STD_LOGIC;
  signal vsync_r_i_2_n_0 : STD_LOGIC;
  signal vsync_r_i_3_n_0 : STD_LOGIC;
  signal \^x_cnt\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^y_cnt\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_ative_line_cnt_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_color_cntr_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_linecnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_raw_data1__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_raw_data1__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_raw_data1__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_raw_data1__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_raw_data1__0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_raw_data1__30_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_raw_data1__50_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_raw_data1__50_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_raw_data1__50_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fv_r_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of hsync_r_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of hsync_r_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \linecnt[0]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of lv_r_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixcnt[10]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pixcnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixcnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixcnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixcnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixcnt[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixcnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixcnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixcnt[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \raw_data[9]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raw_data[9]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \raw_data[9]_i_13\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raw_data[9]_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \raw_data[9]_i_16\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \raw_data[9]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raw_data[9]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raw_data[9]_i_9\ : label is "soft_lutpair4";
begin
  h_cnt(10 downto 0) <= \^h_cnt\(10 downto 0);
  x_cnt(11 downto 0) <= \^x_cnt\(11 downto 0);
  y_cnt(11 downto 0) <= \^y_cnt\(11 downto 0);
\ative_line_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => reset_n,
      I1 => fv_r,
      O => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^h_cnt\(3),
      I1 => \^h_cnt\(4),
      I2 => \^h_cnt\(2),
      I3 => \^h_cnt\(1),
      I4 => \^h_cnt\(0),
      I5 => \ative_line_cnt[11]_i_4_n_0\,
      O => ative_line_cnt0
    );
\ative_line_cnt[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \^h_cnt\(8),
      I1 => \^h_cnt\(7),
      I2 => \^h_cnt\(5),
      I3 => \^h_cnt\(6),
      I4 => \^h_cnt\(9),
      I5 => \^h_cnt\(10),
      O => \ative_line_cnt[11]_i_4_n_0\
    );
\ative_line_cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^y_cnt\(0),
      O => \ative_line_cnt[3]_i_2_n_0\
    );
\ative_line_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[3]_i_1_n_7\,
      Q => \^y_cnt\(0),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[11]_i_3_n_5\,
      Q => \^y_cnt\(10),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[11]_i_3_n_4\,
      Q => \^y_cnt\(11),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ative_line_cnt_reg[7]_i_1_n_0\,
      CO(3) => \NLW_ative_line_cnt_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \ative_line_cnt_reg[11]_i_3_n_1\,
      CO(1) => \ative_line_cnt_reg[11]_i_3_n_2\,
      CO(0) => \ative_line_cnt_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ative_line_cnt_reg[11]_i_3_n_4\,
      O(2) => \ative_line_cnt_reg[11]_i_3_n_5\,
      O(1) => \ative_line_cnt_reg[11]_i_3_n_6\,
      O(0) => \ative_line_cnt_reg[11]_i_3_n_7\,
      S(3 downto 0) => \^y_cnt\(11 downto 8)
    );
\ative_line_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[3]_i_1_n_6\,
      Q => \^y_cnt\(1),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[3]_i_1_n_5\,
      Q => \^y_cnt\(2),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[3]_i_1_n_4\,
      Q => \^y_cnt\(3),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ative_line_cnt_reg[3]_i_1_n_0\,
      CO(2) => \ative_line_cnt_reg[3]_i_1_n_1\,
      CO(1) => \ative_line_cnt_reg[3]_i_1_n_2\,
      CO(0) => \ative_line_cnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ative_line_cnt_reg[3]_i_1_n_4\,
      O(2) => \ative_line_cnt_reg[3]_i_1_n_5\,
      O(1) => \ative_line_cnt_reg[3]_i_1_n_6\,
      O(0) => \ative_line_cnt_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^y_cnt\(3 downto 1),
      S(0) => \ative_line_cnt[3]_i_2_n_0\
    );
\ative_line_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[7]_i_1_n_7\,
      Q => \^y_cnt\(4),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[7]_i_1_n_6\,
      Q => \^y_cnt\(5),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[7]_i_1_n_5\,
      Q => \^y_cnt\(6),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[7]_i_1_n_4\,
      Q => \^y_cnt\(7),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ative_line_cnt_reg[3]_i_1_n_0\,
      CO(3) => \ative_line_cnt_reg[7]_i_1_n_0\,
      CO(2) => \ative_line_cnt_reg[7]_i_1_n_1\,
      CO(1) => \ative_line_cnt_reg[7]_i_1_n_2\,
      CO(0) => \ative_line_cnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ative_line_cnt_reg[7]_i_1_n_4\,
      O(2) => \ative_line_cnt_reg[7]_i_1_n_5\,
      O(1) => \ative_line_cnt_reg[7]_i_1_n_6\,
      O(0) => \ative_line_cnt_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^y_cnt\(7 downto 4)
    );
\ative_line_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[11]_i_3_n_7\,
      Q => \^y_cnt\(8),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\ative_line_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ative_line_cnt0,
      D => \ative_line_cnt_reg[11]_i_3_n_6\,
      Q => \^y_cnt\(9),
      R => \ative_line_cnt[11]_i_1_n_0\
    );
\color_cntr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => reset_n,
      I1 => lv_r,
      O => \color_cntr[11]_i_1_n_0\
    );
\color_cntr[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^x_cnt\(0),
      O => \color_cntr[3]_i_2_n_0\
    );
\color_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[3]_i_1_n_7\,
      Q => \^x_cnt\(0),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[11]_i_2_n_5\,
      Q => \^x_cnt\(10),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[11]_i_2_n_4\,
      Q => \^x_cnt\(11),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \color_cntr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_color_cntr_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \color_cntr_reg[11]_i_2_n_1\,
      CO(1) => \color_cntr_reg[11]_i_2_n_2\,
      CO(0) => \color_cntr_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \color_cntr_reg[11]_i_2_n_4\,
      O(2) => \color_cntr_reg[11]_i_2_n_5\,
      O(1) => \color_cntr_reg[11]_i_2_n_6\,
      O(0) => \color_cntr_reg[11]_i_2_n_7\,
      S(3 downto 0) => \^x_cnt\(11 downto 8)
    );
\color_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[3]_i_1_n_6\,
      Q => \^x_cnt\(1),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[3]_i_1_n_5\,
      Q => \^x_cnt\(2),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[3]_i_1_n_4\,
      Q => \^x_cnt\(3),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \color_cntr_reg[3]_i_1_n_0\,
      CO(2) => \color_cntr_reg[3]_i_1_n_1\,
      CO(1) => \color_cntr_reg[3]_i_1_n_2\,
      CO(0) => \color_cntr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \color_cntr_reg[3]_i_1_n_4\,
      O(2) => \color_cntr_reg[3]_i_1_n_5\,
      O(1) => \color_cntr_reg[3]_i_1_n_6\,
      O(0) => \color_cntr_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^x_cnt\(3 downto 1),
      S(0) => \color_cntr[3]_i_2_n_0\
    );
\color_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[7]_i_1_n_7\,
      Q => \^x_cnt\(4),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[7]_i_1_n_6\,
      Q => \^x_cnt\(5),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[7]_i_1_n_5\,
      Q => \^x_cnt\(6),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[7]_i_1_n_4\,
      Q => \^x_cnt\(7),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \color_cntr_reg[3]_i_1_n_0\,
      CO(3) => \color_cntr_reg[7]_i_1_n_0\,
      CO(2) => \color_cntr_reg[7]_i_1_n_1\,
      CO(1) => \color_cntr_reg[7]_i_1_n_2\,
      CO(0) => \color_cntr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \color_cntr_reg[7]_i_1_n_4\,
      O(2) => \color_cntr_reg[7]_i_1_n_5\,
      O(1) => \color_cntr_reg[7]_i_1_n_6\,
      O(0) => \color_cntr_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^x_cnt\(7 downto 4)
    );
\color_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[11]_i_2_n_7\,
      Q => \^x_cnt\(8),
      R => \color_cntr[11]_i_1_n_0\
    );
\color_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \color_cntr_reg[11]_i_2_n_6\,
      Q => \^x_cnt\(9),
      R => \color_cntr[11]_i_1_n_0\
    );
de_dly_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => de_r,
      Q => de,
      R => p_0_in
    );
de_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500FFFF15000000"
    )
        port map (
      I0 => \pixcnt_reg__0\(10),
      I1 => linecnt_reg(8),
      I2 => linecnt_reg(9),
      I3 => vsync_r_i_3_n_0,
      I4 => reset_n,
      I5 => de_r,
      O => de_r_i_1_n_0
    );
de_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => de_r_i_1_n_0,
      Q => de_r,
      R => '0'
    );
fv_dly_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => p_0_in
    );
fv_dly_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fv_r,
      Q => fv,
      R => p_0_in
    );
fv_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => linecnt_reg(11),
      I1 => linecnt_reg(10),
      I2 => linecnt_reg(9),
      I3 => linecnt_reg(8),
      O => p_4_in
    );
fv_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_4_in,
      Q => fv_r,
      R => p_0_in
    );
hsync_dly_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_r,
      Q => hsync,
      R => p_0_in
    );
hsync_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \pixcnt_reg__0\(8),
      I1 => \pixcnt_reg__0\(10),
      I2 => \pixcnt_reg__0\(9),
      I3 => hsync_r_i_2_n_0,
      O => hsync_r0
    );
hsync_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1111FEEE"
    )
        port map (
      I0 => \pixcnt_reg__0\(5),
      I1 => \pixcnt_reg__0\(6),
      I2 => \pixcnt_reg__0\(4),
      I3 => \pixcnt_reg__0\(3),
      I4 => \pixcnt_reg__0\(7),
      O => hsync_r_i_2_n_0
    );
hsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_r0,
      Q => hsync_r,
      R => p_0_in
    );
\linecnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000000FFFFFFFF"
    )
        port map (
      I0 => \linecnt[0]_i_4_n_0\,
      I1 => \pixcnt_reg__0\(6),
      I2 => \pixcnt_reg__0\(7),
      I3 => vsync_r_i_3_n_0,
      I4 => \linecnt[0]_i_5_n_0\,
      I5 => reset_n,
      O => \linecnt[0]_i_1_n_0\
    );
\linecnt[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pixcnt_reg__0\(10),
      I1 => \pixcnt_reg__0\(9),
      O => \linecnt[0]_i_10_n_0\
    );
\linecnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404440404040"
    )
        port map (
      I0 => \pixcnt[10]_i_4_n_0\,
      I1 => \linecnt[0]_i_6_n_0\,
      I2 => \linecnt[0]_i_7_n_0\,
      I3 => linecnt_reg(7),
      I4 => linecnt_reg(6),
      I5 => \linecnt[0]_i_8_n_0\,
      O => linecnt08_out
    );
\linecnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => linecnt_reg(1),
      I1 => linecnt_reg(2),
      I2 => linecnt_reg(0),
      I3 => \linecnt[0]_i_10_n_0\,
      I4 => \linecnt[0]_i_7_n_0\,
      I5 => \pixcnt[10]_i_4_n_0\,
      O => \linecnt[0]_i_4_n_0\
    );
\linecnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => linecnt_reg(5),
      I1 => linecnt_reg(6),
      I2 => linecnt_reg(3),
      I3 => linecnt_reg(4),
      I4 => linecnt_reg(7),
      I5 => \pixcnt_reg__0\(8),
      O => \linecnt[0]_i_5_n_0\
    );
\linecnt[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \pixcnt_reg__0\(6),
      I1 => \pixcnt_reg__0\(7),
      I2 => \pixcnt_reg__0\(10),
      I3 => \pixcnt_reg__0\(9),
      I4 => \pixcnt_reg__0\(8),
      I5 => vsync_r_i_3_n_0,
      O => \linecnt[0]_i_6_n_0\
    );
\linecnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => linecnt_reg(8),
      I1 => linecnt_reg(9),
      O => \linecnt[0]_i_7_n_0\
    );
\linecnt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001FFFFFFFFF"
    )
        port map (
      I0 => linecnt_reg(1),
      I1 => linecnt_reg(0),
      I2 => linecnt_reg(2),
      I3 => linecnt_reg(3),
      I4 => linecnt_reg(4),
      I5 => linecnt_reg(5),
      O => \linecnt[0]_i_8_n_0\
    );
\linecnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => linecnt_reg(0),
      O => \linecnt[0]_i_9_n_0\
    );
\linecnt_dly_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(0),
      Q => linecnt_dly_1(0),
      R => p_0_in
    );
\linecnt_dly_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(10),
      Q => linecnt_dly_1(10),
      R => p_0_in
    );
\linecnt_dly_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(11),
      Q => linecnt_dly_1(11),
      R => p_0_in
    );
\linecnt_dly_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(1),
      Q => linecnt_dly_1(1),
      R => p_0_in
    );
\linecnt_dly_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(2),
      Q => linecnt_dly_1(2),
      R => p_0_in
    );
\linecnt_dly_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(3),
      Q => linecnt_dly_1(3),
      R => p_0_in
    );
\linecnt_dly_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(4),
      Q => linecnt_dly_1(4),
      R => p_0_in
    );
\linecnt_dly_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(5),
      Q => linecnt_dly_1(5),
      R => p_0_in
    );
\linecnt_dly_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(6),
      Q => linecnt_dly_1(6),
      R => p_0_in
    );
\linecnt_dly_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(7),
      Q => linecnt_dly_1(7),
      R => p_0_in
    );
\linecnt_dly_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(8),
      Q => linecnt_dly_1(8),
      R => p_0_in
    );
\linecnt_dly_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_reg(9),
      Q => linecnt_dly_1(9),
      R => p_0_in
    );
\linecnt_dly_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(0),
      Q => v_cnt(0),
      R => p_0_in
    );
\linecnt_dly_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(10),
      Q => v_cnt(10),
      R => p_0_in
    );
\linecnt_dly_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(11),
      Q => v_cnt(11),
      R => p_0_in
    );
\linecnt_dly_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(1),
      Q => v_cnt(1),
      R => p_0_in
    );
\linecnt_dly_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(2),
      Q => v_cnt(2),
      R => p_0_in
    );
\linecnt_dly_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(3),
      Q => v_cnt(3),
      R => p_0_in
    );
\linecnt_dly_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(4),
      Q => v_cnt(4),
      R => p_0_in
    );
\linecnt_dly_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(5),
      Q => v_cnt(5),
      R => p_0_in
    );
\linecnt_dly_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(6),
      Q => v_cnt(6),
      R => p_0_in
    );
\linecnt_dly_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(7),
      Q => v_cnt(7),
      R => p_0_in
    );
\linecnt_dly_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(8),
      Q => v_cnt(8),
      R => p_0_in
    );
\linecnt_dly_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => linecnt_dly_1(9),
      Q => v_cnt(9),
      R => p_0_in
    );
\linecnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[0]_i_3_n_7\,
      Q => linecnt_reg(0),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \linecnt_reg[0]_i_3_n_0\,
      CO(2) => \linecnt_reg[0]_i_3_n_1\,
      CO(1) => \linecnt_reg[0]_i_3_n_2\,
      CO(0) => \linecnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \linecnt_reg[0]_i_3_n_4\,
      O(2) => \linecnt_reg[0]_i_3_n_5\,
      O(1) => \linecnt_reg[0]_i_3_n_6\,
      O(0) => \linecnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => linecnt_reg(3 downto 1),
      S(0) => \linecnt[0]_i_9_n_0\
    );
\linecnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[8]_i_1_n_5\,
      Q => linecnt_reg(10),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[8]_i_1_n_4\,
      Q => linecnt_reg(11),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[0]_i_3_n_6\,
      Q => linecnt_reg(1),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[0]_i_3_n_5\,
      Q => linecnt_reg(2),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[0]_i_3_n_4\,
      Q => linecnt_reg(3),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[4]_i_1_n_7\,
      Q => linecnt_reg(4),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \linecnt_reg[0]_i_3_n_0\,
      CO(3) => \linecnt_reg[4]_i_1_n_0\,
      CO(2) => \linecnt_reg[4]_i_1_n_1\,
      CO(1) => \linecnt_reg[4]_i_1_n_2\,
      CO(0) => \linecnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \linecnt_reg[4]_i_1_n_4\,
      O(2) => \linecnt_reg[4]_i_1_n_5\,
      O(1) => \linecnt_reg[4]_i_1_n_6\,
      O(0) => \linecnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => linecnt_reg(7 downto 4)
    );
\linecnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[4]_i_1_n_6\,
      Q => linecnt_reg(5),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[4]_i_1_n_5\,
      Q => linecnt_reg(6),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[4]_i_1_n_4\,
      Q => linecnt_reg(7),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[8]_i_1_n_7\,
      Q => linecnt_reg(8),
      R => \linecnt[0]_i_1_n_0\
    );
\linecnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \linecnt_reg[4]_i_1_n_0\,
      CO(3) => \NLW_linecnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \linecnt_reg[8]_i_1_n_1\,
      CO(1) => \linecnt_reg[8]_i_1_n_2\,
      CO(0) => \linecnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \linecnt_reg[8]_i_1_n_4\,
      O(2) => \linecnt_reg[8]_i_1_n_5\,
      O(1) => \linecnt_reg[8]_i_1_n_6\,
      O(0) => \linecnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => linecnt_reg(11 downto 8)
    );
\linecnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => linecnt08_out,
      D => \linecnt_reg[8]_i_1_n_6\,
      Q => linecnt_reg(9),
      R => \linecnt[0]_i_1_n_0\
    );
lv_dly_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lv_r,
      Q => lv,
      R => p_0_in
    );
lv_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000015"
    )
        port map (
      I0 => \pixcnt_reg__0\(10),
      I1 => linecnt_reg(8),
      I2 => linecnt_reg(9),
      I3 => linecnt_reg(11),
      I4 => linecnt_reg(10),
      O => lv_r0
    );
lv_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lv_r0,
      Q => lv_r,
      R => p_0_in
    );
\pixcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pixcnt_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\pixcnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFF5555DDDD5555"
    )
        port map (
      I0 => reset_n,
      I1 => \pixcnt_reg__0\(9),
      I2 => \pixcnt[10]_i_3_n_0\,
      I3 => \pixcnt[10]_i_4_n_0\,
      I4 => \pixcnt_reg__0\(10),
      I5 => \pixcnt_reg__0\(8),
      O => \pixcnt[10]_i_1_n_0\
    );
\pixcnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6CCCCCCCCCCCCC"
    )
        port map (
      I0 => \pixcnt_reg__0\(9),
      I1 => \pixcnt_reg__0\(10),
      I2 => \pixcnt_reg__0\(7),
      I3 => \pixcnt[10]_i_4_n_0\,
      I4 => \pixcnt_reg__0\(6),
      I5 => \pixcnt_reg__0\(8),
      O => \p_0_in__0\(10)
    );
\pixcnt[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pixcnt_reg__0\(6),
      I1 => \pixcnt_reg__0\(7),
      O => \pixcnt[10]_i_3_n_0\
    );
\pixcnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pixcnt_reg__0\(4),
      I1 => \pixcnt_reg__0\(2),
      I2 => \pixcnt_reg__0\(0),
      I3 => \pixcnt_reg__0\(1),
      I4 => \pixcnt_reg__0\(3),
      I5 => \pixcnt_reg__0\(5),
      O => \pixcnt[10]_i_4_n_0\
    );
\pixcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixcnt_reg__0\(0),
      I1 => \pixcnt_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\pixcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \pixcnt_reg__0\(1),
      I1 => \pixcnt_reg__0\(0),
      I2 => \pixcnt_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\pixcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pixcnt_reg__0\(2),
      I1 => \pixcnt_reg__0\(0),
      I2 => \pixcnt_reg__0\(1),
      I3 => \pixcnt_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\pixcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \pixcnt_reg__0\(3),
      I1 => \pixcnt_reg__0\(1),
      I2 => \pixcnt_reg__0\(0),
      I3 => \pixcnt_reg__0\(2),
      I4 => \pixcnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\pixcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \pixcnt_reg__0\(4),
      I1 => \pixcnt_reg__0\(2),
      I2 => \pixcnt_reg__0\(0),
      I3 => \pixcnt_reg__0\(1),
      I4 => \pixcnt_reg__0\(3),
      I5 => \pixcnt_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\pixcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixcnt[10]_i_4_n_0\,
      I1 => \pixcnt_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\pixcnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \pixcnt_reg__0\(6),
      I1 => \pixcnt[10]_i_4_n_0\,
      I2 => \pixcnt_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\pixcnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \pixcnt_reg__0\(7),
      I1 => \pixcnt[10]_i_4_n_0\,
      I2 => \pixcnt_reg__0\(6),
      I3 => \pixcnt_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\pixcnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \pixcnt_reg__0\(8),
      I1 => \pixcnt_reg__0\(6),
      I2 => \pixcnt[10]_i_4_n_0\,
      I3 => \pixcnt_reg__0\(7),
      I4 => \pixcnt_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\pixcnt_dly_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(0),
      Q => pixcnt_dly_1(0),
      R => p_0_in
    );
\pixcnt_dly_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(10),
      Q => pixcnt_dly_1(10),
      R => p_0_in
    );
\pixcnt_dly_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(1),
      Q => pixcnt_dly_1(1),
      R => p_0_in
    );
\pixcnt_dly_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(2),
      Q => pixcnt_dly_1(2),
      R => p_0_in
    );
\pixcnt_dly_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(3),
      Q => pixcnt_dly_1(3),
      R => p_0_in
    );
\pixcnt_dly_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(4),
      Q => pixcnt_dly_1(4),
      R => p_0_in
    );
\pixcnt_dly_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(5),
      Q => pixcnt_dly_1(5),
      R => p_0_in
    );
\pixcnt_dly_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(6),
      Q => pixcnt_dly_1(6),
      R => p_0_in
    );
\pixcnt_dly_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(7),
      Q => pixcnt_dly_1(7),
      R => p_0_in
    );
\pixcnt_dly_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(8),
      Q => pixcnt_dly_1(8),
      R => p_0_in
    );
\pixcnt_dly_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pixcnt_reg__0\(9),
      Q => pixcnt_dly_1(9),
      R => p_0_in
    );
\pixcnt_dly_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(0),
      Q => \^h_cnt\(0),
      R => p_0_in
    );
\pixcnt_dly_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(10),
      Q => \^h_cnt\(10),
      R => p_0_in
    );
\pixcnt_dly_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(1),
      Q => \^h_cnt\(1),
      R => p_0_in
    );
\pixcnt_dly_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(2),
      Q => \^h_cnt\(2),
      R => p_0_in
    );
\pixcnt_dly_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(3),
      Q => \^h_cnt\(3),
      R => p_0_in
    );
\pixcnt_dly_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(4),
      Q => \^h_cnt\(4),
      R => p_0_in
    );
\pixcnt_dly_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(5),
      Q => \^h_cnt\(5),
      R => p_0_in
    );
\pixcnt_dly_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(6),
      Q => \^h_cnt\(6),
      R => p_0_in
    );
\pixcnt_dly_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(7),
      Q => \^h_cnt\(7),
      R => p_0_in
    );
\pixcnt_dly_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(8),
      Q => \^h_cnt\(8),
      R => p_0_in
    );
\pixcnt_dly_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pixcnt_dly_1(9),
      Q => \^h_cnt\(9),
      R => p_0_in
    );
\pixcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \pixcnt_reg__0\(0),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => \pixcnt_reg__0\(10),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \pixcnt_reg__0\(1),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \pixcnt_reg__0\(2),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \pixcnt_reg__0\(3),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \pixcnt_reg__0\(4),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \pixcnt_reg__0\(5),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \pixcnt_reg__0\(6),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \pixcnt_reg__0\(7),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \pixcnt_reg__0\(8),
      R => \pixcnt[10]_i_1_n_0\
    );
\pixcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => \pixcnt_reg__0\(9),
      R => \pixcnt[10]_i_1_n_0\
    );
\raw_data1__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_data1__0_carry_n_0\,
      CO(2) => \raw_data1__0_carry_n_1\,
      CO(1) => \raw_data1__0_carry_n_2\,
      CO(0) => \raw_data1__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \raw_data1__0_carry_i_1_n_0\,
      DI(2) => \raw_data1__0_carry_i_2_n_0\,
      DI(1) => \raw_data1__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_raw_data1__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \raw_data1__0_carry_i_4_n_0\,
      S(2) => \raw_data1__0_carry_i_5_n_0\,
      S(1) => \raw_data1__0_carry_i_6_n_0\,
      S(0) => \raw_data1__0_carry_i_7_n_0\
    );
\raw_data1__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_data1__0_carry_n_0\,
      CO(3) => \raw_data1__0_carry__0_n_0\,
      CO(2) => \raw_data1__0_carry__0_n_1\,
      CO(1) => \raw_data1__0_carry__0_n_2\,
      CO(0) => \raw_data1__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \raw_data1__0_carry__0_i_1_n_0\,
      DI(2) => \raw_data1__0_carry__0_i_2_n_0\,
      DI(1) => \raw_data1__0_carry__0_i_3_n_0\,
      DI(0) => \raw_data1__0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_raw_data1__0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \raw_data1__0_carry__0_i_5_n_0\,
      S(2) => \raw_data1__0_carry__0_i_6_n_0\,
      S(1) => \raw_data1__0_carry__0_i_7_n_0\,
      S(0) => \raw_data1__0_carry__0_i_8_n_0\
    );
\raw_data1__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^x_cnt\(8),
      I1 => \^x_cnt\(4),
      I2 => \^x_cnt\(6),
      O => \raw_data1__0_carry__0_i_1_n_0\
    );
\raw_data1__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^x_cnt\(3),
      I1 => \^x_cnt\(7),
      I2 => \^x_cnt\(5),
      O => \raw_data1__0_carry__0_i_2_n_0\
    );
\raw_data1__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^x_cnt\(2),
      I1 => \^x_cnt\(6),
      I2 => \^x_cnt\(4),
      O => \raw_data1__0_carry__0_i_3_n_0\
    );
\raw_data1__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^x_cnt\(5),
      I1 => \^x_cnt\(1),
      I2 => \^x_cnt\(3),
      O => \raw_data1__0_carry__0_i_4_n_0\
    );
\raw_data1__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \^x_cnt\(6),
      I1 => \^x_cnt\(4),
      I2 => \^x_cnt\(8),
      I3 => \^x_cnt\(7),
      I4 => \^x_cnt\(9),
      I5 => \^x_cnt\(5),
      O => \raw_data1__0_carry__0_i_5_n_0\
    );
\raw_data1__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \^x_cnt\(5),
      I1 => \^x_cnt\(7),
      I2 => \^x_cnt\(3),
      I3 => \^x_cnt\(6),
      I4 => \^x_cnt\(8),
      I5 => \^x_cnt\(4),
      O => \raw_data1__0_carry__0_i_6_n_0\
    );
\raw_data1__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \^x_cnt\(4),
      I1 => \^x_cnt\(6),
      I2 => \^x_cnt\(2),
      I3 => \^x_cnt\(3),
      I4 => \^x_cnt\(5),
      I5 => \^x_cnt\(7),
      O => \raw_data1__0_carry__0_i_7_n_0\
    );
\raw_data1__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \^x_cnt\(3),
      I1 => \^x_cnt\(1),
      I2 => \^x_cnt\(5),
      I3 => \^x_cnt\(2),
      I4 => \^x_cnt\(4),
      I5 => \^x_cnt\(6),
      O => \raw_data1__0_carry__0_i_8_n_0\
    );
\raw_data1__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_data1__0_carry__0_n_0\,
      CO(3) => \raw_data1__0_carry__1_n_0\,
      CO(2) => \raw_data1__0_carry__1_n_1\,
      CO(1) => \raw_data1__0_carry__1_n_2\,
      CO(0) => \raw_data1__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \raw_data1__0_carry__1_i_1_n_0\,
      DI(2) => \raw_data1__0_carry__1_i_2_n_0\,
      DI(1) => \raw_data1__0_carry__1_i_3_n_0\,
      DI(0) => \raw_data1__0_carry__1_i_4_n_0\,
      O(3) => \raw_data1__0_carry__1_n_4\,
      O(2) => \raw_data1__0_carry__1_n_5\,
      O(1 downto 0) => \NLW_raw_data1__0_carry__1_O_UNCONNECTED\(1 downto 0),
      S(3) => \raw_data1__0_carry__1_i_5_n_0\,
      S(2) => \raw_data1__0_carry__1_i_6_n_0\,
      S(1) => \raw_data1__0_carry__1_i_7_n_0\,
      S(0) => \raw_data1__0_carry__1_i_8_n_0\
    );
\raw_data1__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^x_cnt\(8),
      I1 => \^x_cnt\(10),
      O => \raw_data1__0_carry__1_i_1_n_0\
    );
\raw_data1__0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \^x_cnt\(7),
      I1 => \^x_cnt\(9),
      I2 => \^x_cnt\(11),
      O => \raw_data1__0_carry__1_i_2_n_0\
    );
\raw_data1__0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \^x_cnt\(6),
      I1 => \^x_cnt\(8),
      I2 => \^x_cnt\(10),
      O => \raw_data1__0_carry__1_i_3_n_0\
    );
\raw_data1__0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^x_cnt\(9),
      I1 => \^x_cnt\(5),
      I2 => \^x_cnt\(7),
      O => \raw_data1__0_carry__1_i_4_n_0\
    );
\raw_data1__0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^x_cnt\(8),
      I1 => \^x_cnt\(10),
      I2 => \^x_cnt\(11),
      I3 => \^x_cnt\(9),
      O => \raw_data1__0_carry__1_i_5_n_0\
    );
\raw_data1__0_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \^x_cnt\(11),
      I1 => \^x_cnt\(9),
      I2 => \^x_cnt\(7),
      I3 => \^x_cnt\(10),
      I4 => \^x_cnt\(8),
      O => \raw_data1__0_carry__1_i_6_n_0\
    );
\raw_data1__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \^x_cnt\(10),
      I1 => \^x_cnt\(8),
      I2 => \^x_cnt\(6),
      I3 => \^x_cnt\(7),
      I4 => \^x_cnt\(9),
      I5 => \^x_cnt\(11),
      O => \raw_data1__0_carry__1_i_7_n_0\
    );
\raw_data1__0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \^x_cnt\(7),
      I1 => \^x_cnt\(5),
      I2 => \^x_cnt\(9),
      I3 => \^x_cnt\(6),
      I4 => \^x_cnt\(8),
      I5 => \^x_cnt\(10),
      O => \raw_data1__0_carry__1_i_8_n_0\
    );
\raw_data1__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_data1__0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_raw_data1__0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \raw_data1__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \raw_data1__0_carry__2_i_1_n_0\,
      O(3 downto 2) => \NLW_raw_data1__0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \raw_data1__0_carry__2_n_6\,
      O(0) => \raw_data1__0_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \raw_data1__0_carry__2_i_2_n_0\,
      S(0) => \raw_data1__0_carry__2_i_3_n_0\
    );
\raw_data1__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^x_cnt\(9),
      I1 => \^x_cnt\(11),
      O => \raw_data1__0_carry__2_i_1_n_0\
    );
\raw_data1__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(10),
      I1 => \^x_cnt\(11),
      O => \raw_data1__0_carry__2_i_2_n_0\
    );
\raw_data1__0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^x_cnt\(9),
      I1 => \^x_cnt\(11),
      I2 => \^x_cnt\(10),
      O => \raw_data1__0_carry__2_i_3_n_0\
    );
\raw_data1__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \^x_cnt\(4),
      I1 => \^x_cnt\(2),
      I2 => \^x_cnt\(0),
      O => \raw_data1__0_carry_i_1_n_0\
    );
\raw_data1__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^x_cnt\(0),
      I1 => \^x_cnt\(4),
      I2 => \^x_cnt\(2),
      O => \raw_data1__0_carry_i_2_n_0\
    );
\raw_data1__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^x_cnt\(2),
      I1 => \^x_cnt\(0),
      O => \raw_data1__0_carry_i_3_n_0\
    );
\raw_data1__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => \^x_cnt\(0),
      I1 => \^x_cnt\(2),
      I2 => \^x_cnt\(4),
      I3 => \^x_cnt\(3),
      I4 => \^x_cnt\(5),
      I5 => \^x_cnt\(1),
      O => \raw_data1__0_carry_i_4_n_0\
    );
\raw_data1__0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => \^x_cnt\(2),
      I1 => \^x_cnt\(4),
      I2 => \^x_cnt\(0),
      I3 => \^x_cnt\(3),
      I4 => \^x_cnt\(1),
      O => \raw_data1__0_carry_i_5_n_0\
    );
\raw_data1__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^x_cnt\(2),
      I1 => \^x_cnt\(0),
      I2 => \^x_cnt\(3),
      I3 => \^x_cnt\(1),
      O => \raw_data1__0_carry_i_6_n_0\
    );
\raw_data1__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^x_cnt\(2),
      I1 => \^x_cnt\(0),
      O => \raw_data1__0_carry_i_7_n_0\
    );
\raw_data1__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_data1__30_carry_n_0\,
      CO(2) => \raw_data1__30_carry_n_1\,
      CO(1) => \raw_data1__30_carry_n_2\,
      CO(0) => \raw_data1__30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \raw_data1__30_carry_i_1_n_0\,
      DI(2) => \raw_data1__0_carry__1_n_5\,
      DI(1 downto 0) => B"01",
      O(3) => \raw_data1__30_carry_n_4\,
      O(2) => \raw_data1__30_carry_n_5\,
      O(1) => \raw_data1__30_carry_n_6\,
      O(0) => \raw_data1__30_carry_n_7\,
      S(3) => \raw_data1__30_carry_i_2_n_0\,
      S(2) => \raw_data1__30_carry_i_3_n_0\,
      S(1) => \raw_data1__30_carry_i_4_n_0\,
      S(0) => \raw_data1__0_carry__1_n_5\
    );
\raw_data1__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_data1__30_carry_n_0\,
      CO(3) => \NLW_raw_data1__30_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \raw_data1__30_carry__0_n_1\,
      CO(1) => \raw_data1__30_carry__0_n_2\,
      CO(0) => \raw_data1__30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \raw_data1__30_carry__0_i_1_n_0\,
      DI(1) => \raw_data1__30_carry__0_i_2_n_0\,
      DI(0) => \raw_data1__30_carry__0_i_3_n_0\,
      O(3) => \raw_data1__30_carry__0_n_4\,
      O(2) => \raw_data1__30_carry__0_n_5\,
      O(1) => \raw_data1__30_carry__0_n_6\,
      O(0) => \raw_data1__30_carry__0_n_7\,
      S(3) => \raw_data1__30_carry__0_i_4_n_0\,
      S(2) => \raw_data1__30_carry__0_i_5_n_0\,
      S(1) => \raw_data1__30_carry__0_i_6_n_0\,
      S(0) => \raw_data1__30_carry__0_i_7_n_0\
    );
\raw_data1__30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_4\,
      I1 => \raw_data1__0_carry__2_n_6\,
      O => \raw_data1__30_carry__0_i_1_n_0\
    );
\raw_data1__30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_4\,
      I1 => \raw_data1__0_carry__2_n_6\,
      O => \raw_data1__30_carry__0_i_2_n_0\
    );
\raw_data1__30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_5\,
      I1 => \raw_data1__0_carry__2_n_7\,
      O => \raw_data1__30_carry__0_i_3_n_0\
    );
\raw_data1__30_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_5\,
      I1 => \raw_data1__0_carry__2_n_7\,
      I2 => \raw_data1__0_carry__1_n_4\,
      I3 => \raw_data1__0_carry__2_n_6\,
      O => \raw_data1__30_carry__0_i_4_n_0\
    );
\raw_data1__30_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \raw_data1__0_carry__2_n_6\,
      I1 => \raw_data1__0_carry__1_n_4\,
      I2 => \raw_data1__0_carry__1_n_5\,
      I3 => \raw_data1__0_carry__2_n_7\,
      O => \raw_data1__30_carry__0_i_5_n_0\
    );
\raw_data1__30_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \raw_data1__0_carry__2_n_7\,
      I1 => \raw_data1__0_carry__1_n_5\,
      I2 => \raw_data1__0_carry__2_n_6\,
      I3 => \raw_data1__0_carry__1_n_4\,
      O => \raw_data1__30_carry__0_i_6_n_0\
    );
\raw_data1__30_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => \raw_data1__0_carry__2_n_7\,
      I1 => \raw_data1__0_carry__1_n_5\,
      I2 => \raw_data1__0_carry__2_n_6\,
      I3 => \raw_data1__0_carry__1_n_4\,
      O => \raw_data1__30_carry__0_i_7_n_0\
    );
\raw_data1__30_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_5\,
      O => \raw_data1__30_carry_i_1_n_0\
    );
\raw_data1__30_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_5\,
      I1 => \raw_data1__0_carry__2_n_6\,
      I2 => \raw_data1__0_carry__1_n_4\,
      O => \raw_data1__30_carry_i_2_n_0\
    );
\raw_data1__30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \raw_data1__0_carry__2_n_7\,
      I1 => \raw_data1__0_carry__1_n_5\,
      O => \raw_data1__30_carry_i_3_n_0\
    );
\raw_data1__30_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \raw_data1__0_carry__1_n_4\,
      O => \raw_data1__30_carry_i_4_n_0\
    );
\raw_data1__50_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_data1__50_carry_n_0\,
      CO(2) => \raw_data1__50_carry_n_1\,
      CO(1) => \raw_data1__50_carry_n_2\,
      CO(0) => \raw_data1__50_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^x_cnt\(3 downto 0),
      O(3) => \raw_data1__50_carry_n_4\,
      O(2) => \raw_data1__50_carry_n_5\,
      O(1 downto 0) => \NLW_raw_data1__50_carry_O_UNCONNECTED\(1 downto 0),
      S(3) => \raw_data1__50_carry_i_1_n_0\,
      S(2) => \raw_data1__50_carry_i_2_n_0\,
      S(1) => \raw_data1__50_carry_i_3_n_0\,
      S(0) => \raw_data1__50_carry_i_4_n_0\
    );
\raw_data1__50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_data1__50_carry_n_0\,
      CO(3) => \raw_data1__50_carry__0_n_0\,
      CO(2) => \raw_data1__50_carry__0_n_1\,
      CO(1) => \raw_data1__50_carry__0_n_2\,
      CO(0) => \raw_data1__50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^x_cnt\(7 downto 4),
      O(3) => \raw_data1__50_carry__0_n_4\,
      O(2) => \raw_data1__50_carry__0_n_5\,
      O(1) => \raw_data1__50_carry__0_n_6\,
      O(0) => \raw_data1__50_carry__0_n_7\,
      S(3) => \raw_data1__50_carry__0_i_1_n_0\,
      S(2) => \raw_data1__50_carry__0_i_2_n_0\,
      S(1) => \raw_data1__50_carry__0_i_3_n_0\,
      S(0) => \raw_data1__50_carry__0_i_4_n_0\
    );
\raw_data1__50_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(7),
      I1 => \raw_data1__30_carry__0_n_6\,
      O => \raw_data1__50_carry__0_i_1_n_0\
    );
\raw_data1__50_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(6),
      I1 => \raw_data1__30_carry__0_n_7\,
      O => \raw_data1__50_carry__0_i_2_n_0\
    );
\raw_data1__50_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(5),
      I1 => \raw_data1__30_carry_n_4\,
      O => \raw_data1__50_carry__0_i_3_n_0\
    );
\raw_data1__50_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(4),
      I1 => \raw_data1__30_carry_n_5\,
      O => \raw_data1__50_carry__0_i_4_n_0\
    );
\raw_data1__50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_data1__50_carry__0_n_0\,
      CO(3 downto 1) => \NLW_raw_data1__50_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \raw_data1__50_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^x_cnt\(8),
      O(3 downto 2) => \NLW_raw_data1__50_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \raw_data1__50_carry__1_n_6\,
      O(0) => \raw_data1__50_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \raw_data1__50_carry__1_i_1_n_0\,
      S(0) => \raw_data1__50_carry__1_i_2_n_0\
    );
\raw_data1__50_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(9),
      I1 => \raw_data1__30_carry__0_n_4\,
      O => \raw_data1__50_carry__1_i_1_n_0\
    );
\raw_data1__50_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(8),
      I1 => \raw_data1__30_carry__0_n_5\,
      O => \raw_data1__50_carry__1_i_2_n_0\
    );
\raw_data1__50_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(3),
      I1 => \raw_data1__30_carry_n_6\,
      O => \raw_data1__50_carry_i_1_n_0\
    );
\raw_data1__50_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^x_cnt\(2),
      I1 => \raw_data1__30_carry_n_7\,
      O => \raw_data1__50_carry_i_2_n_0\
    );
\raw_data1__50_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^x_cnt\(1),
      O => \raw_data1__50_carry_i_3_n_0\
    );
\raw_data1__50_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^x_cnt\(0),
      O => \raw_data1__50_carry_i_4_n_0\
    );
\raw_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => \raw_data[9]_i_2_n_0\,
      I1 => \raw_data[9]_i_3_n_0\,
      I2 => \raw_data[9]_i_4_n_0\,
      I3 => \raw_data[9]_i_5_n_0\,
      I4 => \raw_data[9]_i_6_n_0\,
      I5 => \raw_data[9]_i_7_n_0\,
      O => p_1_in(9)
    );
\raw_data[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \raw_data1__50_carry_n_4\,
      I1 => \raw_data1__50_carry__0_n_6\,
      I2 => \raw_data1__50_carry__0_n_7\,
      I3 => \raw_data1__50_carry__0_n_5\,
      O => \raw_data[9]_i_10_n_0\
    );
\raw_data[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000EE1"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_7\,
      I1 => \raw_data1__50_carry__0_n_6\,
      I2 => \pixcnt_reg__0\(0),
      I3 => linecnt_reg(0),
      I4 => \raw_data1__50_carry__0_n_5\,
      O => \raw_data[9]_i_11_n_0\
    );
\raw_data[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088888888888"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_5\,
      I1 => \raw_data[9]_i_16_n_0\,
      I2 => \raw_data1__50_carry__0_n_6\,
      I3 => \raw_data1__50_carry_n_4\,
      I4 => \raw_data1__50_carry_n_5\,
      I5 => \raw_data1__50_carry__0_n_7\,
      O => \raw_data[9]_i_12_n_0\
    );
\raw_data[9]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \pixcnt_reg__0\(0),
      I1 => linecnt_reg(0),
      I2 => \raw_data1__50_carry__0_n_4\,
      O => \raw_data[9]_i_13_n_0\
    );
\raw_data[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_6\,
      I1 => \raw_data1__50_carry__0_n_5\,
      I2 => \raw_data1__50_carry__0_n_7\,
      I3 => \raw_data1__50_carry_n_5\,
      I4 => \raw_data1__50_carry_n_4\,
      O => \raw_data[9]_i_14_n_0\
    );
\raw_data[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554AAAA0022AAAA"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_4\,
      I1 => \raw_data1__50_carry_n_4\,
      I2 => \raw_data1__50_carry_n_5\,
      I3 => \raw_data1__50_carry__0_n_7\,
      I4 => \raw_data1__50_carry__0_n_5\,
      I5 => \raw_data1__50_carry__0_n_6\,
      O => \raw_data[9]_i_15_n_0\
    );
\raw_data[9]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => linecnt_reg(0),
      I1 => \pixcnt_reg__0\(0),
      O => \raw_data[9]_i_16_n_0\
    );
\raw_data[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_5\,
      I1 => \raw_data1__50_carry__0_n_6\,
      I2 => \raw_data1__50_carry__0_n_4\,
      I3 => reset_n,
      I4 => \raw_data[9]_i_8_n_0\,
      O => \raw_data[9]_i_2_n_0\
    );
\raw_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C4C4C000C4040"
    )
        port map (
      I0 => \raw_data[9]_i_9_n_0\,
      I1 => reset_n,
      I2 => \raw_data1__50_carry__1_n_7\,
      I3 => \raw_data[9]_i_10_n_0\,
      I4 => \raw_data1__50_carry__0_n_4\,
      I5 => \raw_data1__50_carry__1_n_6\,
      O => \raw_data[9]_i_3_n_0\
    );
\raw_data[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => linecnt_reg(0),
      I1 => \pixcnt_reg__0\(0),
      O => \raw_data[9]_i_4_n_0\
    );
\raw_data[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_4\,
      I1 => \raw_data1__50_carry__1_n_7\,
      I2 => reset_n,
      I3 => \raw_data[9]_i_11_n_0\,
      I4 => \raw_data[9]_i_12_n_0\,
      O => \raw_data[9]_i_5_n_0\
    );
\raw_data[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080A080008000"
    )
        port map (
      I0 => \raw_data[9]_i_13_n_0\,
      I1 => \raw_data[9]_i_9_n_0\,
      I2 => reset_n,
      I3 => \raw_data1__50_carry__1_n_7\,
      I4 => \raw_data1__50_carry__1_n_6\,
      I5 => \raw_data[9]_i_14_n_0\,
      O => \raw_data[9]_i_6_n_0\
    );
\raw_data[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000060000000000"
    )
        port map (
      I0 => linecnt_reg(0),
      I1 => \pixcnt_reg__0\(0),
      I2 => \raw_data1__50_carry__1_n_7\,
      I3 => reset_n,
      I4 => \raw_data1__50_carry__1_n_6\,
      I5 => \raw_data[9]_i_15_n_0\,
      O => \raw_data[9]_i_7_n_0\
    );
\raw_data[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \raw_data1__50_carry_n_4\,
      I1 => \raw_data1__50_carry_n_5\,
      I2 => \raw_data1__50_carry__0_n_7\,
      O => \raw_data[9]_i_8_n_0\
    );
\raw_data[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEAEAEA"
    )
        port map (
      I0 => \raw_data1__50_carry__0_n_5\,
      I1 => \raw_data1__50_carry__0_n_6\,
      I2 => \raw_data1__50_carry__0_n_7\,
      I3 => \raw_data1__50_carry_n_4\,
      I4 => \raw_data1__50_carry_n_5\,
      O => \raw_data[9]_i_9_n_0\
    );
\raw_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => data(0),
      R => '0'
    );
ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset_n,
      Q => ready,
      R => '0'
    );
vsync_dly_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_r,
      Q => vsync,
      R => p_0_in
    );
vsync_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5542000000000000"
    )
        port map (
      I0 => linecnt_reg(3),
      I1 => linecnt_reg(1),
      I2 => linecnt_reg(0),
      I3 => linecnt_reg(2),
      I4 => vsync_r_i_2_n_0,
      I5 => vsync_r_i_3_n_0,
      O => vsync_r0
    );
vsync_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => linecnt_reg(6),
      I1 => linecnt_reg(7),
      I2 => linecnt_reg(4),
      I3 => linecnt_reg(5),
      I4 => linecnt_reg(9),
      I5 => linecnt_reg(8),
      O => vsync_r_i_2_n_0
    );
vsync_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => linecnt_reg(10),
      I1 => linecnt_reg(11),
      O => vsync_r_i_3_n_0
    );
vsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_r0,
      Q => vsync_r,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_raw_colorbar_gen_0_0 is
  port (
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    fv : out STD_LOGIC;
    lv : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 9 downto 0 );
    de : out STD_LOGIC;
    vsync : out STD_LOGIC;
    hsync : out STD_LOGIC;
    x_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    y_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    h_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    v_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_raw_colorbar_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_raw_colorbar_gen_0_0 : entity is "design_1_raw_colorbar_gen_0_0,raw_colorbar_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_raw_colorbar_gen_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_raw_colorbar_gen_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_raw_colorbar_gen_0_0 : entity is "raw_colorbar_gen,Vivado 2018.3";
end design_1_raw_colorbar_gen_0_0;

architecture STRUCTURE of design_1_raw_colorbar_gen_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^h_cnt\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 65000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  data(9) <= \^data\(8);
  data(8) <= \^data\(8);
  data(7) <= \^data\(8);
  data(6) <= \^data\(8);
  data(5) <= \^data\(8);
  data(4) <= \^data\(8);
  data(3) <= \^data\(8);
  data(2) <= \^data\(8);
  data(1) <= \^data\(8);
  data(0) <= \^data\(8);
  h_cnt(11) <= \<const0>\;
  h_cnt(10 downto 0) <= \^h_cnt\(10 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_raw_colorbar_gen_0_0_raw_colorbar_gen
     port map (
      clk => clk,
      data(0) => \^data\(8),
      de => de,
      fv => fv,
      h_cnt(10 downto 0) => \^h_cnt\(10 downto 0),
      hsync => hsync,
      lv => lv,
      ready => ready,
      reset_n => reset_n,
      v_cnt(11 downto 0) => v_cnt(11 downto 0),
      vsync => vsync,
      x_cnt(11 downto 0) => x_cnt(11 downto 0),
      y_cnt(11 downto 0) => y_cnt(11 downto 0)
    );
end STRUCTURE;
