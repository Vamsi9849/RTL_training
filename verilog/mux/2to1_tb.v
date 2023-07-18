module test;
reg a,b,s;
wire y;
mux uut(a,b,s,y);
initial 
begin
	$dumpfile("wave.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,b=%b,s=%b,y=%b",a,b,s,y);
	a=0;b=1;s=0;
	#5 s=1;

	#5 s=0;

	#5 $finish;
end
endmodule
