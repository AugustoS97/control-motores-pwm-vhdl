--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Jun 21 21:58:53 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target control_motor.bd
--Design      : control_motor
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motor is
  port (
    IN1A : in STD_LOGIC;
    IN1B : in STD_LOGIC;
    OUT1A : out STD_LOGIC;
    OUT1B : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    consigna_speed : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_out : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of control_motor : entity is "control_motor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=control_motor,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=3,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of control_motor : entity is "control_motor.hwdef";
end control_motor;

architecture STRUCTURE of control_motor is
  component control_motor_pwm_dc_motor_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC;
    entrada : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component control_motor_pwm_dc_motor_0_0;
  component control_motor_cont_preescalado_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_250Khz : out STD_LOGIC
  );
  end component control_motor_cont_preescalado_0_1;
  signal IN1A_1 : STD_LOGIC;
  signal IN1B_1 : STD_LOGIC;
  signal ce_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal consigna_speed_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cont_preescalado_0_clk_250Khz : STD_LOGIC;
  signal pwm_dc_motor_0_PWM : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
begin
  IN1A_1 <= IN1A;
  IN1B_1 <= IN1B;
  OUT1A <= IN1A_1;
  OUT1B <= IN1B_1;
  ce_1 <= ce;
  clk_1 <= clk;
  consigna_speed_1(7 downto 0) <= consigna_speed(7 downto 0);
  pwm_out <= pwm_dc_motor_0_PWM;
  reset_1 <= reset;
cont_preescalado_0: component control_motor_cont_preescalado_0_1
     port map (
      clk => clk_1,
      clk_250Khz => cont_preescalado_0_clk_250Khz,
      reset => reset_1
    );
pwm_dc_motor_0: component control_motor_pwm_dc_motor_0_0
     port map (
      PWM => pwm_dc_motor_0_PWM,
      ce => ce_1,
      clk => cont_preescalado_0_clk_250Khz,
      entrada(7 downto 0) => consigna_speed_1(7 downto 0),
      reset => reset_1
    );
end STRUCTURE;
