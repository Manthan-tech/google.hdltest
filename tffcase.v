`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:34:00 02/03/22
// Design Name:    
// Module Name:    tffcase
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module tffcase(q, clk, clr, t);
output q;
input clk;
input clr;
input t;
reg q;
initial
q=0;
always@(negedge clk)
begin
case({clr,t})
2'b10: q=0;
2'b00: q=q;
2'b01: q=~q;
endcase
end
endmodule