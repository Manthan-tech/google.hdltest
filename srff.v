module srff(q, qbar, s, r, clk);
output q, qbar;
input s;
input r;
input clk;
wire nand1_out;
wire nand2_out;
nand n1(nand1_out, clk, s);
nand n2(nand2_out, clk, r);
nand n3(q, nand1_out, qbar);
nand n4(qbar, nand2_out, q);
endmodule