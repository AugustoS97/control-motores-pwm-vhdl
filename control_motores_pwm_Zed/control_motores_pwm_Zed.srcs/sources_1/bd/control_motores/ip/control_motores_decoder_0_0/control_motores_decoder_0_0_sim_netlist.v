// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 26 16:30:12 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm_Zed/control_motores_pwm_Zed.srcs/sources_1/bd/control_motores/ip/control_motores_decoder_0_0/control_motores_decoder_0_0_sim_netlist.v
// Design      : control_motores_decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "control_motores_decoder_0_0,decoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "decoder,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module control_motores_decoder_0_0
   (motor_drcha_consigna,
    motor_izda_consigna,
    consigna_drcha,
    consigna_izda);
  input [2:0]motor_drcha_consigna;
  input [2:0]motor_izda_consigna;
  output [7:0]consigna_drcha;
  output [7:0]consigna_izda;

  wire [7:1]\^consigna_drcha ;
  wire [7:1]\^consigna_izda ;
  wire [2:0]motor_drcha_consigna;
  wire [2:0]motor_izda_consigna;

  assign consigna_drcha[7:5] = \^consigna_drcha [7:5];
  assign consigna_drcha[4] = motor_drcha_consigna[2];
  assign consigna_drcha[3:1] = \^consigna_drcha [3:1];
  assign consigna_drcha[0] = \^consigna_drcha [1];
  assign consigna_izda[7:5] = \^consigna_izda [7:5];
  assign consigna_izda[4] = motor_izda_consigna[2];
  assign consigna_izda[3:1] = \^consigna_izda [3:1];
  assign consigna_izda[0] = \^consigna_izda [1];
  control_motores_decoder_0_0_decoder U0
       (.consigna_drcha({\^consigna_drcha [7],\^consigna_drcha [5],\^consigna_drcha [3:1]}),
        .consigna_izda({\^consigna_izda [7],\^consigna_izda [5],\^consigna_izda [3:1]}),
        .motor_drcha_consigna(motor_drcha_consigna),
        .motor_izda_consigna(motor_izda_consigna));
  LUT2 #(
    .INIT(4'h8)) 
    \consigna_drcha[6]_INST_0 
       (.I0(motor_drcha_consigna[1]),
        .I1(motor_drcha_consigna[2]),
        .O(\^consigna_drcha [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \consigna_izda[6]_INST_0 
       (.I0(motor_izda_consigna[1]),
        .I1(motor_izda_consigna[2]),
        .O(\^consigna_izda [6]));
endmodule

(* ORIG_REF_NAME = "decoder" *) 
module control_motores_decoder_0_0_decoder
   (consigna_drcha,
    consigna_izda,
    motor_drcha_consigna,
    motor_izda_consigna);
  output [4:0]consigna_drcha;
  output [4:0]consigna_izda;
  input [2:0]motor_drcha_consigna;
  input [2:0]motor_izda_consigna;

  wire [4:0]consigna_drcha;
  wire [4:0]consigna_izda;
  wire [2:0]motor_drcha_consigna;
  wire [2:0]motor_izda_consigna;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \consigna_drcha[0]_INST_0 
       (.I0(motor_drcha_consigna[1]),
        .I1(motor_drcha_consigna[2]),
        .I2(motor_drcha_consigna[0]),
        .O(consigna_drcha[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \consigna_drcha[2]_INST_0 
       (.I0(motor_drcha_consigna[2]),
        .I1(motor_drcha_consigna[1]),
        .O(consigna_drcha[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \consigna_drcha[3]_INST_0 
       (.I0(motor_drcha_consigna[2]),
        .I1(motor_drcha_consigna[0]),
        .I2(motor_drcha_consigna[1]),
        .O(consigna_drcha[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \consigna_drcha[5]_INST_0 
       (.I0(motor_drcha_consigna[2]),
        .I1(motor_drcha_consigna[0]),
        .I2(motor_drcha_consigna[1]),
        .O(consigna_drcha[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \consigna_drcha[7]_INST_0 
       (.I0(motor_drcha_consigna[1]),
        .I1(motor_drcha_consigna[2]),
        .I2(motor_drcha_consigna[0]),
        .O(consigna_drcha[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \consigna_izda[0]_INST_0 
       (.I0(motor_izda_consigna[1]),
        .I1(motor_izda_consigna[2]),
        .I2(motor_izda_consigna[0]),
        .O(consigna_izda[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \consigna_izda[2]_INST_0 
       (.I0(motor_izda_consigna[2]),
        .I1(motor_izda_consigna[1]),
        .O(consigna_izda[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \consigna_izda[3]_INST_0 
       (.I0(motor_izda_consigna[2]),
        .I1(motor_izda_consigna[0]),
        .I2(motor_izda_consigna[1]),
        .O(consigna_izda[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \consigna_izda[5]_INST_0 
       (.I0(motor_izda_consigna[2]),
        .I1(motor_izda_consigna[0]),
        .I2(motor_izda_consigna[1]),
        .O(consigna_izda[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \consigna_izda[7]_INST_0 
       (.I0(motor_izda_consigna[1]),
        .I1(motor_izda_consigna[2]),
        .I2(motor_izda_consigna[0]),
        .O(consigna_izda[4]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
