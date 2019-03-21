`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:52:39 09/15/2015
// Design Name:   wash_mod
// Module Name:   F:/wash_text/t2.v
// Project Name:  wash_text
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wash_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t2;

	// Inputs
	reg mod;
	reg ts;
	reg s;
	reg p;
	reg [5:0] Tt1;
	reg [2:0] mod1;

	// Outputs
	wire [5:0] Tt;
	wire [4:0] Tm;
	wire li;
	wire lo;
	wire lw;
	wire lr;
	wire ld;
	wire [3:0] tp;

	// Instantiate the Unit Under Test (UUT)
	wash_mod uut (
		.mod(mod), 
		.ts(ts), 
		.s(s), 
		.p(p), 
		.Tt1(Tt1), 
		.mod1(mod1), 
		.Tt(Tt), 
		.Tm(Tm), 
		.li(li), 
		.lo(lo), 
		.lw(lw), 
		.lr(lr), 
		.ld(ld), 
		.tp(tp)
	);

	always #1 ts=~ts;
	initial begin
		// Initialize Inputs
		mod = 0;
		ts = 0;
		s = 0;
		p = 0;
		Tt1 = 21;
		mod1 = 4;

		// Wait 100 ns for global reset to finish
		#5;
		p=1;
		#2;
		mod=1;
		#2;
		mod=0;
		#2;
		s=1;
		#5;
		s=0;
		#5;
		Tt1=33;
		mod1=0;
		#2;
		mod=1;
		#2;
		mod=0;
		#5;
		s=1;
        
		// Add stimulus here

	end
      
endmodule

