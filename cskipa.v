`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    22:39:10 05/08/22
// Design Name:    
// Module Name:    cskipa
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
module cskipa(s,c,a,b,cin);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]s;
output c;
wire [3:0]p;
wire c0;
wire bp;
assign p= a^b;//get all propagate bits
assign bp= &p;
rpc rca1 ( s[3:0],c0, a[3:0],b[3:0],cin);
mux2_1 m0(c0,cin,bp,cout);

endmodule

module propagate_p(a,b,p,bp);
input [3:0] a,b;
output [3:0] p;
output bp;
assign p= a^b;//get all propagate bits
assign bp= &p;// and p0p1p2p3 bits
endmodule

module mux2_1(c0,cin,bp,cout);
output cout;
input c0,cin,bp;
assign cout = bp?cin:c0;


endmodule