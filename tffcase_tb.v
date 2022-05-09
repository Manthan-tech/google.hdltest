`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:36:58 02/03/2022
// Design Name:   tffcase
// Module Name:   tffcase_tb.v
// Project Name:  EXP2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tffcase
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tffcase_tb_v;

	// Inputs
	reg clk;
	reg clr;
	reg t;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	tffcase uut (
		.q(q), 
		.clk(clk), 
		.clr(clr), 
		.t(t)
	);

	initial begin
		// Initialize Inputs
		clk = 0; clr = 1; t =0;
// Wait 100 ns for global reset to
#100; clr=0;
#100; clr=0; t=1;
// Add stimulus here
end
always
#50 clk=~clk;
endmodule


