module mux(a,b,s,y);
input a,b,s;
output y;
wire t1,t2;
not g1(ss,s);
and g2(t1,a,ss);
and g3(t2,b,s);
or g4(y,t1,t2);
endmodule
