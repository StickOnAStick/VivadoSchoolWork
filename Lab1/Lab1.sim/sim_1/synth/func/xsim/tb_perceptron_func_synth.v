// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep  3 04:45:31 2024
// Host        : Nicks-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Vivado/Lab1/Lab1.sim/sim_1/synth/func/xsim/tb_perceptron_func_synth.v
// Design      : perceptron
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* b = "8'sb11111101" *) (* w1 = "8'sb00000010" *) (* w2 = "8'sb11111110" *) 
(* NotValidForBitStream *)
module perceptron
   (rst_n,
    clk,
    x1,
    x2,
    valid_in,
    y,
    y_valid,
    sum);
  input rst_n;
  input clk;
  input [7:0]x1;
  input [7:0]x2;
  input valid_in;
  output y;
  output y_valid;
  output [7:0]sum;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [6:0]p1;
  wire [6:0]p2;
  wire \p2[0]_i_1_n_0 ;
  wire \p2[1]_i_1_n_0 ;
  wire \p2[2]_i_1_n_0 ;
  wire \p2[3]_i_1_n_0 ;
  wire \p2[4]_i_1_n_0 ;
  wire \p2[6]_i_1_n_0 ;
  wire \p2[6]_i_2_n_0 ;
  wire [7:0]p_0_in;
  wire rst_n;
  wire rst_n_IBUF;
  wire s;
  wire \s[3]_i_2_n_0 ;
  wire \s[3]_i_3_n_0 ;
  wire \s[3]_i_4_n_0 ;
  wire \s[3]_i_5_n_0 ;
  wire \s[7]_i_3_n_0 ;
  wire \s[7]_i_4_n_0 ;
  wire \s[7]_i_5_n_0 ;
  wire \s[7]_i_6_n_0 ;
  wire \s[7]_i_7_n_0 ;
  wire \s[7]_i_8_n_0 ;
  wire \s[7]_i_9_n_0 ;
  wire \s_reg[3]_i_1_n_0 ;
  wire \s_reg[3]_i_1_n_1 ;
  wire \s_reg[3]_i_1_n_2 ;
  wire \s_reg[3]_i_1_n_3 ;
  wire \s_reg[7]_i_2_n_1 ;
  wire \s_reg[7]_i_2_n_2 ;
  wire \s_reg[7]_i_2_n_3 ;
  wire \s_reg_n_0_[0] ;
  wire \s_reg_n_0_[1] ;
  wire \s_reg_n_0_[2] ;
  wire \s_reg_n_0_[3] ;
  wire \s_reg_n_0_[4] ;
  wire \s_reg_n_0_[5] ;
  wire \s_reg_n_0_[6] ;
  wire \s_reg_n_0_[7] ;
  wire [7:0]sum;
  wire [7:0]sum_OBUF;
  wire valid_in;
  wire valid_in_IBUF;
  wire valid_reg_i_1_n_0;
  wire valid_reg_reg_n_0;
  wire [7:0]x1;
  wire [6:1]x1_IBUF;
  wire [7:0]x2;
  wire [6:0]x2_IBUF;
  wire y;
  wire y_OBUF;
  wire y_i_1_n_0;
  wire y_valid;
  wire y_valid_OBUF;
  wire [3:3]\NLW_s_reg[7]_i_2_CO_UNCONNECTED ;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \p1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(x1_IBUF[1]),
        .Q(p1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(x1_IBUF[2]),
        .Q(p1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(x1_IBUF[3]),
        .Q(p1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(x1_IBUF[4]),
        .Q(p1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(x1_IBUF[5]),
        .Q(p1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(x1_IBUF[6]),
        .Q(p1[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \p2[0]_i_1 
       (.I0(x2_IBUF[0]),
        .I1(x2_IBUF[1]),
        .O(\p2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \p2[1]_i_1 
       (.I0(x2_IBUF[1]),
        .I1(x2_IBUF[0]),
        .I2(x2_IBUF[2]),
        .O(\p2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \p2[2]_i_1 
       (.I0(x2_IBUF[2]),
        .I1(x2_IBUF[0]),
        .I2(x2_IBUF[1]),
        .I3(x2_IBUF[3]),
        .O(\p2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \p2[3]_i_1 
       (.I0(x2_IBUF[3]),
        .I1(x2_IBUF[1]),
        .I2(x2_IBUF[0]),
        .I3(x2_IBUF[2]),
        .I4(x2_IBUF[4]),
        .O(\p2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \p2[4]_i_1 
       (.I0(x2_IBUF[4]),
        .I1(x2_IBUF[2]),
        .I2(x2_IBUF[0]),
        .I3(x2_IBUF[1]),
        .I4(x2_IBUF[3]),
        .I5(x2_IBUF[5]),
        .O(\p2[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \p2[6]_i_1 
       (.I0(x2_IBUF[5]),
        .I1(\p2[6]_i_2_n_0 ),
        .I2(x2_IBUF[6]),
        .O(\p2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \p2[6]_i_2 
       (.I0(x2_IBUF[3]),
        .I1(x2_IBUF[1]),
        .I2(x2_IBUF[0]),
        .I3(x2_IBUF[2]),
        .I4(x2_IBUF[4]),
        .O(\p2[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(\p2[0]_i_1_n_0 ),
        .Q(p2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(\p2[1]_i_1_n_0 ),
        .Q(p2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(\p2[2]_i_1_n_0 ),
        .Q(p2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(\p2[3]_i_1_n_0 ),
        .Q(p2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(\p2[4]_i_1_n_0 ),
        .Q(p2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(y_i_1_n_0),
        .D(\p2[6]_i_1_n_0 ),
        .Q(p2[6]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  LUT3 #(
    .INIT(8'h69)) 
    \s[3]_i_2 
       (.I0(p2[3]),
        .I1(p1[3]),
        .I2(p2[2]),
        .O(\s[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s[3]_i_3 
       (.I0(p2[2]),
        .I1(p1[2]),
        .O(\s[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[3]_i_4 
       (.I0(p1[1]),
        .I1(p2[1]),
        .O(\s[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[3]_i_5 
       (.I0(p1[0]),
        .I1(p2[0]),
        .O(\s[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(valid_reg_reg_n_0),
        .O(s));
  LUT2 #(
    .INIT(4'hE)) 
    \s[7]_i_3 
       (.I0(p1[6]),
        .I1(p2[6]),
        .O(\s[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s[7]_i_4 
       (.I0(p1[4]),
        .I1(p2[4]),
        .O(\s[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s[7]_i_5 
       (.I0(p1[3]),
        .I1(p2[3]),
        .O(\s[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s[7]_i_6 
       (.I0(p2[6]),
        .I1(p1[6]),
        .O(\s[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s[7]_i_7 
       (.I0(p2[6]),
        .I1(p1[6]),
        .O(\s[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \s[7]_i_8 
       (.I0(p2[4]),
        .I1(p1[4]),
        .I2(p2[6]),
        .I3(p1[6]),
        .O(\s[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \s[7]_i_9 
       (.I0(p2[3]),
        .I1(p1[3]),
        .I2(p2[4]),
        .I3(p1[4]),
        .O(\s[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[0]),
        .Q(\s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[1]),
        .Q(\s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[2]),
        .Q(\s_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[3]),
        .Q(\s_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\s_reg[3]_i_1_n_0 ,\s_reg[3]_i_1_n_1 ,\s_reg[3]_i_1_n_2 ,\s_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({p2[2],p1[2:0]}),
        .O(p_0_in[3:0]),
        .S({\s[3]_i_2_n_0 ,\s[3]_i_3_n_0 ,\s[3]_i_4_n_0 ,\s[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[4]),
        .Q(\s_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[5]),
        .Q(\s_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[6]),
        .Q(\s_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(p_0_in[7]),
        .Q(\s_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_reg[7]_i_2 
       (.CI(\s_reg[3]_i_1_n_0 ),
        .CO({\NLW_s_reg[7]_i_2_CO_UNCONNECTED [3],\s_reg[7]_i_2_n_1 ,\s_reg[7]_i_2_n_2 ,\s_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\s[7]_i_3_n_0 ,\s[7]_i_4_n_0 ,\s[7]_i_5_n_0 }),
        .O(p_0_in[7:4]),
        .S({\s[7]_i_6_n_0 ,\s[7]_i_7_n_0 ,\s[7]_i_8_n_0 ,\s[7]_i_9_n_0 }));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
  OBUF \sum_OBUF[6]_inst 
       (.I(sum_OBUF[6]),
        .O(sum[6]));
  OBUF \sum_OBUF[7]_inst 
       (.I(sum_OBUF[7]),
        .O(sum[7]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[0] ),
        .Q(sum_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[1] ),
        .Q(sum_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[2] ),
        .Q(sum_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[3] ),
        .Q(sum_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[4] ),
        .Q(sum_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[5] ),
        .Q(sum_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[6] ),
        .Q(sum_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(s),
        .D(\s_reg_n_0_[7] ),
        .Q(sum_OBUF[7]),
        .R(1'b0));
  IBUF valid_in_IBUF_inst
       (.I(valid_in),
        .O(valid_in_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    valid_reg_i_1
       (.I0(valid_in_IBUF),
        .I1(valid_reg_reg_n_0),
        .O(valid_reg_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(y_i_1_n_0),
        .D(valid_reg_i_1_n_0),
        .Q(valid_reg_reg_n_0));
  IBUF \x1_IBUF[1]_inst 
       (.I(x1[1]),
        .O(x1_IBUF[1]));
  IBUF \x1_IBUF[2]_inst 
       (.I(x1[2]),
        .O(x1_IBUF[2]));
  IBUF \x1_IBUF[3]_inst 
       (.I(x1[3]),
        .O(x1_IBUF[3]));
  IBUF \x1_IBUF[4]_inst 
       (.I(x1[4]),
        .O(x1_IBUF[4]));
  IBUF \x1_IBUF[5]_inst 
       (.I(x1[5]),
        .O(x1_IBUF[5]));
  IBUF \x1_IBUF[6]_inst 
       (.I(x1[6]),
        .O(x1_IBUF[6]));
  IBUF \x2_IBUF[0]_inst 
       (.I(x2[0]),
        .O(x2_IBUF[0]));
  IBUF \x2_IBUF[1]_inst 
       (.I(x2[1]),
        .O(x2_IBUF[1]));
  IBUF \x2_IBUF[2]_inst 
       (.I(x2[2]),
        .O(x2_IBUF[2]));
  IBUF \x2_IBUF[3]_inst 
       (.I(x2[3]),
        .O(x2_IBUF[3]));
  IBUF \x2_IBUF[4]_inst 
       (.I(x2[4]),
        .O(x2_IBUF[4]));
  IBUF \x2_IBUF[5]_inst 
       (.I(x2[5]),
        .O(x2_IBUF[5]));
  IBUF \x2_IBUF[6]_inst 
       (.I(x2[6]),
        .O(x2_IBUF[6]));
  OBUF y_OBUF_inst
       (.I(y_OBUF),
        .O(y));
  LUT1 #(
    .INIT(2'h1)) 
    y_i_1
       (.I0(rst_n_IBUF),
        .O(y_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    y_reg
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg_reg_n_0),
        .CLR(y_i_1_n_0),
        .D(valid_reg_reg_n_0),
        .Q(y_OBUF));
  OBUF y_valid_OBUF_inst
       (.I(y_valid_OBUF),
        .O(y_valid));
  FDCE #(
    .INIT(1'b0)) 
    y_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(y_i_1_n_0),
        .D(valid_reg_reg_n_0),
        .Q(y_valid_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
