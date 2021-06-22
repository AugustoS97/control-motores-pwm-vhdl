--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Jun 22 19:58:52 2021
--Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
--Command     : generate_target controlador_pwm_wrapper.bd
--Design      : controlador_pwm_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_pwm_wrapper is
  port (
    clk : in STD_LOGIC;
    consigna : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_drcha : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end controlador_pwm_wrapper;

architecture STRUCTURE of controlador_pwm_wrapper is
  component controlador_pwm is
  port (
    pwm_drcha : out STD_LOGIC;
    consigna : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component controlador_pwm;
begin
controlador_pwm_i: component controlador_pwm
     port map (
      clk => clk,
      consigna(7 downto 0) => consigna(7 downto 0),
      pwm_drcha => pwm_drcha,
      reset => reset
    );
end STRUCTURE;
