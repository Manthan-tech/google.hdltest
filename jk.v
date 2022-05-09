`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    19:55:57 05/08/22
// Design Name:    
// Module Name:    jk
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
module jk(q,qb,j,k,clk, clr);
output q, qb;
input clk;
input clr;
input j, k;
reg q;
initial
q=0;

always@(negedge clk)
begin
q= (j & (~q)) | ((~k) & q);

end
assign qb=~q;


endmodule
