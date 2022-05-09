
  module wallace_tree_test;
  reg[3:0] a;
  reg [3:0] b;
  wire [7:0] out;
  wallace_tree uut (.a(a),.b(b),.z(z));    

   initial begin
   a = 0;
b = 0;
//wait 100 ns for global reset to finish
#100 a=1101; b=1001; 
   end

  endmodule
