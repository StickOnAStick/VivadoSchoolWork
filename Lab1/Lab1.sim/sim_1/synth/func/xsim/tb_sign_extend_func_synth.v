// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Aug 31 14:06:47 2024
// Host        : Nicks-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Vivado/Lab1/Lab1.sim/sim_1/synth/func/xsim/tb_sign_extend_func_synth.v
// Design      : sign_extend
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module sign_extend
   (sin,
    sout);
  input [3:0]sin;
  output [7:0]sout;

  wire [3:0]sin;
  wire [7:0]sout;
  wire [3:0]sout_OBUF;

  IBUF \sin_IBUF[0]_inst 
       (.I(sin[0]),
        .O(sout_OBUF[0]));
  IBUF \sin_IBUF[1]_inst 
       (.I(sin[1]),
        .O(sout_OBUF[1]));
  IBUF \sin_IBUF[2]_inst 
       (.I(sin[2]),
        .O(sout_OBUF[2]));
  IBUF \sin_IBUF[3]_inst 
       (.I(sin[3]),
        .O(sout_OBUF[3]));
  OBUF \sout_OBUF[0]_inst 
       (.I(sout_OBUF[0]),
        .O(sout[0]));
  OBUF \sout_OBUF[1]_inst 
       (.I(sout_OBUF[1]),
        .O(sout[1]));
  OBUF \sout_OBUF[2]_inst 
       (.I(sout_OBUF[2]),
        .O(sout[2]));
  OBUF \sout_OBUF[3]_inst 
       (.I(sout_OBUF[3]),
        .O(sout[3]));
  OBUF \sout_OBUF[4]_inst 
       (.I(sout_OBUF[3]),
        .O(sout[4]));
  OBUF \sout_OBUF[5]_inst 
       (.I(sout_OBUF[3]),
        .O(sout[5]));
  OBUF \sout_OBUF[6]_inst 
       (.I(sout_OBUF[3]),
        .O(sout[6]));
  OBUF \sout_OBUF[7]_inst 
       (.I(sout_OBUF[3]),
        .O(sout[7]));
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
