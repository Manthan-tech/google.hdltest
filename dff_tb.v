`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:25:49 02/03/2022
// Design Name:   dff
// Module Name:   dff_tb.v
// Project Name:  EXP2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_tb_v;

	// Inputs
	reg d;
	reg clk;
	reg clear;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.q(q), 
		.qbar(qbar), 
		.d(d), 
		.clk(clk), 
		.clear(clear)
	);

  initial begin
// Initialize Inputs
d = 0;clk = 0;clear = 1;
// Wait 100 ns for global reset to finish
#100 d = 0;clear = 0;
#100 d = 1;clear = 0;
#100 d = 1;clear = 1;

// Add stimulus here

end
always #50 clk=~clk;
endmodule
