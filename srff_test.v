module srff_test;
// Inputs
reg s;
reg r;
reg clk;
// Outputs
wire q;
wire qbar;
// Instantiate the Unit Under Test (UUT)
srff uut (
.q(q),
.qbar(qbar),
.s(s),
.r(r),
.clk(clk)
);
initial begin
// Initialize Inputs
s = 0; r = 1; clk = 1;
// Wait 100 ns for global reset to finish
#100 s = 1;r = 0; clk = 1;
#100 s = 0;r = 0; clk = 1;
#100 s = 1;r = 1; clk = 1;
// Add stimulus here
end
endmodule