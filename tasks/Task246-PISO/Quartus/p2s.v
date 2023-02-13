// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Mon Feb 13 14:13:46 2023"

module p2s(
	CLK,
	N_RESET,
	EN,
	SHIFT,
	DATAW,
	SOUT
);


input wire	CLK;
input wire	N_RESET;
input wire	EN;
input wire	SHIFT;
input wire	[3:0] DATAW;
output reg	SOUT;

wire	[3:0] D;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	DFFE_inst9;
reg	DFFE_inst8;
wire	SYNTHESIZED_WIRE_2;
reg	DFFE_inst10;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_2 = 0;




always@(posedge CLK or negedge N_RESET)
begin
if (!N_RESET)
	begin
	DFFE_inst10 <= 0;
	end
else
if (EN)
	begin
	DFFE_inst10 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge CLK or negedge N_RESET)
begin
if (!N_RESET)
	begin
	SOUT <= 0;
	end
else
if (EN)
	begin
	SOUT <= SYNTHESIZED_WIRE_1;
	end
end


mux21	b2v_inst12(
	.X0(D[0]),
	.X1(DFFE_inst9),
	.SEL(SHIFT),
	.Q(SYNTHESIZED_WIRE_1));


mux21	b2v_inst3(
	.X0(D[2]),
	.X1(DFFE_inst8),
	.SEL(SHIFT),
	.Q(SYNTHESIZED_WIRE_0));


mux21	b2v_inst5(
	.X0(D[3]),
	.X1(SYNTHESIZED_WIRE_2),
	.SEL(SHIFT),
	.Q(SYNTHESIZED_WIRE_3));


mux21	b2v_inst6(
	.X0(D[1]),
	.X1(DFFE_inst10),
	.SEL(SHIFT),
	.Q(SYNTHESIZED_WIRE_4));



always@(posedge CLK or negedge N_RESET)
begin
if (!N_RESET)
	begin
	DFFE_inst8 <= 0;
	end
else
if (EN)
	begin
	DFFE_inst8 <= SYNTHESIZED_WIRE_3;
	end
end


always@(posedge CLK or negedge N_RESET)
begin
if (!N_RESET)
	begin
	DFFE_inst9 <= 0;
	end
else
if (EN)
	begin
	DFFE_inst9 <= SYNTHESIZED_WIRE_4;
	end
end

assign	D = DATAW;

endmodule
