
`timescale 1ns/1ns

module mag2com(mag, com, clk, clr);

input [3:0] mag;
input clk, clr;
output reg [3:0] com;

always @(posedge clk) begin

    if(clr) begin
        com <= 4'b0;
    end
    else begin
        com <= {~mag[3], mag[2:0]};
    end
end
endmodule