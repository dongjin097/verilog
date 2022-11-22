`timescale 1ns/1ns


module ff_16x2b(in, out, clk, en_n, rst_n, clr);

input clk, en_n, rst_n, clr;
input [16 * 2 - 1:0] in;
output reg [16 * 2 - 1:0] out;


always @(posedge clk or negedge rst_n)
begin
    if (~rst_n)
    begin
        out <= 0;
    end
    else if (clr)
    begin
        out <= 0;
    end
    else if (~en_n)
    begin
        out <= in;
    end
end
endmodule