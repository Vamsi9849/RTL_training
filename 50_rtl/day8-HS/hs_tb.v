module test();
reg a,b,cin;
wire D,B;
reg clk;


fs dut(a,b,cin,D,B);

always #5 clk=~clk;

initial
begin
	$dumpfile("fs.vcd");
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
	
$display("a=%b,b=%b,cin=%b,D=%b,B=%b",a,b,cin,D,B);
	end
	endmodule
	
