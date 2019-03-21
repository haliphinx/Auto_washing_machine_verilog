`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:10 09/16/2015
// Design Name:   text
// Module Name:   C:/Users/Administrator/Desktop/wash_text1/t1.v
// Project Name:  wash_text
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: text
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t1;

	// Inputs
	reg water;
	reg clk;
	reg power;
	reg mod;
	reg ss;

	// Outputs
	wire [6:0] C;
	wire [3:0] A;
	wire [5:0] Tt;
	wire [4:0] Tm;
	wire li;
	wire lo;
	wire lw;
	wire lr;
	wire vb4;
	wire p;
	wire s;
	wire ld;

	// Instantiate the Unit Under Test (UUT)
	text uut (
		.water(water), 
		.clk(clk), 
		.power(power), 
		.mod(mod), 
		.ss(ss), 
		.C(C), 
		.A(A), 
		.Tt(Tt), 
		.Tm(Tm), 
		.li(li), 
		.lo(lo), 
		.lw(lw), 
		.lr(lr), 
		.vb4(vb4), 
		.p(p), 
		.s(s), 
		.ld(ld)
	);

	always #1 clk=~clk;
	initial begin
		// Initialize Inputs
		water = 0;
		clk = 0;
		power = 0;
		mod = 0;
		ss = 0;

		// Wait 100 ns for global reset to finish
		#5;
		power=1;
		#2;
		power=0;
		#5;
		mod=1;
		#2;
		mod=0;
		#5;
		mod=1;
		#10;
		mod=0;
		#5;
		mod=1;
		#3;
		mod=0;
        
		// Add stimulus here

	end
      
endmodule

