module gates(input a,b,
             output reg not_g,output reg and_g,output reg or_g,output reg nand_g,output reg nor_g,output reg xor_g,output reg xnor_g);

     always@(*)
     begin
	     not_g=~a;
	     and_g=a&b;
	     or_g=a|b;
	     nand_g=~(a&b);
	     nor_g=~(a|b);
	     xor_g=a^b;
	     xnor_g=~(a^b);
     end
     endmodule
