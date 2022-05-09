
  module mux4_1test;
   reg [3:0] i;
	reg [1:0] s;
	wire out;
	mux4_1 uut (.out(out), .i(i), .s(s));

   initial begin
	#100;i = 0; s = 2'b0;
	#100; i = 1; s = 1;
	#100; i = 4; s = 1;
   end

  endmodule
