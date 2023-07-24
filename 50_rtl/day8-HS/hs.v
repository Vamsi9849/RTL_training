module hs(input a,b,output d,B);
assign d=a^b;
assign B=(~a)&b;
endmodule




module fs(input a,b,cin,output D,B);

wire t1,t2,t3;
hs c1(a,b,t1,t2);
hs c2(t1,cin,D,t3);
assign B=t3|t2;
endmodule
