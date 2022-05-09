`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    19:13:30 05/08/22
// Design Name:    
// Module Name:    mux4_1
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
module mux4_1(out, i, s);
output out;
input [3:0] i;
input [1:0] s;
assign out = s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);


endmodule
