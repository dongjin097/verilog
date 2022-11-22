`timescale 1ns/1ps


module tb_shift_mul;


reg [3:0] in;
reg [8:0] h;
wire [12:0] acc_buf;

shift_mul TEST(in, h, acc_buf);


initial begin

#50 in = 4'b1001; h = 9'b000000001;

#50 in = 4'b1010; h = 9'b000000100;

#50 in = 4'b1010; h = 9'b000000000;

#50 in = 4'b1110; h = 9'b100000110;

#50 in = 4'b0010; h = 9'b100000001;

#50 in = 4'b0110; h = 9'b000001001;


end
endmodule