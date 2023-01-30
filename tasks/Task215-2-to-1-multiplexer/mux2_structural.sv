module mux2_structural (output logic y, input logic a, b, s);

wire u1,u2,not_s;

not m0(not_s,s);
and m1(u1,not_s,a);
and m2(u2,s,b);
or res(y,u1,u2);

endmodule