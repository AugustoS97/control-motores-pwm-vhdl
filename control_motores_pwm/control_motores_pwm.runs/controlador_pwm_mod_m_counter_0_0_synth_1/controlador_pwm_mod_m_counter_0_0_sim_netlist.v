// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jun 22 19:50:45 2021
// Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ controlador_pwm_mod_m_counter_0_0_sim_netlist.v
// Design      : controlador_pwm_mod_m_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "controlador_pwm_mod_m_counter_0_0,mod_m_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mod_m_counter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    CE);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  output CE;

  wire CE;
  wire clk;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mod_m_counter U0
       (.CE(CE),
        .clk(clk),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mod_m_counter
   (CE,
    clk,
    reset);
  output CE;
  input clk;
  input reset;

  wire CE;
  wire CE_INST_0_i_1_n_0;
  wire CE_INST_0_i_2_n_0;
  wire clk;
  wire [12:1]data0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [12:0]r_next;
  wire [12:0]r_reg;
  wire reset;
  wire [3:3]NLW_plusOp_carry__1_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h20000000)) 
    CE_INST_0
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .O(CE));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    CE_INST_0_i_1
       (.I0(r_reg[9]),
        .I1(r_reg[8]),
        .I2(r_reg[5]),
        .I3(r_reg[3]),
        .I4(r_reg[4]),
        .I5(r_reg[2]),
        .O(CE_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    CE_INST_0_i_2
       (.I0(r_reg[11]),
        .I1(r_reg[6]),
        .I2(r_reg[7]),
        .I3(r_reg[12]),
        .O(CE_INST_0_i_2_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(r_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(r_reg[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(r_reg[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3],plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(r_reg[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1 
       (.I0(r_reg[0]),
        .O(r_next[0]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[10]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[10]),
        .O(r_next[10]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[11]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[11]),
        .O(r_next[11]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[12]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[12]),
        .O(r_next[12]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[1]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[1]),
        .O(r_next[1]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[2]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[2]),
        .O(r_next[2]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[3]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[3]),
        .O(r_next[3]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[4]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[4]),
        .O(r_next[4]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[5]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[5]),
        .O(r_next[5]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[6]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[6]),
        .O(r_next[6]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[7]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[7]),
        .O(r_next[7]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[8]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[8]),
        .O(r_next[8]));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \r_reg[9]_i_1 
       (.I0(CE_INST_0_i_1_n_0),
        .I1(CE_INST_0_i_2_n_0),
        .I2(r_reg[10]),
        .I3(r_reg[1]),
        .I4(r_reg[0]),
        .I5(data0[9]),
        .O(r_next[9]));
  FDCE \r_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[0]),
        .Q(r_reg[0]));
  FDCE \r_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[10]),
        .Q(r_reg[10]));
  FDCE \r_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[11]),
        .Q(r_reg[11]));
  FDCE \r_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[12]),
        .Q(r_reg[12]));
  FDCE \r_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[1]),
        .Q(r_reg[1]));
  FDCE \r_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[2]),
        .Q(r_reg[2]));
  FDCE \r_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[3]),
        .Q(r_reg[3]));
  FDCE \r_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[4]),
        .Q(r_reg[4]));
  FDCE \r_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[5]),
        .Q(r_reg[5]));
  FDCE \r_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[6]),
        .Q(r_reg[6]));
  FDCE \r_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[7]),
        .Q(r_reg[7]));
  FDCE \r_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[8]),
        .Q(r_reg[8]));
  FDCE \r_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(r_next[9]),
        .Q(r_reg[9]));
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
