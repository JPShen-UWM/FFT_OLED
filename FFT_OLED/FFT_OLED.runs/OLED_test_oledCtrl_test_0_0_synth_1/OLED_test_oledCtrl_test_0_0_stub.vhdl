-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May  9 23:49:57 2021
-- Host        : DESKTOP-FMMQV0S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OLED_test_oledCtrl_test_0_0_stub.vhdl
-- Design      : OLED_test_oledCtrl_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    A : in STD_LOGIC;
    oled_SCLK : out STD_LOGIC;
    oled_SDIN : out STD_LOGIC;
    oled_vdd : out STD_LOGIC;
    oled_vbat : out STD_LOGIC;
    oled_rst_n : out STD_LOGIC;
    oled_dc_n : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,A,oled_SCLK,oled_SDIN,oled_vdd,oled_vbat,oled_rst_n,oled_dc_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "oledCtrl_test,Vivado 2020.2";
begin
end;
