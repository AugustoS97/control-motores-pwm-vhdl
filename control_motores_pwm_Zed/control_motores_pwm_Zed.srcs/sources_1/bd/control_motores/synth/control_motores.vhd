--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sat Jun 26 16:58:10 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target control_motores.bd
--Design      : control_motores
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores is
  port (
    clk : in STD_LOGIC;
    consigna_drcha : in STD_LOGIC_VECTOR ( 2 downto 0 );
    consigna_izda : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dir_motor_drcha : in STD_LOGIC;
    dir_motor_izda : in STD_LOGIC;
    enable_drcha : in STD_LOGIC;
    enable_izda : in STD_LOGIC;
    out_1A : out STD_LOGIC;
    out_1B : out STD_LOGIC;
    out_2A : out STD_LOGIC;
    out_2B : out STD_LOGIC;
    pwm_drcha : out STD_LOGIC;
    pwm_izda : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of control_motores : entity is "control_motores,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=control_motores,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of control_motores : entity is "control_motores.hwdef";
end control_motores;

architecture STRUCTURE of control_motores is
  component control_motores_mod_m_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    CE : out STD_LOGIC
  );
  end component control_motores_mod_m_counter_0_0;
  component control_motores_pwm_dc_motor_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component control_motores_pwm_dc_motor_0_0;
  component control_motores_pwm_dc_motor_1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component control_motores_pwm_dc_motor_1_0;
  component control_motores_decoder_0_0 is
  port (
    motor_drcha_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    motor_izda_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    consigna_drcha : out STD_LOGIC_VECTOR ( 7 downto 0 );
    consigna_izda : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component control_motores_decoder_0_0;
  component control_motores_control_direccion_0_0 is
  port (
    direccion : in STD_LOGIC;
    enable : in STD_LOGIC;
    dir_A : out STD_LOGIC;
    dir_B : out STD_LOGIC
  );
  end component control_motores_control_direccion_0_0;
  component control_motores_control_direccion_1_0 is
  port (
    direccion : in STD_LOGIC;
    enable : in STD_LOGIC;
    dir_A : out STD_LOGIC;
    dir_B : out STD_LOGIC
  );
  end component control_motores_control_direccion_1_0;
  signal clk_1 : STD_LOGIC;
  signal consigna_drcha_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal consigna_izda_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_direccion_0_dir_A : STD_LOGIC;
  signal control_direccion_0_dir_B : STD_LOGIC;
  signal control_direccion_1_dir_A : STD_LOGIC;
  signal control_direccion_1_dir_B : STD_LOGIC;
  signal decoder_0_consigna_drcha : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decoder_0_consigna_izda : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dir_motor_drcha_1 : STD_LOGIC;
  signal dir_motor_izda_1 : STD_LOGIC;
  signal enable_drcha_1 : STD_LOGIC;
  signal enable_izda_1 : STD_LOGIC;
  signal mod_m_counter_0_CE : STD_LOGIC;
  signal pwm_dc_motor_0_PWM : STD_LOGIC;
  signal pwm_dc_motor_1_PWM : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  consigna_drcha_1(2 downto 0) <= consigna_drcha(2 downto 0);
  consigna_izda_1(2 downto 0) <= consigna_izda(2 downto 0);
  dir_motor_drcha_1 <= dir_motor_drcha;
  dir_motor_izda_1 <= dir_motor_izda;
  enable_drcha_1 <= enable_drcha;
  enable_izda_1 <= enable_izda;
  out_1A <= control_direccion_0_dir_A;
  out_1B <= control_direccion_0_dir_B;
  out_2A <= control_direccion_1_dir_A;
  out_2B <= control_direccion_1_dir_B;
  pwm_drcha <= pwm_dc_motor_1_PWM;
  pwm_izda <= pwm_dc_motor_0_PWM;
  reset_1 <= reset;
control_direccion_0: component control_motores_control_direccion_0_0
     port map (
      dir_A => control_direccion_0_dir_A,
      dir_B => control_direccion_0_dir_B,
      direccion => dir_motor_drcha_1,
      enable => enable_drcha_1
    );
control_direccion_1: component control_motores_control_direccion_1_0
     port map (
      dir_A => control_direccion_1_dir_A,
      dir_B => control_direccion_1_dir_B,
      direccion => dir_motor_izda_1,
      enable => enable_izda_1
    );
decoder_0: component control_motores_decoder_0_0
     port map (
      consigna_drcha(7 downto 0) => decoder_0_consigna_drcha(7 downto 0),
      consigna_izda(7 downto 0) => decoder_0_consigna_izda(7 downto 0),
      motor_drcha_consigna(2 downto 0) => consigna_drcha_1(2 downto 0),
      motor_izda_consigna(2 downto 0) => consigna_izda_1(2 downto 0)
    );
mod_m_counter_0: component control_motores_mod_m_counter_0_0
     port map (
      CE => mod_m_counter_0_CE,
      clk => clk_1,
      reset => reset_1
    );
pwm_dc_motor_0: component control_motores_pwm_dc_motor_0_0
     port map (
      PWM => pwm_dc_motor_0_PWM,
      ce => mod_m_counter_0_CE,
      clk => clk_1,
      entrada(7 downto 0) => decoder_0_consigna_izda(7 downto 0),
      reset => reset_1
    );
pwm_dc_motor_1: component control_motores_pwm_dc_motor_1_0
     port map (
      PWM => pwm_dc_motor_1_PWM,
      ce => mod_m_counter_0_CE,
      clk => clk_1,
      entrada(7 downto 0) => decoder_0_consigna_drcha(7 downto 0),
      reset => reset_1
    );
end STRUCTURE;
