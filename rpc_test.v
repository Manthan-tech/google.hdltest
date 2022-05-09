  module rpc_test;
  reg [3:0]A; reg [3:0]B; reg cin;
wire [3:0]s; wire c;
rpc uut (.s(s), .c(c), .a(A), .b(B), .cin(cin));
   initial begin
	 A	= 0; B = 0; cin = 0;
// Wait 100 ns for global reset to
#100; A=0; B=0; cin=1;
#100; A=0; B=1; cin=0;
#100; A=0; B=1; cin=1;
#100; A=1; B=0; cin=0;
#100; A=1; B=0; cin=1;
#100; A=1; B=1; cin=0;
#100; A=1; B=1; cin=1;
   end
  endmodule
