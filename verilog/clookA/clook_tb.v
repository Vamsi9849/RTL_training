module test;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;

look dut(.a(a),.b(b),.s(s),.cout(cout),.cin(cin));
initial
begin
	$dumpfile("looka.vcd");
	$dumpvars(0,test);
	$monitor($time,"a=%b,b=%b,s=%b,cout=%b,cin=%b",a,b,s,cout,cin);
	a=14'b1011;b=4'b1000;cin=0;
	#5a=4'b1100;b=4'b1011;cin=1;

	#10$finish;
end
endmodule
