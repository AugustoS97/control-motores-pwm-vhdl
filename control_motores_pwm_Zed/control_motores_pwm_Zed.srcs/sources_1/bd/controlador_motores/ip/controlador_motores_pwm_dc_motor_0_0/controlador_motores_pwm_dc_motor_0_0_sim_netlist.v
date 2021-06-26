// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jun 22 21:09:09 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Augusto/Desktop/Proyecto2_FPGA/pwm_motor_control/pwm_motor_control.srcs/sources_1/bd/controlador_motores/ip/controlador_motores_pwm_dc_motor_0_0/controlador_motores_pwm_dc_motor_0_0_sim_netlist.v
// Design      : controlador_motores_pwm_dc_motor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "controlador_motores_pwm_dc_motor_0_0,pwm_dc_motor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "pwm_dc_motor,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module controlador_motores_pwm_dc_motor_0_0
   (clk,
    reset,
    ce,
    entrada,
    PWM);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input ce;
  input [7:0]entrada;
  output PWM;

  wire PWM;
  wire ce;
  wire clk;
  wire [7:0]entrada;
  wire reset;

  controlador_motores_pwm_dc_motor_0_0_pwm_dc_motor U0
       (.PWM(PWM),
        .ce(ce),
        .clk(clk),
        .entrada(entrada),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "pwm_dc_motor" *) 
module controlador_motores_pwm_dc_motor_0_0_pwm_dc_motor
   (PWM,
    ce,
    clk,
    reset,
    entrada);
  output PWM;
  input ce;
  input clk;
  input reset;
  input [7:0]entrada;

  wire PWM;
  wire PWM0_carry_i_1_n_0;
  wire PWM0_carry_i_2_n_0;
  wire PWM0_carry_i_3_n_0;
  wire PWM0_carry_i_4_n_0;
  wire PWM0_carry_i_5_n_0;
  wire PWM0_carry_i_6_n_0;
  wire PWM0_carry_i_7_n_0;
  wire PWM0_carry_i_8_n_0;
  wire PWM0_carry_n_1;
  wire PWM0_carry_n_2;
  wire PWM0_carry_n_3;
  wire ce;
  wire clk;
  wire [7:0]cnt;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire [7:0]cnt_0;
  wire [7:0]entrada;
  wire reset;
  wire [3:0]NLW_PWM0_carry_O_UNCONNECTED;

  CARRY4 PWM0_carry
       (.CI(1'b0),
        .CO({PWM,PWM0_carry_n_1,PWM0_carry_n_2,PWM0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({PWM0_carry_i_1_n_0,PWM0_carry_i_2_n_0,PWM0_carry_i_3_n_0,PWM0_carry_i_4_n_0}),
        .O(NLW_PWM0_carry_O_UNCONNECTED[3:0]),
        .S({PWM0_carry_i_5_n_0,PWM0_carry_i_6_n_0,PWM0_carry_i_7_n_0,PWM0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20BA)) 
    PWM0_carry_i_1
       (.I0(entrada[7]),
        .I1(cnt[6]),
        .I2(entrada[6]),
        .I3(cnt[7]),
        .O(PWM0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    PWM0_carry_i_2
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(entrada[4]),
        .I3(entrada[5]),
        .O(PWM0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    PWM0_carry_i_3
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(entrada[2]),
        .I3(entrada[3]),
        .O(PWM0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    PWM0_carry_i_4
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(entrada[0]),
        .I3(entrada[1]),
        .O(PWM0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    PWM0_carry_i_5
       (.I0(entrada[7]),
        .I1(cnt[6]),
        .I2(entrada[6]),
        .I3(cnt[7]),
        .O(PWM0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    PWM0_carry_i_6
       (.I0(cnt[5]),
        .I1(entrada[4]),
        .I2(cnt[4]),
        .I3(entrada[5]),
        .O(PWM0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    PWM0_carry_i_7
       (.I0(cnt[3]),
        .I1(entrada[2]),
        .I2(cnt[2]),
        .I3(entrada[3]),
        .O(PWM0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    PWM0_carry_i_8
       (.I0(cnt[1]),
        .I1(entrada[0]),
        .I2(cnt[0]),
        .I3(entrada[1]),
        .O(PWM0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .O(cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .O(cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(cnt[4]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(cnt_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[5]_i_1 
       (.I0(cnt[5]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(cnt[4]),
        .O(cnt_0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[6]_i_1 
       (.I0(cnt[6]),
        .I1(cnt[4]),
        .I2(cnt[2]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt[3]),
        .I5(cnt[5]),
        .O(cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[6]_i_2 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\cnt[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \cnt[7]_i_1 
       (.I0(\cnt[7]_i_2_n_0 ),
        .I1(cnt[7]),
        .I2(\cnt[7]_i_3_n_0 ),
        .I3(cnt[6]),
        .O(cnt_0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt[7]_i_2 
       (.I0(cnt[4]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[3]),
        .I5(cnt[5]),
        .O(\cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_3 
       (.I0(cnt[4]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .I5(cnt[5]),
        .O(\cnt[7]_i_3_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[0]),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[1]),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[2]),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[3]),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[4]),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[5]),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[6]),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(ce),
        .CLR(reset),
        .D(cnt_0[7]),
        .Q(cnt[7]));
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
