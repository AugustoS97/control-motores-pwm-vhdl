--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jun 22 21:06:56 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target controlador_motores.bd
--Design      : controlador_motores
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_motores is
  port (
    clk : in STD_LOGIC;
    consigna_drcha : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir_motor_drcha : in STD_LOGIC;
    out_1A : out STD_LOGIC;
    out_1B : out STD_LOGIC;
    pwm_drcha : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of controlador_motores : entity is "controlador_motores,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=controlador_motores,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of controlador_motores : entity is "controlador_motores.hwdef";
end controlador_motores;

architecture STRUCTURE of controlador_motores is
  component controlador_motores_mod_m_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    CE : out STD_LOGIC
  );
  end component controlador_motores_mod_m_counter_0_0;
  component controlador_motores_control_dir_0_0 is
  port (
    direccion : in STD_LOGIC;
    dir_A : out STD_LOGIC;
    dir_B : out STD_LOGIC
  );
  end component controlador_motores_control_dir_0_0;
  component controlador_motores_pwm_dc_motor_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component controlador_motores_pwm_dc_motor_0_0;
  signal clk_1 : STD_LOGIC;
  signal consigna_drcha_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal control_dir_0_dir_A : STD_LOGIC;
  signal control_dir_0_dir_B : STD_LOGIC;
  signal dir_motor_drcha_1 : STD_LOGIC;
  signal mod_m_counter_0_CE : STD_LOGIC;
  signal pwm_dc_motor_0_PWM : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  consigna_drcha_1(7 downto 0) <= consigna_drcha(7 downto 0);
  dir_motor_drcha_1 <= dir_motor_drcha;
  out_1A <= control_dir_0_dir_A;
  out_1B <= control_dir_0_dir_B;
  pwm_drcha <= pwm_dc_motor_0_PWM;
  reset_1 <= reset;
control_dir_0: component controlador_motores_control_dir_0_0
     port map (
      dir_A => control_dir_0_dir_A,
      dir_B => control_dir_0_dir_B,
      direccion => dir_motor_drcha_1
    );
mod_m_counter_0: component controlador_motores_mod_m_counter_0_0
     port map (
      CE => mod_m_counter_0_CE,
      clk => clk_1,
      reset => reset_1
    );
pwm_dc_motor_0: component controlador_motores_pwm_dc_motor_0_0
     port map (
      PWM => pwm_dc_motor_0_PWM,
      ce => mod_m_counter_0_CE,
      clk => clk_1,
      entrada(7 downto 0) => consigna_drcha_1(7 downto 0),
      reset => reset_1
    );
end STRUCTURE;
