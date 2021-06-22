// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jun 22 19:50:45 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm/control_motores_pwm.srcs/sources_1/bd/controlador_pwm/ip/controlador_pwm_mod_m_counter_0_0/controlador_pwm_mod_m_counter_0_0_stub.v
// Design      : controlador_pwm_mod_m_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mod_m_counter,Vivado 2017.4" *)
module controlador_pwm_mod_m_counter_0_0(clk, reset, CE)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,CE" */;
  input clk;
  input reset;
  output CE;
endmodule
