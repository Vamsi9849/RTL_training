module adder4(a, b, cin, s, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] s;
  output cout;

  wire [3:0] bb;
  assign bb = cin ? (~b[3:0] + 1) : b[3:0];

  assign {cout, s} = a + bb + cin;
endmodule


module adder16(a, b, s, cout, cin);
  input [15:0] a, b;
  input cin;
  output [15:0] s;
  output cout;

  wire [3:1] c;
  wire [15:0] bb;

  assign bb = cin ? (~b + 1) : b;

  adder4 c0(a[3:0], bb[3:0], cin, s[3:0], c[1]);
  adder4 c1(a[7:4], bb[7:4], c[1], s[7:4], c[2]);
  adder4 c2(a[11:8], bb[11:8], c[2], s[11:8], c[3]);
  adder4 c3(a[15:12], bb[15:12], c[3], s[15:12], cout);
endmodule

