module ha_ad_test;
// Inputs 
reg a; reg b;
// Outputs
wire s; wire c;
// Instantiate the Unit Under Test (UUT)
ha_ad uut (.s(s), .c(c), .a(a), .b(b) );
initial begin
// Initialize Inputs
a = 0; b = 0;
// Wait 100 ns for global reset to
#100; a=0; b=1;
#100; a=1; b=0;
#100; a=1; b=1;
// Add stimulus here
end
endmodule
