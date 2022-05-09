

  module clooka_test;
   reg a,b,cin;
	wire s,c;
	clooka uut(.s(s), .c(c), .a(a), .b(b), .cin(cin));
   initial begin
   a=0;b=0;cin=0;
#100;a=0;b=0;cin=1;
#100;a=0;b=1;cin=0;
#100;a=0;b=1;cin=1;
#100;a=1;b=0;cin=0;
#100;a=1;b=0;cin=1;
#100;a=1;b=1;cin=0;
#100;a=1;b=1;cin=1; 
   end
  endmodule
