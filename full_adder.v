`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    18:13:01 05/08/22
// Design Name:    
// Module Name:    full_adder
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
module full_adder(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire w1,w2,w3;
ha_ad h1(w1,w2,a,b);
ha_ad h2(s,w3,w1,cin);
or or1(c,w2,c);
endmodule
