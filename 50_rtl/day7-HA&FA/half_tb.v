module test();
reg a,b;
wire sum,carry;

halfadder dut(a,b,sum,carry);

initial 
begin
$dumpfile("half.vcd");
$dumpvars(0,test);
$monitor($time,"a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);



	a=1'b0;b=1'b0;
	#5 a=1'b0;b=1'b1;
	#5 a=1'b1;b=1'b0;
	#5 b=1'b1;
	#5 $finish;
	end
	endmodule
