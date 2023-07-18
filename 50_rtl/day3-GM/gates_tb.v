module test();
reg a,b; 
wire not_g,and_g,or_g,nand_g,nor_g,xor_g,xnor_g;
gates dut(a,b,not_g,and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
initial
begin
$dumpfile("gate.vcd");
$dumpvars(0,test);
$monitor($time,"a=%b,b=%b,not_g=%b,and_g=%b,or_g=%b,nand_g=%b,nor_g=%b,xor_g=%b,xnor_g=%b",a,b,not_g,and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
 a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;

#10$finish;
end
endmodule


