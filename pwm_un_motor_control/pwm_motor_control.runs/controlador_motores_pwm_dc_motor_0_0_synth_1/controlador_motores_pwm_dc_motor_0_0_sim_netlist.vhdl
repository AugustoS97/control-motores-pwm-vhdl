-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jun 22 21:09:09 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ controlador_motores_pwm_dc_motor_0_0_sim_netlist.vhdl
-- Design      : controlador_motores_pwm_dc_motor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_dc_motor is
  port (
    PWM : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_dc_motor;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_dc_motor is
  signal PWM0_carry_i_1_n_0 : STD_LOGIC;
  signal PWM0_carry_i_2_n_0 : STD_LOGIC;
  signal PWM0_carry_i_3_n_0 : STD_LOGIC;
  signal PWM0_carry_i_4_n_0 : STD_LOGIC;
  signal PWM0_carry_i_5_n_0 : STD_LOGIC;
  signal PWM0_carry_i_6_n_0 : STD_LOGIC;
  signal PWM0_carry_i_7_n_0 : STD_LOGIC;
  signal PWM0_carry_i_8_n_0 : STD_LOGIC;
  signal PWM0_carry_n_1 : STD_LOGIC;
  signal PWM0_carry_n_2 : STD_LOGIC;
  signal PWM0_carry_n_3 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal cnt_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PWM0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[6]_i_2\ : label is "soft_lutpair1";
begin
PWM0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PWM,
      CO(2) => PWM0_carry_n_1,
      CO(1) => PWM0_carry_n_2,
      CO(0) => PWM0_carry_n_3,
      CYINIT => '0',
      DI(3) => PWM0_carry_i_1_n_0,
      DI(2) => PWM0_carry_i_2_n_0,
      DI(1) => PWM0_carry_i_3_n_0,
      DI(0) => PWM0_carry_i_4_n_0,
      O(3 downto 0) => NLW_PWM0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => PWM0_carry_i_5_n_0,
      S(2) => PWM0_carry_i_6_n_0,
      S(1) => PWM0_carry_i_7_n_0,
      S(0) => PWM0_carry_i_8_n_0
    );
PWM0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => entrada(7),
      I1 => cnt(6),
      I2 => entrada(6),
      I3 => cnt(7),
      O => PWM0_carry_i_1_n_0
    );
PWM0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => entrada(4),
      I3 => entrada(5),
      O => PWM0_carry_i_2_n_0
    );
PWM0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(2),
      I2 => entrada(2),
      I3 => entrada(3),
      O => PWM0_carry_i_3_n_0
    );
PWM0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => entrada(0),
      I3 => entrada(1),
      O => PWM0_carry_i_4_n_0
    );
PWM0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => entrada(7),
      I1 => cnt(6),
      I2 => entrada(6),
      I3 => cnt(7),
      O => PWM0_carry_i_5_n_0
    );
PWM0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cnt(5),
      I1 => entrada(4),
      I2 => cnt(4),
      I3 => entrada(5),
      O => PWM0_carry_i_6_n_0
    );
PWM0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cnt(3),
      I1 => entrada(2),
      I2 => cnt(2),
      I3 => entrada(3),
      O => PWM0_carry_i_7_n_0
    );
PWM0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cnt(1),
      I1 => entrada(0),
      I2 => cnt(0),
      I3 => entrada(1),
      O => PWM0_carry_i_8_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => cnt_0(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      O => cnt_0(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(0),
      O => cnt_0(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(1),
      I2 => cnt(0),
      I3 => cnt(2),
      O => cnt_0(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(3),
      O => cnt_0(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(3),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => cnt(4),
      O => cnt_0(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(4),
      I2 => cnt(2),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt(3),
      I5 => cnt(5),
      O => cnt_0(6)
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => \cnt[6]_i_2_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8CC"
    )
        port map (
      I0 => \cnt[7]_i_2_n_0\,
      I1 => cnt(7),
      I2 => \cnt[7]_i_3_n_0\,
      I3 => cnt(6),
      O => cnt_0(7)
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(3),
      I5 => cnt(5),
      O => \cnt[7]_i_2_n_0\
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(3),
      I5 => cnt(5),
      O => \cnt[7]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(0),
      Q => cnt(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(1),
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(2),
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(3),
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(4),
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(5),
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(6),
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ce,
      CLR => reset,
      D => cnt_0(7),
      Q => cnt(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "controlador_motores_pwm_dc_motor_0_0,pwm_dc_motor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwm_dc_motor,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_dc_motor
     port map (
      PWM => PWM,
      ce => ce,
      clk => clk,
      entrada(7 downto 0) => entrada(7 downto 0),
      reset => reset
    );
end STRUCTURE;
