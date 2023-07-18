module sr(s,r,q,qbar);
input s,r;
output q,qbar;

assign q=~(qbar&r);
assign qbar=~(q&s);
endmodule
