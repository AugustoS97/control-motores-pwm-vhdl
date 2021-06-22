--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Jun 21 21:58:53 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target control_motor_wrapper.bd
--Design      : control_motor_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motor_wrapper is
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
end control_motor_wrapper;

architecture STRUCTURE of control_motor_wrapper is
  component control_motor is
  port (
    consigna_speed : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ce : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    IN1A : in STD_LOGIC;
    IN1B : in STD_LOGIC;
    OUT1A : out STD_LOGIC;
    OUT1B : out STD_LOGIC;
    pwm_out : out STD_LOGIC
  );
  end component control_motor;
begin
control_motor_i: component control_motor
     port map (
      IN1A => IN1A,
      IN1B => IN1B,
      OUT1A => OUT1A,
      OUT1B => OUT1B,
      ce => ce,
      clk => clk,
      consigna_speed(7 downto 0) => consigna_speed(7 downto 0),
      pwm_out => pwm_out,
      reset => reset
    );
end STRUCTURE;
