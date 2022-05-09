`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    19:02:14 05/09/22
// Design Name:    
// Module Name:    wallace_tree
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
module wallace_tree(a,b,z);
input [3:0] a;
input [3:0] b;
output [7:0] z;
wire [32:0] w;
and g1(z[0], a[0],b[0]);
and g2(w[27], a[0], b[1]);
and g3 (w[0] , a[1], b[0]);
and g4 (w[1] , a[2], b[0]);
and g5 (w[2] , a[0], b[2]);
and g6 (w[3] , a[1], b[1]);
and g7 (w[4] , a[1], b[1]);
and g8 (w[5] , a[3], b[0]);
and g9 (w[6] , a[0], b[3]);
and g10(w[7] , a[1], b[2]);
and g11(w[8] , a[3], b[1]);
and g12(w[9] , a[1], b[3]);
and g13(w[10], a[2], b[2]);
and g14(w[11], a[2], b[3]);
and g15(w[12], a[3], b[2]);
and g16(w[13], a[3], b[3]);
ha_ad h0(w[16], w[17], w[10], w[9]);
ha_ad h1(w[14], w[15], w[7], w[6]);
ha_ad h2(z[1] , w[28], w[27], w[0]);
full_adder f0(w[19] , w[20] , w[2] , w[3] , 1'b0);
full_adder f1(w[21] , w[22] , w[4] , w[5] , w[14]);
full_adder f2(w[23] , w[24] , w[15] , w[8] , w[15]);
full_adder f3(w[25] , w[26] , w[17] , w[11] , w[12]);
full_adder f4(z[2] , w[29] , w[0] , w[1] , w[28]);
full_adder f5(z[3] , w[30] , w[20] , w[21] , w[29]);
full_adder f6(z[4] , w[31] , w[22] , w[23] , w[30]);
full_adder f7(z[5] , w[32] , w[24] , w[25] , w[31]);
full_adder f8(z[6] , z[7] , w[26] , w[13] , w[32]);
endmodule
