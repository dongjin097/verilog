
`timescale 1ns/1ns

module mag2com(com, mag);

input [13:0] com;
output [3:0] mag;

if com
assign com = {~[3], mag[2:0]};

endmodule