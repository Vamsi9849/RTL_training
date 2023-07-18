module test;
reg a,b,c;
wire dif,bor;
full_sub uut(.a(a),.b(b),.c(c),.dif(dif),.bor(bor));
initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,b=%b,c=%b,dif=%b,bor=%b",a,b,c,dif,bor);
	a=1'b0;b=1'b0;c=0;
	#5 b=1'b1;c=0;
	#5 a=1'b1;b=1'b0;c=0;
	#5 a=1'b1;b=1'b1;c=1;
	 

	#10 $finish;
end

	endmodule
