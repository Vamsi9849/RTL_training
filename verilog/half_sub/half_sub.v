module half_sub( a,b, D,B);
input a,b;
output D,B;
assign D=a^b;
assign B=(~a)&b;
endmodule
