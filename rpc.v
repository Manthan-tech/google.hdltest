`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    18:57:17 05/08/22
// Design Name:    
// Module Name:    rpc
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
module rpc(s,c,a,b,cin);
input [3:0]a;input [3:0]b; input cin;
output [3:0]s,c;
wire w1,w2,w3;
full_adder f1(s[0], w1, a[0],b[0],cin);
full_adder f2(s[1], w2, a[1],b[1],w1);
full_adder f3(s[2], w3, a[2],b[2],w2);
full_adder f4(s[3], c, a[3],b[3],w3);

endmodule
