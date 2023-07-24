module hs(input a,b,output dif,bor);
wire w0,w1,w2;

nand n0(w0,a,b);
nand n1(w1,a,w0);
nand n2(w2,b,w0);
nand n3(dif,w1,w2);
nand n4(bor,w2,w2);
endmodule
