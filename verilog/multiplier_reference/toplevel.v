
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
//wire [15:0] out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10;
//wire [15:0] out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22;
bfloat16_mult test0(.clk(CLOCK_50), .a(a), .b(b), .out(LEDR[15:0]));
//wire [31:0] result_sig;
//bfloat16_mult test0(.clk(CLOCK_50), .a(a), .b(b), .out(out0));
//bfloat16_mult test1(.clk(CLOCK_50), .a(a), .b(b), .out(out1));
//bfloat16_mult test2(.clk(CLOCK_50), .a(a), .b(b), .out(out2));
//bfloat16_mult test3(.clk(CLOCK_50), .a(a), .b(b), .out(out3));
//bfloat16_mult test4(.clk(CLOCK_50), .a(a), .b(b), .out(out4));
//bfloat16_mult test5(.clk(CLOCK_50), .a(a), .b(b), .out(out5));
//bfloat16_mult test6(.clk(CLOCK_50), .a(a), .b(b), .out(out6));
//bfloat16_mult test7(.clk(CLOCK_50), .a(a), .b(b), .out(out7));
//bfloat16_mult test8(.clk(CLOCK_50), .a(a), .b(b), .out(out8));
//bfloat16_mult test9(.clk(CLOCK_50), .a(a), .b(b), .out(out9));
//bfloat16_mult test10(.clk(CLOCK_50), .a(a), .b(b), .out(out10));
//bfloat16_mult test11(.clk(CLOCK_50), .a(a), .b(b), .out(out11));
//bfloat16_mult test12(.clk(CLOCK_50), .a(a), .b(b), .out(out12));
//bfloat16_mult test13(.clk(CLOCK_50), .a(a), .b(b), .out(out13));
//bfloat16_mult test14(.clk(CLOCK_50), .a(a), .b(b), .out(out14));
//bfloat16_mult test15(.clk(CLOCK_50), .a(a), .b(b), .out(out15));
//bfloat16_mult test16(.clk(CLOCK_50), .a(a), .b(b), .out(out16));
//bfloat16_mult test17(.clk(CLOCK_50), .a(a), .b(b), .out(out17));
//bfloat16_mult test18(.clk(CLOCK_50), .a(a), .b(b), .out(out18));
//bfloat16_mult test19(.clk(CLOCK_50), .a(a), .b(b), .out(out19));
//bfloat16_mult test20(.clk(CLOCK_50), .a(a), .b(b), .out(out20));
//bfloat16_mult test21(.clk(CLOCK_50), .a(a), .b(b), .out(out21));
//bfloat16_mult test22(.clk(CLOCK_50), .a(a), .b(b), .out(out22));

//assign LEDR[15:0] = out0 & out1 & out2 & out3 & out4 & out5 & out6 & out7 & out8 & out9 & out10 &
//out11 & out12 & out13 & out14 & out15 & out16 & out17 & out18 & out19 & out20 & out21 & out22;
//Intel_mult	Intel_mult_inst (
//	.clock ( CLOCK_50 ),
//	.dataa ({a,16'b0000000000000000}),
//	.datab ({b,16'b0000000000000000}),
//	.result ( result_sig )
//	);
//assign LEDR[15:0] = result_sig[31:16];
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