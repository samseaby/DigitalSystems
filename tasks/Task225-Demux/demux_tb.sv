module demux_tb;

logic[7:0] Y;
logic D;
logic[2:0] SEL;
int n;

demux u1 (Y, D, SEL);

logic[7:0] YY;
logic DD;
logic[2:0] SEL2;

demux u2 (.D(DD), .SEL(SEL2), .Y(YY));

initial
begin

  for (n=0; n<8; n++)
  begin
    SEL = n;
    D = 1;
    #10ps;
    assert (Y ==(1<<n))
	$display("Passed test %d. Y = %b", n, Y);
    else
	$error("Fail for n = %d", n);
  end

end

endmodule