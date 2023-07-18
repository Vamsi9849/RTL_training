module alu(x,y,z,sign,zero,carry,par,over);
input [15:0]x,y;
output [15:0]z;
output sign,zero,carry,par,over;

assign {carry,z}=x+y;

assign sign=z[15];
assign zero=~|z;
assign par=~^z;
assign over=(x[15]&y[15]& ~z[15])|(~x[15] & ~y[15]& z[15]);
endmodule
