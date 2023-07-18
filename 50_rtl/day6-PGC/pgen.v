module parityG(input wire [7:0]a,output wire even_PG);

assign even_PG=^a;
endmodule
