
`timescale 1ns /1ns

module adder_tree4(in, out);

input signed [4 * 16 - 1 : 0] in;
output signed [2 * 16 - 1 : 0] out;

genvar i;
generate
    for ( i = 0; i < 2 ; i = i + 1) begin
        assign out[16 * i +: 16] = in[16 * (2*i + 1) +: 16] + in[16 * (2*i) +: 16];
    end
endgenerate
endmodule