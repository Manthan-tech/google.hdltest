
  module rom_test;
 	reg [3:0] address;
	reg rd;
	wire [3:0] out;
	rom uut(.address(address),.rd(rd), .out(out));
   initial begin
	rd =1; address = 4'b0000;#30;
	rd =1;  address = 4'b0001;#30;
	rd =1;address = 4'b0010;#30;
//	rd =1;address = 3;#30;
//	rd =1;  address = 4;#30;
//	rd =1;  address = 5;#30;
//	rd =1; address = 6;#30;
//	rd =1;  address = 7;#30;
   end
  endmodule
