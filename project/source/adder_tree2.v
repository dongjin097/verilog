
`timescale 1ns /1ns

module adder_tree2(in, out);

input signed [2 * 16 - 1 : 0] in;
output signed [1 * 16 - 1 : 0] out;

assign out = in[16 * (2*0 + 1) +: 16] + in[16 * (2*0) +: 16];

endmodule