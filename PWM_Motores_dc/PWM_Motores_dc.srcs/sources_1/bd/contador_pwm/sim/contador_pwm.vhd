--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Jun 16 17:45:41 2021
--Host        : LAPTOP-F05TESAE running 64-bit major release  (build 9200)
--Command     : generate_target contador_pwm.bd
--Design      : contador_pwm
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity contador_pwm is
  port (
    clk_0 : in STD_LOGIC;
    consigna : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dire_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dire_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm : out STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of contador_pwm : entity is "contador_pwm,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=contador_pwm,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of contador_pwm : entity is "contador_pwm.hwdef";
end contador_pwm;

architecture STRUCTURE of contador_pwm is
  component contador_pwm_pwm_dc_motor_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component contador_pwm_pwm_dc_motor_0_0;
  component contador_pwm_mod_m_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    CE : out STD_LOGIC
  );
  end component contador_pwm_mod_m_counter_0_0;
  component contador_pwm_cont_preescalado_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_250Khz : out STD_LOGIC
  );
  end component contador_pwm_cont_preescalado_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal consigna_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cont_preescalado_0_clk_250Khz : STD_LOGIC;
  signal dire_in_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mod_m_counter_0_CE : STD_LOGIC;
  signal pwm_dc_motor_0_PWM : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN contador_pwm_clk_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, POLARITY ACTIVE_LOW";
begin
  clk_0_1 <= clk_0;
  consigna_1(7 downto 0) <= consigna(7 downto 0);
  dire_in_1(1 downto 0) <= dire_in(1 downto 0);
  dire_out(1 downto 0) <= dire_in_1(1 downto 0);
  pwm <= pwm_dc_motor_0_PWM;
  reset_0_1 <= reset_0;
cont_preescalado_0: component contador_pwm_cont_preescalado_0_0
     port map (
      clk => clk_0_1,
      clk_250Khz => cont_preescalado_0_clk_250Khz,
      reset => reset_0_1
    );
mod_m_counter_0: component contador_pwm_mod_m_counter_0_0
     port map (
      CE => mod_m_counter_0_CE,
      clk => cont_preescalado_0_clk_250Khz,
      reset => reset_0_1
    );
pwm_dc_motor_0: component contador_pwm_pwm_dc_motor_0_0
     port map (
      PWM => pwm_dc_motor_0_PWM,
      ce => mod_m_counter_0_CE,
      clk => cont_preescalado_0_clk_250Khz,
      entrada(7 downto 0) => consigna_1(7 downto 0),
      reset => reset_0_1
    );
end STRUCTURE;
