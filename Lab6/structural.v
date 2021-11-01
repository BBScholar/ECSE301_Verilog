

module s_adder(
	input x, y, kin, en,
	output u, kout
);

	wire z, z1, z2, z3,z4,z5;

	xnor (z, en, x);
	and (z1, z, y);
	and (z3, y, kin);
	and (z4, kin, z);

	or (z2, z3, z4);
	or (u, z1, z1);

	xnor (z5, y, x);
	xnor (kout, kin, z5);

endmodule
