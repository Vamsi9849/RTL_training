module test();
reg s,r;
wire q,qbar;
sr dut(s,r,q,qbar);

initial
begin
	$dumpfile("sr.vcd");
	$dumpvars(0,test);
	$monitor($time,"s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);

	s=0;r=1;
	#5 s=1;r=1;
	#5 s=1;r=0;
	#5 s=1;r=1;
	#5 s=0;r=0;
	#5 s=1;r=1;
	#5 $finish;
end
endmodule
