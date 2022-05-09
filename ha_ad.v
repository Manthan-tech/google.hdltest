`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:51:04 05/08/22
// Design Name:    
// Module Name:    ha_ad
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
module ha_ad(s,c,a,b);
input a,b;
output s,c;
assign s=a^b;
assign c = a&b;


endmodule
