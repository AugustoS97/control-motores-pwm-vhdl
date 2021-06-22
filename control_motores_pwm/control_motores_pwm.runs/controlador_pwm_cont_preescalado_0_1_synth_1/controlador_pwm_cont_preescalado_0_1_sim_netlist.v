// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jun 22 19:50:45 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ controlador_pwm_cont_preescalado_0_1_sim_netlist.v
// Design      : controlador_pwm_cont_preescalado_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cont_preescalado
   (clk_250Khz,
    clk,
    reset);
  output clk_250Khz;
  input clk;
  input reset;

  wire clk;
  wire clk_250Khz;
  wire clk_out_aux_i_1_n_0;
  wire clk_out_aux_i_2_n_0;
  wire clk_out_aux_i_3_n_0;
  wire \cuenta[0]_i_2_n_0 ;
  wire \cuenta[0]_i_3_n_0 ;
  wire \cuenta[0]_i_4_n_0 ;
  wire \cuenta[0]_i_5_n_0 ;
  wire \cuenta[0]_i_6_n_0 ;
  wire \cuenta[4]_i_2_n_0 ;
  wire \cuenta[4]_i_3_n_0 ;
  wire \cuenta[4]_i_4_n_0 ;
  wire \cuenta[4]_i_5_n_0 ;
  wire \cuenta[8]_i_2_n_0 ;
  wire \cuenta[8]_i_3_n_0 ;
  wire \cuenta[8]_i_4_n_0 ;
  wire \cuenta[8]_i_5_n_0 ;
  wire [11:0]cuenta_reg;
  wire \cuenta_reg[0]_i_1_n_0 ;
  wire \cuenta_reg[0]_i_1_n_1 ;
  wire \cuenta_reg[0]_i_1_n_2 ;
  wire \cuenta_reg[0]_i_1_n_3 ;
  wire \cuenta_reg[0]_i_1_n_4 ;
  wire \cuenta_reg[0]_i_1_n_5 ;
  wire \cuenta_reg[0]_i_1_n_6 ;
  wire \cuenta_reg[0]_i_1_n_7 ;
  wire \cuenta_reg[4]_i_1_n_0 ;
  wire \cuenta_reg[4]_i_1_n_1 ;
  wire \cuenta_reg[4]_i_1_n_2 ;
  wire \cuenta_reg[4]_i_1_n_3 ;
  wire \cuenta_reg[4]_i_1_n_4 ;
  wire \cuenta_reg[4]_i_1_n_5 ;
  wire \cuenta_reg[4]_i_1_n_6 ;
  wire \cuenta_reg[4]_i_1_n_7 ;
  wire \cuenta_reg[8]_i_1_n_1 ;
  wire \cuenta_reg[8]_i_1_n_2 ;
  wire \cuenta_reg[8]_i_1_n_3 ;
  wire \cuenta_reg[8]_i_1_n_4 ;
  wire \cuenta_reg[8]_i_1_n_5 ;
  wire \cuenta_reg[8]_i_1_n_6 ;
  wire \cuenta_reg[8]_i_1_n_7 ;
  wire [11:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire reset;
  wire [3:3]\NLW_cuenta_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB04)) 
    clk_out_aux_i_1
       (.I0(reset),
        .I1(clk_out_aux_i_2_n_0),
        .I2(clk_out_aux_i_3_n_0),
        .I3(clk_250Khz),
        .O(clk_out_aux_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_out_aux_i_2
       (.I0(plusOp[10]),
        .I1(plusOp[5]),
        .I2(plusOp[11]),
        .I3(plusOp[1]),
        .I4(plusOp[2]),
        .I5(plusOp[3]),
        .O(clk_out_aux_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    clk_out_aux_i_3
       (.I0(plusOp[4]),
        .I1(plusOp[6]),
        .I2(plusOp[7]),
        .I3(plusOp[8]),
        .I4(plusOp[9]),
        .I5(cuenta_reg[0]),
        .O(clk_out_aux_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_aux_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_out_aux_i_1_n_0),
        .Q(clk_250Khz),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[0]_i_2 
       (.I0(cuenta_reg[0]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[0]_i_3 
       (.I0(cuenta_reg[3]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[0]_i_4 
       (.I0(cuenta_reg[2]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[0]_i_5 
       (.I0(cuenta_reg[1]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \cuenta[0]_i_6 
       (.I0(cuenta_reg[0]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[4]_i_2 
       (.I0(cuenta_reg[7]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[4]_i_3 
       (.I0(cuenta_reg[6]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[4]_i_4 
       (.I0(cuenta_reg[5]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[4]_i_5 
       (.I0(cuenta_reg[4]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[8]_i_2 
       (.I0(cuenta_reg[11]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[8]_i_3 
       (.I0(cuenta_reg[10]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[8]_i_4 
       (.I0(cuenta_reg[9]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \cuenta[8]_i_5 
       (.I0(cuenta_reg[8]),
        .I1(clk_out_aux_i_3_n_0),
        .I2(clk_out_aux_i_2_n_0),
        .O(\cuenta[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[0]_i_1_n_7 ),
        .Q(cuenta_reg[0]));
  CARRY4 \cuenta_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cuenta_reg[0]_i_1_n_0 ,\cuenta_reg[0]_i_1_n_1 ,\cuenta_reg[0]_i_1_n_2 ,\cuenta_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cuenta[0]_i_2_n_0 }),
        .O({\cuenta_reg[0]_i_1_n_4 ,\cuenta_reg[0]_i_1_n_5 ,\cuenta_reg[0]_i_1_n_6 ,\cuenta_reg[0]_i_1_n_7 }),
        .S({\cuenta[0]_i_3_n_0 ,\cuenta[0]_i_4_n_0 ,\cuenta[0]_i_5_n_0 ,\cuenta[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[8]_i_1_n_5 ),
        .Q(cuenta_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[8]_i_1_n_4 ),
        .Q(cuenta_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[0]_i_1_n_6 ),
        .Q(cuenta_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[0]_i_1_n_5 ),
        .Q(cuenta_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[0]_i_1_n_4 ),
        .Q(cuenta_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[4]_i_1_n_7 ),
        .Q(cuenta_reg[4]));
  CARRY4 \cuenta_reg[4]_i_1 
       (.CI(\cuenta_reg[0]_i_1_n_0 ),
        .CO({\cuenta_reg[4]_i_1_n_0 ,\cuenta_reg[4]_i_1_n_1 ,\cuenta_reg[4]_i_1_n_2 ,\cuenta_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cuenta_reg[4]_i_1_n_4 ,\cuenta_reg[4]_i_1_n_5 ,\cuenta_reg[4]_i_1_n_6 ,\cuenta_reg[4]_i_1_n_7 }),
        .S({\cuenta[4]_i_2_n_0 ,\cuenta[4]_i_3_n_0 ,\cuenta[4]_i_4_n_0 ,\cuenta[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[4]_i_1_n_6 ),
        .Q(cuenta_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[4]_i_1_n_5 ),
        .Q(cuenta_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[4]_i_1_n_4 ),
        .Q(cuenta_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[8]_i_1_n_7 ),
        .Q(cuenta_reg[8]));
  CARRY4 \cuenta_reg[8]_i_1 
       (.CI(\cuenta_reg[4]_i_1_n_0 ),
        .CO({\NLW_cuenta_reg[8]_i_1_CO_UNCONNECTED [3],\cuenta_reg[8]_i_1_n_1 ,\cuenta_reg[8]_i_1_n_2 ,\cuenta_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cuenta_reg[8]_i_1_n_4 ,\cuenta_reg[8]_i_1_n_5 ,\cuenta_reg[8]_i_1_n_6 ,\cuenta_reg[8]_i_1_n_7 }),
        .S({\cuenta[8]_i_2_n_0 ,\cuenta[8]_i_3_n_0 ,\cuenta[8]_i_4_n_0 ,\cuenta[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cuenta_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\cuenta_reg[8]_i_1_n_6 ),
        .Q(cuenta_reg[9]));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(cuenta_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(cuenta_reg[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(cuenta_reg[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],plusOp[11:9]}),
        .S({1'b0,cuenta_reg[11:9]}));
endmodule

(* CHECK_LICENSE_TYPE = "controlador_pwm_cont_preescalado_0_1,cont_preescalado,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cont_preescalado,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    clk_250Khz);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN controlador_pwm_clk" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  output clk_250Khz;

  wire clk;
  wire clk_250Khz;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cont_preescalado U0
       (.clk(clk),
        .clk_250Khz(clk_250Khz),
        .reset(reset));
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
