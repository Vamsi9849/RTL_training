module mux0(in,sel,y);
input [3:0]in;
input [1:0]sel;
output y;

assign y=in[sel];
endmodule







module mux16(in,sel,y);
input [15:0]in;input [3:0]sel;
output y;
wire [3:0]t;
mux0 m0(in[3:0],sel[1:0],t[0]);
mux0 m1(in[7:4],sel[1:0],t[1]);
mux0 m2(in[11:8],sel[1:0],t[2]);

mux0 m3(in[15:12],sel[1:0],t[3]);



mux0 m4(t,sel[3:2],y);
endmodule



