
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module toplevel(

	//////////// CLOCK //////////
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,

	//////////// LED //////////
	LEDG,
	LEDR,

	//////////// KEY //////////
	KEY,

	//////////// SW //////////
	SW,

	//////////// SEG7 //////////
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;
input 		          		CLOCK2_50;
input 		          		CLOCK3_50;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input 		     [3:0]		KEY;

//////////// SW //////////
input 		    [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//=======================================================
//  REG/WIRE declarations
//=======================================================
assign HEX7 = 7'b1111111;
assign HEX6 = 7'b1111111;
assign HEX5 = 7'b1111111;
assign HEX4 = ~7'b0111110;
assign HEX3 = ~7'b0000110;
assign HEX2 = ~7'b1101101;
assign HEX1 = ~7'b0000110;
assign HEX0 = ~7'b0111111;
reg [15:0] a,b;

bfloat16_adder test0(.clk(CLOCK_50), .a(a), .b(b), .out(LEDR[15:0]));

always @(posedge CLOCK_50) begin
	if(SW[17:16] == 2'b01) begin
		a <= SW[15:0];
	end
	if(SW[17:16] == 2'b10) begin
		b <= SW[15:0];
	end
end

//=======================================================
//  Structural coding
//=======================================================

endmodule