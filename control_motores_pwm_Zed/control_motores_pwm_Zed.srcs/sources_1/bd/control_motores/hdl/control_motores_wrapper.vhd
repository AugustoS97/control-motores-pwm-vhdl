--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Jul  5 18:31:41 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target control_motores_wrapper.bd
--Design      : control_motores_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores_wrapper is
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
end control_motores_wrapper;

architecture STRUCTURE of control_motores_wrapper is
  component control_motores is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_drcha : in STD_LOGIC;
    dir_motor_drcha : in STD_LOGIC;
    pwm_drcha : out STD_LOGIC;
    out_1A : out STD_LOGIC;
    out_1B : out STD_LOGIC;
    pwm_izda : out STD_LOGIC;
    enable_izda : in STD_LOGIC;
    dir_motor_izda : in STD_LOGIC;
    consigna_drcha : in STD_LOGIC_VECTOR ( 2 downto 0 );
    consigna_izda : in STD_LOGIC_VECTOR ( 2 downto 0 );
    out_2A : out STD_LOGIC;
    out_2B : out STD_LOGIC
  );
  end component control_motores;
begin
control_motores_i: component control_motores
     port map (
      clk => clk,
      consigna_drcha(2 downto 0) => consigna_drcha(2 downto 0),
      consigna_izda(2 downto 0) => consigna_izda(2 downto 0),
      dir_motor_drcha => dir_motor_drcha,
      dir_motor_izda => dir_motor_izda,
      enable_drcha => enable_drcha,
      enable_izda => enable_izda,
      out_1A => out_1A,
      out_1B => out_1B,
      out_2A => out_2A,
      out_2B => out_2B,
      pwm_drcha => pwm_drcha,
      pwm_izda => pwm_izda,
      reset => reset
    );
end STRUCTURE;
