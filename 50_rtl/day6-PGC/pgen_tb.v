module test();
reg [7:0]a;
wire even_PG;

parityG dut(.a(a),.even_PG(even_PG));
initial
begin
	$dumpfile("parityG.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,even_PG=%b",a,even_PG);

	a=8'b00001110;
	#5 a=8'b00110011;
	#5 a=8'b01010100;

	#5 $finish;
end
endmodule
