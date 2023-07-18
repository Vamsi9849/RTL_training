module test();
reg a,b;
wire out;

nand_g dut(.a(a),.b(b),.out(out));

initial 
begin
	$dumpfile("nand_g.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,b=%b,out=%b",a,b,out);

	a=1'b0;b=1'b0;
	#5 a=1'b0;b=1'b1;
	#5 a=1'b1;b=1'b0;
	#5 b=1'b1;

	#5$finish;
end
endmodule
