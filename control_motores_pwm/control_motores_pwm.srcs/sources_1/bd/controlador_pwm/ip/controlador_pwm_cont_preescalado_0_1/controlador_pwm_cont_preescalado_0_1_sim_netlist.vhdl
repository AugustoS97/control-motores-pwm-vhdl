-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jun 22 19:50:45 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm/control_motores_pwm.srcs/sources_1/bd/controlador_pwm/ip/controlador_pwm_cont_preescalado_0_1/controlador_pwm_cont_preescalado_0_1_sim_netlist.vhdl
-- Design      : controlador_pwm_cont_preescalado_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_pwm_cont_preescalado_0_1_cont_preescalado is
  port (
    clk_250Khz : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controlador_pwm_cont_preescalado_0_1_cont_preescalado : entity is "cont_preescalado";
end controlador_pwm_cont_preescalado_0_1_cont_preescalado;

architecture STRUCTURE of controlador_pwm_cont_preescalado_0_1_cont_preescalado is
  signal \^clk_250khz\ : STD_LOGIC;
  signal clk_out_aux_i_1_n_0 : STD_LOGIC;
  signal clk_out_aux_i_2_n_0 : STD_LOGIC;
  signal clk_out_aux_i_3_n_0 : STD_LOGIC;
  signal \cuenta[0]_i_2_n_0\ : STD_LOGIC;
  signal \cuenta[0]_i_3_n_0\ : STD_LOGIC;
  signal \cuenta[0]_i_4_n_0\ : STD_LOGIC;
  signal \cuenta[0]_i_5_n_0\ : STD_LOGIC;
  signal \cuenta[0]_i_6_n_0\ : STD_LOGIC;
  signal \cuenta[4]_i_2_n_0\ : STD_LOGIC;
  signal \cuenta[4]_i_3_n_0\ : STD_LOGIC;
  signal \cuenta[4]_i_4_n_0\ : STD_LOGIC;
  signal \cuenta[4]_i_5_n_0\ : STD_LOGIC;
  signal \cuenta[8]_i_2_n_0\ : STD_LOGIC;
  signal \cuenta[8]_i_3_n_0\ : STD_LOGIC;
  signal \cuenta[8]_i_4_n_0\ : STD_LOGIC;
  signal \cuenta[8]_i_5_n_0\ : STD_LOGIC;
  signal cuenta_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \cuenta_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cuenta_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cuenta_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cuenta_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_cuenta_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  clk_250Khz <= \^clk_250khz\;
clk_out_aux_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
        port map (
      I0 => reset,
      I1 => clk_out_aux_i_2_n_0,
      I2 => clk_out_aux_i_3_n_0,
      I3 => \^clk_250khz\,
      O => clk_out_aux_i_1_n_0
    );
clk_out_aux_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => plusOp(10),
      I1 => plusOp(5),
      I2 => plusOp(11),
      I3 => plusOp(1),
      I4 => plusOp(2),
      I5 => plusOp(3),
      O => clk_out_aux_i_2_n_0
    );
clk_out_aux_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => plusOp(4),
      I1 => plusOp(6),
      I2 => plusOp(7),
      I3 => plusOp(8),
      I4 => plusOp(9),
      I5 => cuenta_reg(0),
      O => clk_out_aux_i_3_n_0
    );
clk_out_aux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_out_aux_i_1_n_0,
      Q => \^clk_250khz\,
      R => '0'
    );
\cuenta[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(0),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[0]_i_2_n_0\
    );
\cuenta[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(3),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[0]_i_3_n_0\
    );
\cuenta[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(2),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[0]_i_4_n_0\
    );
\cuenta[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(1),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[0]_i_5_n_0\
    );
\cuenta[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => cuenta_reg(0),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[0]_i_6_n_0\
    );
\cuenta[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(7),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[4]_i_2_n_0\
    );
\cuenta[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(6),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[4]_i_3_n_0\
    );
\cuenta[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(5),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[4]_i_4_n_0\
    );
\cuenta[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(4),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[4]_i_5_n_0\
    );
\cuenta[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(11),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[8]_i_2_n_0\
    );
\cuenta[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(10),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[8]_i_3_n_0\
    );
\cuenta[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(9),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[8]_i_4_n_0\
    );
\cuenta[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cuenta_reg(8),
      I1 => clk_out_aux_i_3_n_0,
      I2 => clk_out_aux_i_2_n_0,
      O => \cuenta[8]_i_5_n_0\
    );
\cuenta_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[0]_i_1_n_7\,
      Q => cuenta_reg(0)
    );
\cuenta_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cuenta_reg[0]_i_1_n_0\,
      CO(2) => \cuenta_reg[0]_i_1_n_1\,
      CO(1) => \cuenta_reg[0]_i_1_n_2\,
      CO(0) => \cuenta_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cuenta[0]_i_2_n_0\,
      O(3) => \cuenta_reg[0]_i_1_n_4\,
      O(2) => \cuenta_reg[0]_i_1_n_5\,
      O(1) => \cuenta_reg[0]_i_1_n_6\,
      O(0) => \cuenta_reg[0]_i_1_n_7\,
      S(3) => \cuenta[0]_i_3_n_0\,
      S(2) => \cuenta[0]_i_4_n_0\,
      S(1) => \cuenta[0]_i_5_n_0\,
      S(0) => \cuenta[0]_i_6_n_0\
    );
\cuenta_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[8]_i_1_n_5\,
      Q => cuenta_reg(10)
    );
\cuenta_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[8]_i_1_n_4\,
      Q => cuenta_reg(11)
    );
\cuenta_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[0]_i_1_n_6\,
      Q => cuenta_reg(1)
    );
\cuenta_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[0]_i_1_n_5\,
      Q => cuenta_reg(2)
    );
\cuenta_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[0]_i_1_n_4\,
      Q => cuenta_reg(3)
    );
\cuenta_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[4]_i_1_n_7\,
      Q => cuenta_reg(4)
    );
\cuenta_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cuenta_reg[0]_i_1_n_0\,
      CO(3) => \cuenta_reg[4]_i_1_n_0\,
      CO(2) => \cuenta_reg[4]_i_1_n_1\,
      CO(1) => \cuenta_reg[4]_i_1_n_2\,
      CO(0) => \cuenta_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cuenta_reg[4]_i_1_n_4\,
      O(2) => \cuenta_reg[4]_i_1_n_5\,
      O(1) => \cuenta_reg[4]_i_1_n_6\,
      O(0) => \cuenta_reg[4]_i_1_n_7\,
      S(3) => \cuenta[4]_i_2_n_0\,
      S(2) => \cuenta[4]_i_3_n_0\,
      S(1) => \cuenta[4]_i_4_n_0\,
      S(0) => \cuenta[4]_i_5_n_0\
    );
\cuenta_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[4]_i_1_n_6\,
      Q => cuenta_reg(5)
    );
\cuenta_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[4]_i_1_n_5\,
      Q => cuenta_reg(6)
    );
\cuenta_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[4]_i_1_n_4\,
      Q => cuenta_reg(7)
    );
\cuenta_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[8]_i_1_n_7\,
      Q => cuenta_reg(8)
    );
\cuenta_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cuenta_reg[4]_i_1_n_0\,
      CO(3) => \NLW_cuenta_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cuenta_reg[8]_i_1_n_1\,
      CO(1) => \cuenta_reg[8]_i_1_n_2\,
      CO(0) => \cuenta_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cuenta_reg[8]_i_1_n_4\,
      O(2) => \cuenta_reg[8]_i_1_n_5\,
      O(1) => \cuenta_reg[8]_i_1_n_6\,
      O(0) => \cuenta_reg[8]_i_1_n_7\,
      S(3) => \cuenta[8]_i_2_n_0\,
      S(2) => \cuenta[8]_i_3_n_0\,
      S(1) => \cuenta[8]_i_4_n_0\,
      S(0) => \cuenta[8]_i_5_n_0\
    );
\cuenta_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \cuenta_reg[8]_i_1_n_6\,
      Q => cuenta_reg(9)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => cuenta_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => cuenta_reg(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => cuenta_reg(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => cuenta_reg(11 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_pwm_cont_preescalado_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_250Khz : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of controlador_pwm_cont_preescalado_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of controlador_pwm_cont_preescalado_0_1 : entity is "controlador_pwm_cont_preescalado_0_1,cont_preescalado,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of controlador_pwm_cont_preescalado_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of controlador_pwm_cont_preescalado_0_1 : entity is "cont_preescalado,Vivado 2017.4";
end controlador_pwm_cont_preescalado_0_1;

architecture STRUCTURE of controlador_pwm_cont_preescalado_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN controlador_pwm_clk";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
U0: entity work.controlador_pwm_cont_preescalado_0_1_cont_preescalado
     port map (
      clk => clk,
      clk_250Khz => clk_250Khz,
      reset => reset
    );
end STRUCTURE;
