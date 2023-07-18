module test;
  reg [15:0] a, b;
  reg cin;
  wire [15:0] s;
  wire cout;

  adder16 dut (.a(a), .b(b), .s(s), .cout(cout), .cin(cin));

  initial
  begin
    $dumpfile("addsub.vcd");
    $dumpvars(0, test);
    $monitor($time, "a=%h, b=%h, s=%h, cout=%b, cin=%b", a, b, s, cout, cin);

    a = 16'hffff;
    b = 16'h0c45;
    cin = 0;
    #5;

    a = 16'hfc43;
    b = 16'h0983;
    cin = 1;
    #10;

    $finish;
  end
endmodule

