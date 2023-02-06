module rotateN_tb;

parameter N = 8;
logic [N-1:0] X,Y;
logic DIR;
int n;

rotateN #(.N(N)) u1(Y,X,DIR);

initial
begin

	X = 8'b10101100;
	$display("X = %d",X)
	$display("Rotate Right")
	DIR=1;

	for (n=0; n<8; n++)
	begin
		//Wait for Y to update
		#10ps;
		//Update X
		X = Y;
		$display("X = %b", X);
	end

	$display("ROTATE LEFT");
	$display("X = %b", X);
	DIR = 0;

	for (n=0; n<8; n++)
	begin
		//Wait for Y to update
		#10ps;
		//Update X
		X = Y;
		$display("X = %b", X);
	end

end