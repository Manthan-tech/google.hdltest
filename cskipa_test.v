
  module cskipa_test;
  wire [3:0]s;
  wire c;
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  cskipa uut (.s(s),.c(c),.a(a),.b(b),.cin(cin));
	initial begin
$display("RSLT\ta\tb\tcin\t\tc\ts");
//A = 4&#39;b0101; B = 4&#39;b1101; carryin = 0; #50; // Set inputs and add delay
a = 0; b = 0; cin = 0; #50; // Set inputs and add delay
a = 3; b = 2; cin = 1; #50; // Set inputs and add delay
 // Set inputs and add delay
/*
//if ( (carryout == 1 ) &amp;&amp; (Y === 4&#39;b0010) )
if ( (carryout == 1 ) &amp;&amp; (Y === 2) )
$display(&quot;PASS\t%p\t%p\t%d\t=\t%d\p%p&quot;,A,B,carryin,carryout,Y);
else

$display(&quot;FAIL\t%p\t%p\t%d\t=\t%d\t%p&quot;,A,B,carryin,carryout,Y);
*/
end
//enabling the wave dump
initial begin
$dumpfile("dump.vcd"); $dumpvars;
end
  endmodule
			