--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jun 22 19:58:52 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target controlador_pwm.bd
--Design      : controlador_pwm
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_pwm is
  port (
    clk : in STD_LOGIC;
    consigna : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_drcha : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of controlador_pwm : entity is "controlador_pwm,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=controlador_pwm,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of controlador_pwm : entity is "controlador_pwm.hwdef";
end controlador_pwm;

architecture STRUCTURE of controlador_pwm is
  component controlador_pwm_cont_preescalado_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_250Khz : out STD_LOGIC
  );
  end component controlador_pwm_cont_preescalado_0_1;
  component controlador_pwm_mod_m_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    CE : out STD_LOGIC
  );
  end component controlador_pwm_mod_m_counter_0_0;
  component controlador_pwm_pwm_dc_motor_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component controlador_pwm_pwm_dc_motor_0_0;
  signal Net : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal consigna_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cont_preescalado_0_clk_250Khz : STD_LOGIC;
  signal mod_m_counter_0_CE : STD_LOGIC;
  signal pwm_dc_motor_0_PWM : STD_LOGIC;
begin
  Net <= reset;
  clk_1 <= clk;
  consigna_1(7 downto 0) <= consigna(7 downto 0);
  pwm_drcha <= pwm_dc_motor_0_PWM;
cont_preescalado_0: component controlador_pwm_cont_preescalado_0_1
     port map (
      clk => clk_1,
      clk_250Khz => cont_preescalado_0_clk_250Khz,
      reset => Net
    );
mod_m_counter_0: component controlador_pwm_mod_m_counter_0_0
     port map (
      CE => mod_m_counter_0_CE,
      clk => cont_preescalado_0_clk_250Khz,
      reset => Net
    );
pwm_dc_motor_0: component controlador_pwm_pwm_dc_motor_0_0
     port map (
      PWM => pwm_dc_motor_0_PWM,
      ce => mod_m_counter_0_CE,
      clk => cont_preescalado_0_clk_250Khz,
      entrada(7 downto 0) => consigna_1(7 downto 0),
      reset => Net
    );
end STRUCTURE;
