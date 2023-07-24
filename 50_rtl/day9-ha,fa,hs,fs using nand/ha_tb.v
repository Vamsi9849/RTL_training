module test();
reg a,b;
wire s,c;
reg clk;
ha dut(a,b,s,c);

always #5 clk=~clk;


initial begin
	clk=0;
$dumpfile("ha.vcd");
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
	$display("a=%b,b=%b,s=%b,c=%b",a,b,s,c);
end

endmodule

