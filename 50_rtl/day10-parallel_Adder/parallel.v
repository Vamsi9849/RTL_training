module fa(input a,b,cin,output sum,carry);
assign sum=a^b^cin;
assign carry=(a&b)|(a^b)&cin;
endmodule


module pa(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:1]c;

fa c0(a[0],b[0],cin,s[0],c[1]);
fa c1(a[1],b[1],c[1],s[1],c[2]);
fa c2(a[2],b[2],c[2],s[2],c[3]);
fa c3(a[3],b[3],c[3],s[3],cout);
endmodule
