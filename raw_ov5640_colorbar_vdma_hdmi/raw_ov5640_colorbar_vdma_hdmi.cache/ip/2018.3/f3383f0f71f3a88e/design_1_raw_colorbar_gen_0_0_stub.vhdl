-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Apr 19 21:56:46 2021
-- Host        : archlinux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_raw_colorbar_gen_0_0_stub.vhdl
-- Design      : design_1_raw_colorbar_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset_n,clk,data_i[9:0],fv,lv,data[9:0],de,vsync,hsync,x_cnt[11:0],y_cnt[11:0],h_cnt[11:0],v_cnt[11:0],ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "raw_colorbar_gen,Vivado 2018.3";
begin
end;
