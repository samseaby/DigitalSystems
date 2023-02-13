module parallel_to_serial #(parameter N=8) (output logic SOUT, input logic CLK, EN, SHIFT, N_RESET, logic [N-1:0] DATAW)

assign SOUT = DATAW[0];

logic [N-1:0] sr;
assign SOUT = sr[0];

always_ff @(posedge CLK, negedge N_RESET) begin

	if (N_RESET == 0)
		begin
	end
	
	else begin
		if (EN == 1) begin
			case (SHIFT)
			0: sr <= DATAW;
			1: sr <= {1'b0, DATAW[N-1:1]};
			endcase
		end
		
	end

end


endmodule 