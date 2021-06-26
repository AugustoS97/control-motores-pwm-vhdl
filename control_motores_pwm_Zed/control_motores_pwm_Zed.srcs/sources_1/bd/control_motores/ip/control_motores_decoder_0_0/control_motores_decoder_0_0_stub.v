// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 26 16:30:12 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm_Zed/control_motores_pwm_Zed.srcs/sources_1/bd/control_motores/ip/control_motores_decoder_0_0/control_motores_decoder_0_0_stub.v
// Design      : control_motores_decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "decoder,Vivado 2017.4" *)
module control_motores_decoder_0_0(motor_drcha_consigna, motor_izda_consigna, 
  consigna_drcha, consigna_izda)
/* synthesis syn_black_box black_box_pad_pin="motor_drcha_consigna[2:0],motor_izda_consigna[2:0],consigna_drcha[7:0],consigna_izda[7:0]" */;
  input [2:0]motor_drcha_consigna;
  input [2:0]motor_izda_consigna;
  output [7:0]consigna_drcha;
  output [7:0]consigna_izda;
endmodule
