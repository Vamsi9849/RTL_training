module nand_g(a,b,out);
input a,b;
output out;

wire temp;

supply1 vdd;
supply0 gnd;

pmos s1(out,vdd,a);
pmos s2(out,vdd,b);


nmos s1(out,temp,a);
nmos s2(temp,gnd,b);
endmodule
