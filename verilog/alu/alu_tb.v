module test;
reg [15:0]x,y;
wire [15:0]z;
wire sign,zero,carry,par,over;
alu uut(x,y,z,sign,zero,carry,par,over);
initial 
begin
	$dumpfile("alu.vcd");
	$dumpvars(0,test);
	$monitor($time,"x=%h,y=%h,z=%h,sign=%b,zero=%b,carry=%b,par=%b,over=%b",x,y,z,sign,zero,carry,par,over);
	 x=16'h8fff;y=16'h8000;
	 #5 x=16'hffe5;y=16'h98cb;
	 #5 x=16'haaaa;y=16'h5555;

	 #10 $finish;
 end
 endmodule

