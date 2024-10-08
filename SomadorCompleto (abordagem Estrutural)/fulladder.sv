module fulladder (
	input a,
	input b,
	input cin,
	output s,
	output cout
);

	logic w1, w2, w3;
	xor u0 (w1, a, b);
	xor u1 (s, w1, cin);
	and u2 (w2, w1, cin);
	and u3 (w3, a, b);
	or u4 (cout, w2, w3);
	
endmodule