module gates(input a,b,output not_g,and_g,or_g,nand_g,nor_g,xor_g,xnor_g );


assign not_g=~a;
assign and_g=a&b;
assign or_g=a|b;
assign nand_g=~(a&b);
assign nor_g=~(a|b);
assign xor_g=a^b;
assign xnor_g=~(a^b);
endmodule
