module mux2(in,s,y);
input [1:0]in;
input s;
output y;
assign y=in[s];
endmodule

module mux4(in,s,y);
input [3:0]in;
input [1:0]s;
output y;
wire [1:0]t;
mux2 m1(in[1:0],s[0],t[0]);
mux2 m2(in[3:2],s[0],t[1]);
mux2 m3(t,s[1],y);
endmodule

