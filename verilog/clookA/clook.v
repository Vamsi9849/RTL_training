module look(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire p0,p1,p2,p3,g0,g1,g2,g3;
wire c1,c2,c3;

assign p0=a[0]^b[0],p1=a[1]^b[1],p2=a[2]^b[2],p3=a[3]^b[3];
assign g0=a[0]&b[0],g1=a[1]&b[1],g2=a[2]&b[2],g3=a[3]&b[3];

assign c1=g0|(cin&p0),
c2=g1|(g0&p1)|(cin&p0&p1),
c3=g2|(g1&p2)|(g0&p1&p2)|(cin&p0&p1&p2),
cout=g3|(g2&p3)|(g1&p2&p3)|(g0&p1&p2&p3)|(cin&p0&p1&p2&p3);

assign s0=p0^cin,s1=p1^c1,s2=p2^c2,s3=p3^c3;
endmodule
