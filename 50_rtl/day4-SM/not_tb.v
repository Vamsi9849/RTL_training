module test();
reg a;
wire out;
not_g dut(.a(a),.out(out));
initial
begin
	$dumpfile("not_g.vcd");
	$dumpvars(0,test);

	a=1'b0;

	#5 a=1'b1;

	#5 a=1'b0;
end
initial
begin
	$monitor($time,"a=%b,out=%b",a,out);
	#50 $finish;
	
end

endmodule

