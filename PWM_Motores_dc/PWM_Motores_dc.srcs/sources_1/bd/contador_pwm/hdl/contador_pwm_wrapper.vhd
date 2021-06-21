--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Jun 16 17:45:41 2021
--Host        : LAPTOP-F05TESAE running 64-bit major release  (build 9200)
--Command     : generate_target contador_pwm_wrapper.bd
--Design      : contador_pwm_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity contador_pwm_wrapper is
  port (
    clk_0 : in STD_LOGIC;
    consigna : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dire_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dire_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm : out STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
end contador_pwm_wrapper;

architecture STRUCTURE of contador_pwm_wrapper is
  component contador_pwm is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    consigna : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dire_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dire_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm : out STD_LOGIC
  );
  end component contador_pwm;
begin
contador_pwm_i: component contador_pwm
     port map (
      clk_0 => clk_0,
      consigna(7 downto 0) => consigna(7 downto 0),
      dire_in(1 downto 0) => dire_in(1 downto 0),
      dire_out(1 downto 0) => dire_out(1 downto 0),
      pwm => pwm,
      reset_0 => reset_0
    );
end STRUCTURE;
