module gates(input a,b,output not_g,and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
not g1(not_g,a);
and g2(and_g,a,b);
or g3(or_g,a,b);
nand g4(nand_g,a,b);
nor g5(nor_g,a,b);
xor g6(xor_g,a,b);
xnor g7(xnor_g,a,b);
endmodule
