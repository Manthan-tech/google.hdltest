`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:23:46 02/03/22
// Design Name:    
// Module Name:    dff
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
module dff(q, qbar, d, clk, clear);
output q;
output qbar;
input d;
input clk;
input clear;
reg q, qbar;
always@(posedge clk or posedge clear)
begin
if(clear== 1)
begin
q <= 0;
qbar <= 1;
end
else
begin
q <= d;
qbar = !d;
end
end
endmodule
