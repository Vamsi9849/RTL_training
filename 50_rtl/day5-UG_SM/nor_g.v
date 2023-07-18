module nor_g(a,b,out);
input a,b;
output out;

supply1 vdd;
supply0 gnd;

wire temp;

pmos s1(temp,vdd,a);
pmos s2(out,temp,b);

nmos s1(out,gnd,a);
nmos s2(out,gnd,b);

endmodule
