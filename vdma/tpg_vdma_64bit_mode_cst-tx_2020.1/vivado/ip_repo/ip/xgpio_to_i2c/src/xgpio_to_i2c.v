module xgpio_to_i2c
(
	input     upstream_scl_T,
	input     upstream_scl_I,
	output    upstream_scl_O,
	input     upstream_sda_T,
	input     upstream_sda_I,
	output    upstream_sda_O,
	
	output    downstream_scl_T,
	input     downstream_scl_I,
	output    downstream_scl_O,
	output    downstream_sda_T,
	input     downstream_sda_I,
	output    downstream_sda_O
);
assign downstream_scl_T = upstream_scl_T;
assign downstream_scl_O = upstream_scl_I; 
assign downstream_sda_T = upstream_sda_T;
assign downstream_sda_O = upstream_sda_I;
assign upstream_scl_O = downstream_scl_I;
assign upstream_sda_O = downstream_sda_I;

endmodule
