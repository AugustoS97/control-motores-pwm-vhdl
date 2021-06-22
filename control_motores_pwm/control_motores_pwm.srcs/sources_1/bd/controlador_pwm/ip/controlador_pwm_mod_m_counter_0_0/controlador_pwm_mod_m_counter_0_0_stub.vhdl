-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jun 22 19:50:45 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm/control_motores_pwm.srcs/sources_1/bd/controlador_pwm/ip/controlador_pwm_mod_m_counter_0_0/controlador_pwm_mod_m_counter_0_0_stub.vhdl
-- Design      : controlador_pwm_mod_m_counter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlador_pwm_mod_m_counter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    CE : out STD_LOGIC
  );

end controlador_pwm_mod_m_counter_0_0;

architecture stub of controlador_pwm_mod_m_counter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,CE";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mod_m_counter,Vivado 2017.4";
begin
end;
