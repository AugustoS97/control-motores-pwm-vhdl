-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 26 16:59:06 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm_Zed/control_motores_pwm_Zed.srcs/sources_1/bd/control_motores/ip/control_motores_control_direccion_0_0/control_motores_control_direccion_0_0_sim_netlist.vhdl
-- Design      : control_motores_control_direccion_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores_control_direccion_0_0 is
  port (
    direccion : in STD_LOGIC;
    enable : in STD_LOGIC;
    dir_A : out STD_LOGIC;
    dir_B : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of control_motores_control_direccion_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of control_motores_control_direccion_0_0 : entity is "control_motores_control_direccion_0_0,control_direccion,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of control_motores_control_direccion_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of control_motores_control_direccion_0_0 : entity is "control_direccion,Vivado 2017.4";
end control_motores_control_direccion_0_0;

architecture STRUCTURE of control_motores_control_direccion_0_0 is
begin
dir_A_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => direccion,
      O => dir_A
    );
dir_B_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enable,
      I1 => direccion,
      O => dir_B
    );
end STRUCTURE;
