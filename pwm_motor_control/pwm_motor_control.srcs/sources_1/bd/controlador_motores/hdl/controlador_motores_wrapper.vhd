--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jun 22 21:06:56 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target controlador_motores_wrapper.bd
--Design      : controlador_motores_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_motores_wrapper is
  port (
    clk : in STD_LOGIC;
    consigna_drcha : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir_motor_drcha : in STD_LOGIC;
    out_1A : out STD_LOGIC;
    out_1B : out STD_LOGIC;
    pwm_drcha : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end controlador_motores_wrapper;

architecture STRUCTURE of controlador_motores_wrapper is
  component controlador_motores is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dir_motor_drcha : in STD_LOGIC;
    consigna_drcha : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_1A : out STD_LOGIC;
    out_1B : out STD_LOGIC;
    pwm_drcha : out STD_LOGIC
  );
  end component controlador_motores;
begin
controlador_motores_i: component controlador_motores
     port map (
      clk => clk,
      consigna_drcha(7 downto 0) => consigna_drcha(7 downto 0),
      dir_motor_drcha => dir_motor_drcha,
      out_1A => out_1A,
      out_1B => out_1B,
      pwm_drcha => pwm_drcha,
      reset => reset
    );
end STRUCTURE;
