module rom_tb;

parameter DATA_WIDTH = 8, ADDR_WIDTH = 3;
logic [(ADDR_WIDTH-1):0] addr;
logic [(DATA_WIDTH-1):0] q;

single_port_rom_async2 #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) u1(addr, q);

task check(logic [7:0] expected);
	#10;
	assert (q == expected)
		$display("Passed %d",q);
	else
		$error("Failed %d",q);
endtask


initial begin

addr = 7;
#10;
check(8'b10101010);

addr = 6;
#10;
check(8'b11110000);

addr = 5;
#10;
check(8'b00001111);

addr = 4;
#10;
check(8'b11001100);

addr = 3;
#10;
check(8'b11100111);

addr = 2;
#10;
check(8'b00011000);


addr = 1;
#10;
check(8'b10110111);

addr = 0;
#10;
check(8'b11101101);


end

endmodule
