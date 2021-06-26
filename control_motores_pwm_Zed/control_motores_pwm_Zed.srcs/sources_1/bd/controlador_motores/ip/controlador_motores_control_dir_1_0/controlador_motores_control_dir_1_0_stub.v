// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jun 22 21:38:40 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Augusto/Desktop/Proyecto2_FPGA/pwm_motor_control/pwm_motor_control.srcs/sources_1/bd/controlador_motores/ip/controlador_motores_control_dir_1_0/controlador_motores_control_dir_1_0_stub.v
// Design      : controlador_motores_control_dir_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "control_dir,Vivado 2017.4" *)
module controlador_motores_control_dir_1_0(direccion, dir_A, dir_B)
/* synthesis syn_black_box black_box_pad_pin="direccion,dir_A,dir_B" */;
  input direccion;
  output dir_A;
  output dir_B;
endmodule
