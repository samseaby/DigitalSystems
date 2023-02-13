module counterN #(parameter N=8) (
	output logic [N-1:0] Y, 
	input  logic CLK, 
	input logic N_RESET, 
	input logic DIR);

logic [N-1:0] count;

//Connect output to internal register count
assign Y = count;

always_ff @(posedge CLK) begin
	if (N_RESET == 0) 
		count <= 0;
	case (DIR)
		0: count <= count - 1;
		1: count <= count + 1;
	endcase
end

endmodule


 