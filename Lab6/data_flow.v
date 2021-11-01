

module d_adder(
	input x, y, kin, en,
	output u, kout
);

	wire z;
	
	assign u = x ^ y ^ kin;

	assign z = (x & en) | (~x & ~en);
	assign kout = (z & y) | (y & kin) | (z & kin);

endmodule
