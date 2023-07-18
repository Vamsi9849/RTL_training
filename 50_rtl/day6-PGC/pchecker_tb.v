module test();
reg [7:0]a;
reg parity_in;
wire error;

pchecker dut(a,parity_in,error);
initial
begin
	$dumpfile("pchecker.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,parity_in=%b,error=%b",a,parity_in,error);

	a=8'b00001110;parity_in=1;
	#5 a=8'b00110011;parity_in=0;
	#5 a=8'b01010100;parity_in=1;

	#5 $finish;
end
endmodule
