// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jun 21 21:59:39 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.srcs/sources_1/bd/control_motor/ip/control_motor_pwm_dc_motor_0_0/control_motor_pwm_dc_motor_0_0_stub.v
// Design      : control_motor_pwm_dc_motor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_dc_motor,Vivado 2017.4" *)
module control_motor_pwm_dc_motor_0_0(clk, reset, ce, entrada, PWM)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,ce,entrada[7:0],PWM" */;
  input clk;
  input reset;
  input ce;
  input [7:0]entrada;
  output PWM;
endmodule
