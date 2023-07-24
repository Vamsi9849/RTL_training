module test();
reg a,b,cin;
wire sum,carry;
reg clk;


FA dut(a,b,cin,s,c);

always #5 clk=~clk;

initial
begin
	$dumpfile("FULL.vcd");
	$dumpvars(0,test);
	clk=0;

	a=0;b=0;cin=0;
	#10;
	a=0;b=0;cin=1;
	#10;
	a=0;b=1;cin=0;
	#10;
	a=0;b=1;cin=1;
	#10;
	a=1;b=0;cin=0;
	#10;
	a=1;b=0;cin=1;
	#10;
	a=1;b=1;cin=0;
	#10;
	a=1;b=1;cin=1;
	#10;
	$finish;
	end
	
	
	always@(posedge clk)
	begin
	
$display("a=%b,b=%b,cin=%b,s=%b,c=%b",a,b,cin,s,c);
	end
	endmodule
	
