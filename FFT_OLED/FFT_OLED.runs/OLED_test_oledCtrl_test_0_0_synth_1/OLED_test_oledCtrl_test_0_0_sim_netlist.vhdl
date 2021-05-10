-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May  9 23:49:57 2021
-- Host        : DESKTOP-FMMQV0S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OLED_test_oledCtrl_test_0_0_sim_netlist.vhdl
-- Design      : OLED_test_oledCtrl_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_ctrl is
  port (
    oled_SCLK : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    oled_SDIN : out STD_LOGIC;
    oled_rst_n : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch : in STD_LOGIC;
    oled_vbat : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_ctrl is
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal oled_rst_n_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal shift : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:00,FRONT:01,SHIFT:10,BACK:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:00,FRONT:01,SHIFT:10,BACK:11";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of oled_SCLK_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of oled_SDIN_INST_0 : label is "soft_lutpair7";
begin
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => rst,
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => state(0),
      I3 => rst,
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => p_0_in,
      I2 => sel0(2),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => load,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => state(0),
      I1 => p_0_in,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0003BAAA"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => E(0)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3033AF3A"
    )
        port map (
      I0 => switch,
      I1 => oled_rst_n_INST_0_i_1_n_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => state(1),
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => \p_0_in__0\(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \cnt_reg_n_0_[0]\,
      S => \cnt[3]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \cnt_reg_n_0_[1]\,
      S => \cnt[3]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[3]_i_2_n_0\,
      Q => p_0_in,
      S => \cnt[3]_i_1_n_0\
    );
\data_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => sel0(0),
      I1 => shift,
      I2 => load,
      O => \data_cnt[0]_i_1_n_0\
    );
\data_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => sel0(1),
      I1 => shift,
      I2 => sel0(0),
      I3 => load,
      O => \data_cnt[1]_i_1_n_0\
    );
\data_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => sel0(2),
      I1 => shift,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => load,
      O => \data_cnt[2]_i_1_n_0\
    );
\data_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => state(1),
      I5 => state(0),
      O => shift
    );
\data_cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => state(1),
      I5 => state(0),
      O => load
    );
\data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_cnt[0]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_cnt[1]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_cnt[2]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => state(1),
      I4 => state(0),
      O => p_1_in(0)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92FF9200"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => load,
      I4 => \data_reg_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEDC"
    )
        port map (
      I0 => shift,
      I1 => load,
      I2 => \data_reg_reg_n_0_[2]\,
      I3 => \data_reg_reg_n_0_[1]\,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92FF9200"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => load,
      I4 => \data_reg_reg_n_0_[2]\,
      O => p_1_in(3)
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[3]\,
      I1 => load,
      O => p_1_in(4)
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEDC"
    )
        port map (
      I0 => shift,
      I1 => load,
      I2 => \data_reg_reg_n_0_[5]\,
      I3 => \data_reg_reg_n_0_[4]\,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift,
      I1 => load,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[5]\,
      I1 => load,
      O => p_1_in(6)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEDC"
    )
        port map (
      I0 => shift,
      I1 => load,
      I2 => data_reg(7),
      I3 => \data_reg_reg_n_0_[6]\,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[6]_i_1_n_0\,
      D => p_1_in(0),
      Q => \data_reg_reg_n_0_[0]\,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[6]_i_1_n_0\,
      D => p_1_in(1),
      Q => \data_reg_reg_n_0_[1]\,
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg[2]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[2]\,
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[6]_i_1_n_0\,
      D => p_1_in(3),
      Q => \data_reg_reg_n_0_[3]\,
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[6]_i_1_n_0\,
      D => p_1_in(4),
      Q => \data_reg_reg_n_0_[4]\,
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg[5]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[5]\,
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[6]_i_1_n_0\,
      D => p_1_in(6),
      Q => \data_reg_reg_n_0_[6]\,
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg[7]_i_1_n_0\,
      Q => data_reg(7),
      R => '0'
    );
oled_SCLK_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      O => oled_SCLK
    );
oled_SDIN_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_reg(7),
      I1 => state(0),
      I2 => state(1),
      O => oled_SDIN
    );
oled_rst_n_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0101FFFD"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => oled_rst_n_INST_0_i_1_n_0,
      I4 => Q(3),
      O => oled_rst_n
    );
oled_rst_n_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => state(1),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => p_0_in,
      I5 => state(0),
      O => oled_rst_n_INST_0_i_1_n_0
    );
oled_vbat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00000300"
    )
        port map (
      I0 => oled_rst_n_INST_0_i_1_n_0,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => oled_vbat,
      O => \FSM_sequential_state_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer is
  port (
    switch : out STD_LOGIC;
    A : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal rst_counter : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^switch\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2__0\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "RISE:01,FALL:10,HOLD:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "RISE:01,FALL:10,HOLD:11,IDLE:00";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair0";
begin
  switch <= \^switch\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA2A"
    )
        port map (
      I0 => A,
      I1 => \^switch\,
      I2 => \FSM_sequential_state[1]_i_2__0_n_0\,
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^switch\,
      I1 => \FSM_sequential_state[1]_i_2__0_n_0\,
      I2 => state(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      O => \FSM_sequential_state[1]_i_2__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^switch\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^switch\,
      I1 => A,
      I2 => state(0),
      O => rst_counter
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(1),
      I2 => counter_reg(0),
      I3 => counter_reg(2),
      O => p_0_in(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter_reg(0),
      R => rst_counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => counter_reg(1),
      R => rst_counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => counter_reg(2),
      R => rst_counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => counter_reg(3),
      R => rst_counter
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay100ms is
  port (
    \count_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    oled_vdd_reg : in STD_LOGIC;
    oled_vdd_reg_0 : in STD_LOGIC;
    oled_vdd : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay100ms;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay100ms is
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[16]_i_2_n_0\ : STD_LOGIC;
  signal \count[16]_i_3_n_0\ : STD_LOGIC;
  signal \count[16]_i_4_n_0\ : STD_LOGIC;
  signal \count[16]_i_5_n_0\ : STD_LOGIC;
  signal \count[20]_i_2_n_0\ : STD_LOGIC;
  signal \count[20]_i_3_n_0\ : STD_LOGIC;
  signal \count[20]_i_4_n_0\ : STD_LOGIC;
  signal \count[20]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \^count_reg[2]_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal oled_vdd_i_10_n_0 : STD_LOGIC;
  signal oled_vdd_i_5_n_0 : STD_LOGIC;
  signal oled_vdd_i_6_n_0 : STD_LOGIC;
  signal oled_vdd_i_7_n_0 : STD_LOGIC;
  signal oled_vdd_i_8_n_0 : STD_LOGIC;
  signal oled_vdd_i_9_n_0 : STD_LOGIC;
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
begin
  \count_reg[2]_0\ <= \^count_reg[2]_0\;
\count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10040000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^count_reg[2]_0\,
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(3),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(2),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(1),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044000"
    )
        port map (
      I0 => count_reg(0),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[0]_i_6_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(15),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(14),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(13),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(12),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[12]_i_5_n_0\
    );
\count[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(19),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[16]_i_2_n_0\
    );
\count[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(18),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[16]_i_3_n_0\
    );
\count[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(17),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[16]_i_4_n_0\
    );
\count[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(16),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[16]_i_5_n_0\
    );
\count[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(23),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[20]_i_2_n_0\
    );
\count[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(22),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[20]_i_3_n_0\
    );
\count[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(21),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[20]_i_4_n_0\
    );
\count[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(20),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[20]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(7),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(6),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(5),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(4),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(11),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(10),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(9),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000088000"
    )
        port map (
      I0 => count_reg(8),
      I1 => \^count_reg[2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_2_n_0\,
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3) => \count[0]_i_3_n_0\,
      S(2) => \count[0]_i_4_n_0\,
      S(1) => \count[0]_i_5_n_0\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16)
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3) => \count[16]_i_2_n_0\,
      S(2) => \count[16]_i_3_n_0\,
      S(1) => \count[16]_i_4_n_0\,
      S(0) => \count[16]_i_5_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20)
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3) => \count[20]_i_2_n_0\,
      S(2) => \count[20]_i_3_n_0\,
      S(1) => \count[20]_i_4_n_0\,
      S(0) => \count[20]_i_5_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22)
    );
\count_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9)
    );
oled_vdd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBAAAAAAAA"
    )
        port map (
      I0 => oled_vdd_reg,
      I1 => oled_vdd_reg_0,
      I2 => \^count_reg[2]_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => oled_vdd,
      O => \FSM_sequential_state_reg[0]\
    );
oled_vdd_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(9),
      I2 => count_reg(11),
      I3 => count_reg(18),
      O => oled_vdd_i_10_n_0
    );
oled_vdd_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => oled_vdd_i_5_n_0,
      I1 => oled_vdd_i_6_n_0,
      I2 => oled_vdd_i_7_n_0,
      I3 => oled_vdd_i_8_n_0,
      I4 => oled_vdd_i_9_n_0,
      I5 => oled_vdd_i_10_n_0,
      O => \^count_reg[2]_0\
    );
oled_vdd_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(16),
      I2 => count_reg(20),
      I3 => count_reg(1),
      O => oled_vdd_i_5_n_0
    );
oled_vdd_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => count_reg(22),
      I1 => count_reg(0),
      I2 => count_reg(15),
      I3 => count_reg(19),
      O => oled_vdd_i_6_n_0
    );
oled_vdd_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => count_reg(21),
      I1 => count_reg(4),
      I2 => count_reg(10),
      I3 => count_reg(13),
      O => oled_vdd_i_7_n_0
    );
oled_vdd_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count_reg(12),
      I1 => count_reg(5),
      I2 => count_reg(3),
      I3 => count_reg(8),
      O => oled_vdd_i_8_n_0
    );
oled_vdd_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => count_reg(23),
      I1 => count_reg(7),
      I2 => count_reg(6),
      I3 => count_reg(17),
      O => oled_vdd_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl is
  port (
    oled_vdd : out STD_LOGIC;
    oled_vbat : out STD_LOGIC;
    oled_SCLK : out STD_LOGIC;
    oled_SDIN : out STD_LOGIC;
    oled_rst_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    switch : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl is
  signal DELAY_n_0 : STD_LOGIC;
  signal DELAY_n_1 : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal OLED_SC_n_1 : STD_LOGIC;
  signal OLED_SC_n_4 : STD_LOGIC;
  signal nxt_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^oled_vbat\ : STD_LOGIC;
  signal \^oled_vdd\ : STD_LOGIC;
  signal oled_vdd_i_2_n_0 : STD_LOGIC;
  signal oled_vdd_i_3_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "VBATON:0010,PWROFFDELAY:1000,PWRON2:0001,IDLE:0000,SETFULL:0101,DISPLAYOFF:0111,DISPLAYON:0100,RUNNING:0110,PWRONDELAY:0011";
  attribute SOFT_HLUTNM of oled_vdd_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of oled_vdd_i_3 : label is "soft_lutpair11";
begin
  oled_vbat <= \^oled_vbat\;
  oled_vdd <= \^oled_vdd\;
DELAY: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay100ms
     port map (
      \FSM_sequential_state_reg[0]\ => DELAY_n_1,
      Q(3 downto 0) => state(3 downto 0),
      clk => clk,
      \count_reg[2]_0\ => DELAY_n_0,
      oled_vdd => \^oled_vdd\,
      oled_vdd_reg => oled_vdd_i_2_n_0,
      oled_vdd_reg_0 => oled_vdd_i_3_n_0,
      rst => rst
    );
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      O => nxt_state(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      O => nxt_state(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => nxt_state(2)
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => OLED_SC_n_1,
      CLR => rst,
      D => nxt_state(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => OLED_SC_n_1,
      CLR => rst,
      D => nxt_state(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => OLED_SC_n_1,
      CLR => rst,
      D => nxt_state(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => OLED_SC_n_1,
      CLR => rst,
      D => \FSM_sequential_state[3]_i_2_n_0\,
      Q => state(3)
    );
OLED_SC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_ctrl
     port map (
      E(0) => OLED_SC_n_1,
      \FSM_sequential_state_reg[0]_0\ => DELAY_n_0,
      \FSM_sequential_state_reg[3]\ => OLED_SC_n_4,
      Q(3 downto 0) => state(3 downto 0),
      clk => clk,
      oled_SCLK => oled_SCLK,
      oled_SDIN => oled_SDIN,
      oled_rst_n => oled_rst_n,
      oled_vbat => \^oled_vbat\,
      rst => rst,
      switch => switch
    );
oled_vbat_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => OLED_SC_n_4,
      Q => \^oled_vbat\
    );
oled_vdd_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      I4 => switch,
      O => oled_vdd_i_2_n_0
    );
oled_vdd_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      O => oled_vdd_i_3_n_0
    );
oled_vdd_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => DELAY_n_1,
      Q => \^oled_vdd\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl_test is
  port (
    oled_SCLK : out STD_LOGIC;
    oled_SDIN : out STD_LOGIC;
    oled_rst_n : out STD_LOGIC;
    oled_vdd : out STD_LOGIC;
    oled_vbat : out STD_LOGIC;
    A : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl_test;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl_test is
  signal switch : STD_LOGIC;
begin
DEB: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debouncer
     port map (
      A => A,
      clk => clk,
      rst => rst,
      switch => switch
    );
DUT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl
     port map (
      clk => clk,
      oled_SCLK => oled_SCLK,
      oled_SDIN => oled_SDIN,
      oled_rst_n => oled_rst_n,
      oled_vbat => oled_vbat,
      oled_vdd => oled_vdd,
      rst => rst,
      switch => switch
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "OLED_test_oledCtrl_test_0_0,oledCtrl_test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "oledCtrl_test,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN OLED_test_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of oled_rst_n : signal is "xilinx.com:signal:reset:1.0 oled_rst_n RST";
  attribute X_INTERFACE_PARAMETER of oled_rst_n : signal is "XIL_INTERFACENAME oled_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  oled_dc_n <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oledCtrl_test
     port map (
      A => A,
      clk => clk,
      oled_SCLK => oled_SCLK,
      oled_SDIN => oled_SDIN,
      oled_rst_n => oled_rst_n,
      oled_vbat => oled_vbat,
      oled_vdd => oled_vdd,
      rst => rst
    );
end STRUCTURE;
