module half(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule


module FA(input a,b,cin,output s,c);
wire t1,t2,t3;
half h1(a,b,t1,t2);
half h2(t1,cin,s,t3);
assign c=t3|t2;
endmodule
