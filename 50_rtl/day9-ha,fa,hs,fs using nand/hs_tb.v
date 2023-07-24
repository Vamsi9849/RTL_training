module test();
reg a,b;
wire dif,bor;
reg clk;
hs dut(a,b,dif,bor);

always #5 clk=~clk;


initial begin
	clk=0;
$dumpfile("hs.vcd");
$dumpvars(0,test);
	
	a=0;b=0;
	#10;
	b=1;
	#10;
	a=1;b=0;
	#10;
	b=1;
	#10 $finish;
end

always @(posedge clk)
begin
	$display("a=%b,b=%b,dif=%b,bor=%b",a,b,dif,bor);
end

endmodule

