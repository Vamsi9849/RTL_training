module pchecker(input [7:0]a,
         input wire parity_in,
	output error);

assign error=^({parity_in,a});
endmodule
