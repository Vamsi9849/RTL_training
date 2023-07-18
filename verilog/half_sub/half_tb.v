module test;
reg a,b;
wire D,B;
half_sub uut(.a(a),.b(b),.D(D),.B(B));
initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,b=%b,D=%b,B=%b",a,b,D,B);
	a=1'b0;b=1'b0;
	#5 b=1'b1;
	#5 a=1'b1;b=1'b0;
	#5 a=1'b1;b=1'b1;
	 

	#10 $finish;
end

	endmodule
