module fs(input a,b,cin,output D,B);
wire [6:0]w;


nand n0(w[0],a,b);
nand n1(w[1],a,w[0]);
nand n2(w[2],b,w[0]);
nand n3(w[3],w[1],w[2]);
nand n4(w[4],cin,w[3]);
nand n5(w[5],w[3],w[4]);
nand n6(w[6],cin,w[4]);
nand n7(D,w[5],w[6]);
nand n8(B,w[2],w[6]);
endmodule
