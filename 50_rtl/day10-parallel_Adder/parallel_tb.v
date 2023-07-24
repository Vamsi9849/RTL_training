module test();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;

pa dut(a,b,cin,s,cout);

always begin
a=$random;
b=$random;
cin=$random;
#10;
end

initial begin
$dumpfile("pa.vcd");
$dumpvars(0,test);
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);
#60$finish;
end
endmodule
