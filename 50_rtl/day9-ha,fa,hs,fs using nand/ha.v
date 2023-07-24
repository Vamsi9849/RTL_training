module ha(input a,b,output s,c);
wire w0,w1,w2;

nand n0(w0,a,b);
nand n1(w1,a,w0);
nand n2(w2,b,w0);
nand n3(s,w1,w2);
nand n4(c,w0,w0);
endmodule
