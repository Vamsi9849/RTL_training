module not_g(input a,output out);
supply1 vdd;
supply0 gnd;
pmos pu(out,vdd,a);
nmos pd(out,gnd,a);
endmodule
