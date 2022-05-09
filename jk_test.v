  module jk_test;

reg clk;
reg clr;
reg j;
reg k;
// Outputs
wire q;
wire qb;
// Instantiate the Unit Under Test (UUT)
jk uut (
.q(q),
.qb(qb),
.j(j),
.k(k),
.clk(clk),
.clr(clr)
);
initial begin
// Initialize Inputs
clk = 1; clr = 1; j = 0; k = 0;
// Wait 100 ns for global reset to finish
#100 clr = 0; j = 0; k = 0;
#100 clr = 0; j = 0; k = 1;
#100 clr = 0; j = 1; k = 0;
#100 clr = 0; j = 1; k = 1;
#100 clr = 0; j = 0; k = 0;
// Add stimulus here
end
always #50 clk=~clk;


  endmodule
