
  module full_adder_test;
          reg a; reg b; reg cin;

          wire s; wire c;
full_adder uut (.s(s), .c(c), .a(a), .b(b), .cin(cin));
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
