module half_sub( a,b, D,B);
input a,b;
output D,B;
assign D=a^b;
assign B=(~a)&b;
endmodule


module full_sub(input a,b,c,output dif,bor);
wire w1,w2,w3;
half_sub m1(a,b,w1,w2);
half_sub m2(w1,c,dif,w3);
assign bor=w2|w3;
endmodule
