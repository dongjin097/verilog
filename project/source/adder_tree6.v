
`timescale 1ns /1ns

module adder_tree6(in, out);

input signed [6 * 16 - 1 : 0] in;
output signed [3 * 16 - 1 : 0] out;

genvar i;
generate
    for ( i = 0; i < 3 ; i = i + 1) begin
        assign out[16 * i +: 16] = in[16 * (2*i + 1) +: 16] + in[16 * (2*i) +: 16];
    end
endgenerate
endmodule