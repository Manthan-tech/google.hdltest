`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    22:08:58 05/08/22
// Design Name:    
// Module Name:    clooka
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
module clooka(s, c, a,b,cin);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]s;
output c;
wire p0,p1,p2,p3,g0,g1,g2,g3;
wire c1,c2,c3,c4;
assign
p0=a[0]^b[0],
p1=a[1]^b[1],
p2=a[2]^b[2],
p3=a[3]^b[3],
g0=a[0]&b[0],
g1=a[1]&b[1],
g2=a[2]&b[2],
g3=a[3]&b[3];
assign
c1=g0|(p0&cin),
c2=g1|(p1&(g0|(p0&cin))),
c3=g2|(p2&(g1|(p1&(g0|(p0&cin))))),		
c4=g3|(p3&(g2|(p2&(g1|(p1&(g0|(p0&cin)))))));
assign
s[0]=p0^cin,
s[1]=p1^c1,
s[2]=p2^c2,
s[3]=p3^c3,
c=c4;
endmodule
