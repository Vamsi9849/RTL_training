module test();
reg a,b,cin;
wire sum,carry;
reg clk;


fulladder dut(a,b,cin,sum,carry);

always #5 clk=~clk;

initial
begin
	$dumpfile("full.vcd");
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
	
$display("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
	end
	endmodule
	
