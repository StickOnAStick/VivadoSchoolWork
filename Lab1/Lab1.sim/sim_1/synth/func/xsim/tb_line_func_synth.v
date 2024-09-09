// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Sep  1 13:05:02 2024
// Host        : Nicks-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Vivado/Lab1/Lab1.sim/sim_1/synth/func/xsim/tb_line_func_synth.v
// Design      : line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module line
   (rst_n,
    clk,
    m,
    x,
    c,
    valid_in,
    y,
    y_valid);
  input rst_n;
  input clk;
  input [3:0]m;
  input [3:0]x;
  input [3:0]c;
  input valid_in;
  output [7:0]y;
  output y_valid;

  wire [3:0]c;
  wire [3:0]c_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]m;
  wire [3:0]m_IBUF;
  wire [7:0]p_0_in;
  wire [7:0]product;
  wire [7:0]product0;
  wire \product[5]_i_10_n_0 ;
  wire \product[5]_i_11_n_0 ;
  wire \product[5]_i_15_n_0 ;
  wire \product[5]_i_16_n_0 ;
  wire \product[5]_i_17_n_0 ;
  wire \product[5]_i_18_n_0 ;
  wire \product[5]_i_19_n_0 ;
  wire \product[5]_i_20_n_0 ;
  wire \product[5]_i_2_n_0 ;
  wire \product[5]_i_3_n_0 ;
  wire \product[5]_i_4_n_0 ;
  wire \product[5]_i_5_n_0 ;
  wire \product[5]_i_6_n_0 ;
  wire \product[5]_i_7_n_0 ;
  wire \product[5]_i_8_n_0 ;
  wire \product[5]_i_9_n_0 ;
  wire \product[7]_i_2_n_0 ;
  wire \product[7]_i_3_n_0 ;
  wire \product[7]_i_4_n_0 ;
  wire \product[7]_i_5_n_0 ;
  wire \product[7]_i_6_n_0 ;
  wire \product[7]_i_7_n_0 ;
  wire \product[7]_i_9_n_0 ;
  wire \product_reg[5]_i_12_n_0 ;
  wire \product_reg[5]_i_13_n_0 ;
  wire \product_reg[5]_i_14_n_0 ;
  wire \product_reg[5]_i_1_n_0 ;
  wire \product_reg[5]_i_1_n_1 ;
  wire \product_reg[5]_i_1_n_2 ;
  wire \product_reg[5]_i_1_n_3 ;
  wire \product_reg[7]_i_1_n_3 ;
  wire \product_reg[7]_i_8_n_0 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire valid_in;
  wire valid_in_IBUF;
  wire valid_reg;
  wire [3:0]x;
  wire [3:0]x_IBUF;
  wire [7:0]y;
  wire \y[3]_i_2_n_0 ;
  wire \y[3]_i_3_n_0 ;
  wire \y[3]_i_4_n_0 ;
  wire \y[3]_i_5_n_0 ;
  wire \y[7]_i_2_n_0 ;
  wire \y[7]_i_3_n_0 ;
  wire \y[7]_i_4_n_0 ;
  wire \y[7]_i_5_n_0 ;
  wire \y[7]_i_6_n_0 ;
  wire [7:0]y_OBUF;
  wire \y_reg[3]_i_1_n_0 ;
  wire \y_reg[3]_i_1_n_1 ;
  wire \y_reg[3]_i_1_n_2 ;
  wire \y_reg[3]_i_1_n_3 ;
  wire \y_reg[7]_i_1_n_1 ;
  wire \y_reg[7]_i_1_n_2 ;
  wire \y_reg[7]_i_1_n_3 ;
  wire y_valid;
  wire y_valid_OBUF;
  wire [3:1]\NLW_product_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_product_reg[7]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[7]_i_1_CO_UNCONNECTED ;

  IBUF \c_IBUF[0]_inst 
       (.I(c[0]),
        .O(c_IBUF[0]));
  IBUF \c_IBUF[1]_inst 
       (.I(c[1]),
        .O(c_IBUF[1]));
  IBUF \c_IBUF[2]_inst 
       (.I(c[2]),
        .O(c_IBUF[2]));
  IBUF \c_IBUF[3]_inst 
       (.I(c[3]),
        .O(c_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \m_IBUF[0]_inst 
       (.I(m[0]),
        .O(m_IBUF[0]));
  IBUF \m_IBUF[1]_inst 
       (.I(m[1]),
        .O(m_IBUF[1]));
  IBUF \m_IBUF[2]_inst 
       (.I(m[2]),
        .O(m_IBUF[2]));
  IBUF \m_IBUF[3]_inst 
       (.I(m[3]),
        .O(m_IBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \product[0]_i_1 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[0]),
        .O(product0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \product[1]_i_1 
       (.I0(m_IBUF[1]),
        .I1(x_IBUF[0]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[0]),
        .O(product0[1]));
  LUT6 #(
    .INIT(64'hCA80800080000000)) 
    \product[5]_i_10 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[0]),
        .I2(x_IBUF[2]),
        .I3(x_IBUF[1]),
        .I4(m_IBUF[1]),
        .I5(m_IBUF[2]),
        .O(\product[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h37484F3FB03F4F3F)) 
    \product[5]_i_11 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[3]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[2]),
        .I4(x_IBUF[2]),
        .I5(m_IBUF[1]),
        .O(\product[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8409FBFB73F3F3F)) 
    \product[5]_i_15 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[2]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[0]),
        .I4(x_IBUF[2]),
        .I5(m_IBUF[1]),
        .O(\product[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h12EA35151D959595)) 
    \product[5]_i_16 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[2]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[0]),
        .I4(x_IBUF[2]),
        .I5(m_IBUF[1]),
        .O(\product[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFF00F080F000)) 
    \product[5]_i_17 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[0]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[2]),
        .I4(m_IBUF[1]),
        .I5(x_IBUF[2]),
        .O(\product[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00400000F0F0C0F0)) 
    \product[5]_i_18 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[0]),
        .I2(x_IBUF[2]),
        .I3(m_IBUF[1]),
        .I4(x_IBUF[1]),
        .I5(m_IBUF[2]),
        .O(\product[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE0FF00000F800F00)) 
    \product[5]_i_19 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[0]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[2]),
        .I4(m_IBUF[1]),
        .I5(x_IBUF[2]),
        .O(\product[5]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \product[5]_i_2 
       (.I0(\product[5]_i_9_n_0 ),
        .I1(m_IBUF[3]),
        .I2(\product[5]_i_10_n_0 ),
        .I3(\product[5]_i_11_n_0 ),
        .O(\product[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFF0F0C0F0)) 
    \product[5]_i_20 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[0]),
        .I2(x_IBUF[2]),
        .I3(m_IBUF[1]),
        .I4(x_IBUF[1]),
        .I5(m_IBUF[2]),
        .O(\product[5]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9A95)) 
    \product[5]_i_3 
       (.I0(\product[5]_i_11_n_0 ),
        .I1(\product[5]_i_10_n_0 ),
        .I2(m_IBUF[3]),
        .I3(\product[5]_i_9_n_0 ),
        .O(\product[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \product[5]_i_4 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[3]),
        .O(\product[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \product[5]_i_5 
       (.I0(\product[5]_i_11_n_0 ),
        .I1(\product_reg[5]_i_12_n_0 ),
        .I2(\product_reg[5]_i_13_n_0 ),
        .I3(x_IBUF[3]),
        .I4(\product_reg[5]_i_14_n_0 ),
        .O(\product[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9A95656A656A656A)) 
    \product[5]_i_6 
       (.I0(\product[5]_i_11_n_0 ),
        .I1(\product[5]_i_10_n_0 ),
        .I2(m_IBUF[3]),
        .I3(\product[5]_i_9_n_0 ),
        .I4(x_IBUF[3]),
        .I5(m_IBUF[1]),
        .O(\product[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h88877787)) 
    \product[5]_i_7 
       (.I0(x_IBUF[3]),
        .I1(m_IBUF[0]),
        .I2(\product[5]_i_15_n_0 ),
        .I3(m_IBUF[3]),
        .I4(\product[5]_i_16_n_0 ),
        .O(\product[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4B77788878887888)) 
    \product[5]_i_8 
       (.I0(m_IBUF[2]),
        .I1(x_IBUF[0]),
        .I2(x_IBUF[2]),
        .I3(m_IBUF[0]),
        .I4(x_IBUF[1]),
        .I5(m_IBUF[1]),
        .O(\product[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE000008008000000)) 
    \product[5]_i_9 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[0]),
        .I2(x_IBUF[2]),
        .I3(x_IBUF[1]),
        .I4(m_IBUF[1]),
        .I5(m_IBUF[2]),
        .O(\product[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \product[7]_i_2 
       (.I0(\product[7]_i_4_n_0 ),
        .I1(\product[7]_i_5_n_0 ),
        .I2(x_IBUF[3]),
        .I3(\product[7]_i_6_n_0 ),
        .I4(m_IBUF[3]),
        .I5(\product[7]_i_7_n_0 ),
        .O(\product[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F330FCCAA55AAAA)) 
    \product[7]_i_3 
       (.I0(\product_reg[7]_i_8_n_0 ),
        .I1(\product[7]_i_5_n_0 ),
        .I2(\product[7]_i_4_n_0 ),
        .I3(m_IBUF[3]),
        .I4(\product[7]_i_9_n_0 ),
        .I5(x_IBUF[3]),
        .O(\product[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00003373)) 
    \product[7]_i_4 
       (.I0(x_IBUF[0]),
        .I1(x_IBUF[2]),
        .I2(m_IBUF[1]),
        .I3(x_IBUF[1]),
        .I4(m_IBUF[2]),
        .O(\product[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF7FFF)) 
    \product[7]_i_5 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[1]),
        .I2(x_IBUF[0]),
        .I3(m_IBUF[1]),
        .I4(x_IBUF[2]),
        .I5(m_IBUF[2]),
        .O(\product[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF0F0F3F0F)) 
    \product[7]_i_6 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[0]),
        .I2(x_IBUF[2]),
        .I3(m_IBUF[1]),
        .I4(x_IBUF[1]),
        .I5(m_IBUF[2]),
        .O(\product[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE0000F7F00FF0FFF)) 
    \product[7]_i_7 
       (.I0(x_IBUF[0]),
        .I1(m_IBUF[0]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[2]),
        .I4(x_IBUF[2]),
        .I5(m_IBUF[1]),
        .O(\product[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F080F000)) 
    \product[7]_i_9 
       (.I0(m_IBUF[0]),
        .I1(x_IBUF[0]),
        .I2(x_IBUF[1]),
        .I3(m_IBUF[2]),
        .I4(m_IBUF[1]),
        .I5(x_IBUF[2]),
        .O(\product[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[0]),
        .Q(product[0]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[1]),
        .Q(product[1]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[2]),
        .Q(product[2]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[3]),
        .Q(product[3]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[4]),
        .Q(product[4]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[5]),
        .Q(product[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 4x4}}" *) 
  CARRY4 \product_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\product_reg[5]_i_1_n_0 ,\product_reg[5]_i_1_n_1 ,\product_reg[5]_i_1_n_2 ,\product_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\product[5]_i_2_n_0 ,\product[5]_i_3_n_0 ,\product[5]_i_4_n_0 ,1'b0}),
        .O(product0[5:2]),
        .S({\product[5]_i_5_n_0 ,\product[5]_i_6_n_0 ,\product[5]_i_7_n_0 ,\product[5]_i_8_n_0 }));
  MUXF7 \product_reg[5]_i_12 
       (.I0(\product[5]_i_9_n_0 ),
        .I1(\product[5]_i_10_n_0 ),
        .O(\product_reg[5]_i_12_n_0 ),
        .S(m_IBUF[3]));
  MUXF7 \product_reg[5]_i_13 
       (.I0(\product[5]_i_17_n_0 ),
        .I1(\product[5]_i_18_n_0 ),
        .O(\product_reg[5]_i_13_n_0 ),
        .S(m_IBUF[3]));
  MUXF7 \product_reg[5]_i_14 
       (.I0(\product[5]_i_19_n_0 ),
        .I1(\product[5]_i_20_n_0 ),
        .O(\product_reg[5]_i_14_n_0 ),
        .S(m_IBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[6]),
        .Q(product[6]));
  FDCE #(
    .INIT(1'b0)) 
    \product_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(product0[7]),
        .Q(product[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 4x4}}" *) 
  CARRY4 \product_reg[7]_i_1 
       (.CI(\product_reg[5]_i_1_n_0 ),
        .CO({\NLW_product_reg[7]_i_1_CO_UNCONNECTED [3:1],\product_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\product[7]_i_2_n_0 }),
        .O({\NLW_product_reg[7]_i_1_O_UNCONNECTED [3:2],product0[7:6]}),
        .S({1'b0,1'b0,1'b1,\product[7]_i_3_n_0 }));
  MUXF7 \product_reg[7]_i_8 
       (.I0(\product[7]_i_7_n_0 ),
        .I1(\product[7]_i_6_n_0 ),
        .O(\product_reg[7]_i_8_n_0 ),
        .S(m_IBUF[3]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF valid_in_IBUF_inst
       (.I(valid_in),
        .O(valid_in_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(valid_in_IBUF),
        .Q(valid_reg));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \y[3]_i_2 
       (.I0(c_IBUF[3]),
        .I1(product[3]),
        .O(\y[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[3]_i_3 
       (.I0(product[2]),
        .I1(c_IBUF[2]),
        .O(\y[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[3]_i_4 
       (.I0(product[1]),
        .I1(c_IBUF[1]),
        .O(\y[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[3]_i_5 
       (.I0(product[0]),
        .I1(c_IBUF[0]),
        .O(\y[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[7]_i_2 
       (.I0(c_IBUF[3]),
        .O(\y[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[7]_i_3 
       (.I0(product[6]),
        .I1(product[7]),
        .O(\y[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[7]_i_4 
       (.I0(product[5]),
        .I1(product[6]),
        .O(\y[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[7]_i_5 
       (.I0(product[4]),
        .I1(product[5]),
        .O(\y[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[7]_i_6 
       (.I0(c_IBUF[3]),
        .I1(product[4]),
        .O(\y[7]_i_6_n_0 ));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  OBUF \y_OBUF[4]_inst 
       (.I(y_OBUF[4]),
        .O(y[4]));
  OBUF \y_OBUF[5]_inst 
       (.I(y_OBUF[5]),
        .O(y[5]));
  OBUF \y_OBUF[6]_inst 
       (.I(y_OBUF[6]),
        .O(y[6]));
  OBUF \y_OBUF[7]_inst 
       (.I(y_OBUF[7]),
        .O(y[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[0]),
        .Q(y_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[1]),
        .Q(y_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[2]),
        .Q(y_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[3]),
        .Q(y_OBUF[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\y_reg[3]_i_1_n_0 ,\y_reg[3]_i_1_n_1 ,\y_reg[3]_i_1_n_2 ,\y_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({c_IBUF[3],product[2:0]}),
        .O(p_0_in[3:0]),
        .S({\y[3]_i_2_n_0 ,\y[3]_i_3_n_0 ,\y[3]_i_4_n_0 ,\y[3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[4]),
        .Q(y_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[5]),
        .Q(y_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[6]),
        .Q(y_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(valid_reg),
        .CLR(rst_n_IBUF),
        .D(p_0_in[7]),
        .Q(y_OBUF[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[7]_i_1 
       (.CI(\y_reg[3]_i_1_n_0 ),
        .CO({\NLW_y_reg[7]_i_1_CO_UNCONNECTED [3],\y_reg[7]_i_1_n_1 ,\y_reg[7]_i_1_n_2 ,\y_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,product[5:4],\y[7]_i_2_n_0 }),
        .O(p_0_in[7:4]),
        .S({\y[7]_i_3_n_0 ,\y[7]_i_4_n_0 ,\y[7]_i_5_n_0 ,\y[7]_i_6_n_0 }));
  OBUF y_valid_OBUF_inst
       (.I(y_valid_OBUF),
        .O(y_valid));
  FDCE #(
    .INIT(1'b0)) 
    y_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(valid_reg),
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
