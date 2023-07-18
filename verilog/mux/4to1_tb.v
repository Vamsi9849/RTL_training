module test;
reg [3:0]in;
reg [1:0]s;
output y;
mux4 uut(in,s,y);
initial 
begin
	$dumpfile("wave4.vcd");
	$dumpvars(0,test);
	$monitor($time,"in=%b,s=%b,y=%b",in,s,y);
	in=4'b1110;s=2'b01;
	#5 s=2'b10;
	#5 s=2'b00;
	#3 s=2'b11;

	#2$finish;
end
endmodule
