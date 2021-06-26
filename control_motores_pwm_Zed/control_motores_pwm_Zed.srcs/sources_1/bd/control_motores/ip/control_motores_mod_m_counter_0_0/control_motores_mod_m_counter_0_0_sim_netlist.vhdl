-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 26 16:28:11 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm_Zed/control_motores_pwm_Zed.srcs/sources_1/bd/control_motores/ip/control_motores_mod_m_counter_0_0/control_motores_mod_m_counter_0_0_sim_netlist.vhdl
-- Design      : control_motores_mod_m_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores_mod_m_counter_0_0_mod_m_counter is
  port (
    CE : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of control_motores_mod_m_counter_0_0_mod_m_counter : entity is "mod_m_counter";
end control_motores_mod_m_counter_0_0_mod_m_counter;

architecture STRUCTURE of control_motores_mod_m_counter_0_0_mod_m_counter is
  signal CE_INST_0_i_1_n_0 : STD_LOGIC;
  signal CE_INST_0_i_2_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal r_next : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal r_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
CE_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      O => CE
    );
CE_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => r_reg(9),
      I1 => r_reg(8),
      I2 => r_reg(5),
      I3 => r_reg(3),
      I4 => r_reg(4),
      I5 => r_reg(2),
      O => CE_INST_0_i_1_n_0
    );
CE_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => r_reg(11),
      I1 => r_reg(6),
      I2 => r_reg(7),
      I3 => r_reg(12),
      O => CE_INST_0_i_2_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => r_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => r_reg(4 downto 1)
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
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => r_reg(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => r_reg(12 downto 9)
    );
\r_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_reg(0),
      O => r_next(0)
    );
\r_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(10),
      O => r_next(10)
    );
\r_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(11),
      O => r_next(11)
    );
\r_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(12),
      O => r_next(12)
    );
\r_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(1),
      O => r_next(1)
    );
\r_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(2),
      O => r_next(2)
    );
\r_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(3),
      O => r_next(3)
    );
\r_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(4),
      O => r_next(4)
    );
\r_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(5),
      O => r_next(5)
    );
\r_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(6),
      O => r_next(6)
    );
\r_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(7),
      O => r_next(7)
    );
\r_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(8),
      O => r_next(8)
    );
\r_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF00000000"
    )
        port map (
      I0 => CE_INST_0_i_1_n_0,
      I1 => CE_INST_0_i_2_n_0,
      I2 => r_reg(10),
      I3 => r_reg(1),
      I4 => r_reg(0),
      I5 => data0(9),
      O => r_next(9)
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(0),
      Q => r_reg(0)
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(10),
      Q => r_reg(10)
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(11),
      Q => r_reg(11)
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(12),
      Q => r_reg(12)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(1),
      Q => r_reg(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(2),
      Q => r_reg(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(3),
      Q => r_reg(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(4),
      Q => r_reg(4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(5),
      Q => r_reg(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(6),
      Q => r_reg(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(7),
      Q => r_reg(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(8),
      Q => r_reg(8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => r_next(9),
      Q => r_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores_mod_m_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    CE : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of control_motores_mod_m_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of control_motores_mod_m_counter_0_0 : entity is "control_motores_mod_m_counter_0_0,mod_m_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of control_motores_mod_m_counter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of control_motores_mod_m_counter_0_0 : entity is "mod_m_counter,Vivado 2017.4";
end control_motores_mod_m_counter_0_0;

architecture STRUCTURE of control_motores_mod_m_counter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
U0: entity work.control_motores_mod_m_counter_0_0_mod_m_counter
     port map (
      CE => CE,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
