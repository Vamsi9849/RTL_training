module test;
reg [15:0]in;
reg [3:0]sel;
output y;
mux16 uut(in,sel,y);
initial 
begin
	$dumpfile("wave16.vcd");
	$dumpvars(0,test);
	$monitor($time,"in=%h,sel=%h,y=%b",in,sel,y);
	in=16'h3f0a;sel=4'h1;
	#5 sel=4'h0;
	#5 sel=4'h6;
	#3 sel=4'hc;

	#2$finish;
end
endmodule
