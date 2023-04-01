module counterN (output logic READY, input logic CLK);

  typedef enum int unsigned { S0 = 1, S1 = 2, S2 = 4, S3 = 8, S4 = 16} state_t; 
  state_t state; 
  state_t next_state; 

  logic count;
  logic N;

	case (state)

		S0:
			N = 2000000;
			next_state = S1;
		S1:
			N = 1950;
			next_state = S2;
		S2:
			N = 1850;
			next_state = S3;
		S3:
			N = 1850;
			next_state = S4;
		S4:
			N = 76500;
		default: next_state = S0;
	end

  always_ff @(posedge CLK) begin
	if (count == N) begin
		count <= 0;
		READY <= 1;
		state <= next_state;
	end
				
	else count <= count + 1;
end

endmodule