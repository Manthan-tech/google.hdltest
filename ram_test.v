
  module ram_test;
 	reg [3:0] address;
	reg [3:0] data;
	reg rd; reg wr;
	wire [3:0] out;
	ram uut(.data(data), .rd(rd), .wr(wr), .address(address), .out(out));
   initial begin
  	data = 0;  rd =0; wr=1; address = 0;#30;
	data = 1;  rd =0; wr=1; address = 1;#30;
	data = 2;  rd =0; wr=1; address = 2;#30;
	data = 3;  rd =0; wr=1; address = 3;#30;
	data = 4;  rd =0; wr=1; address = 4;#30;
	data = 5;  rd =0; wr=1; address = 5;#30;
	data = 6;  rd =0; wr=1; address = 6;#30;
	data = 7;  rd =0; wr=1; address = 7;#30;
	rd =1; wr=0; address = 0;#30;
	rd =1; wr=0; address = 1;#30;
	rd =1; wr=0; address = 2;#30;
	rd =1; wr=0; address = 3;#30;
	rd =1; wr=0; address = 4;#30;
	rd =1; wr=0; address = 5;#30;
	rd =1; wr=0; address = 6;#30;
	rd =1; wr=0; address = 7;#30;
   end
  endmodule
