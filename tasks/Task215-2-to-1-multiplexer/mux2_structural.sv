module mux2_structural (output logic y, input logic a, b, s);

wire u1,u2,not_s;



assign y = () ? a : b;

endmodule