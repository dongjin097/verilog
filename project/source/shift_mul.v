`timescale 1ns/1ns


module shift_mul(in, h, acc_buf);

input signed [3:0] in;
input signed [8:0] h;
output reg signed [15:0] acc_buf;


reg [15:0] in_buf;
reg [8:0] h_buf;

always @(in, h)
begin
    acc_buf = 16'b0;
    in_buf = 16'b0;
    in_buf [3:0] = in[3:0];
    h_buf [8:0] = h[8:0];

    if (in_buf[3] == 1'b1)
    begin
        in_buf[15:4] = 12'b111111111111; 
    end

    if (h_buf[0] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[1] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[2] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[3] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[4] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end
    
    in_buf = in_buf << 1;

    if (h_buf[5] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[6] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[7] == 1'b1)
    begin
        acc_buf = acc_buf + in_buf;
    end

    in_buf = in_buf << 1;

    if (h_buf[8] == 1'b1)
    begin
        acc_buf = acc_buf - in_buf;
    end

end

endmodule