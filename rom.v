`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    18:20:06 05/09/22
// Design Name:    
// Module Name:    rom
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
module rom(address, rd, out);
input [3:0] address;
input rd;
output reg[3:0] out;
reg [3:0] ROM[15:0];
initial
begin
ROM[4'b0000] = 4'b0000;
ROM[4'b0001] = 4'b0001;
ROM[4'b0010] = 4'b0010;
end
always@(rd,address)
begin
if(rd)
begin
out = ROM[address];
end
end

endmodule
