-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jun 22 21:09:08 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Augusto/Desktop/Proyecto2_FPGA/pwm_motor_control/pwm_motor_control.srcs/sources_1/bd/controlador_motores/ip/controlador_motores_control_dir_0_0/controlador_motores_control_dir_0_0_stub.vhdl
-- Design      : controlador_motores_control_dir_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlador_motores_control_dir_0_0 is
  Port ( 
    direccion : in STD_LOGIC;
    dir_A : out STD_LOGIC;
    dir_B : out STD_LOGIC
  );

end controlador_motores_control_dir_0_0;

architecture stub of controlador_motores_control_dir_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "direccion,dir_A,dir_B";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "control_dir,Vivado 2017.4";
begin
end;
