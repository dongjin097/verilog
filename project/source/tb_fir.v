`timescale 1ns/1ns

module tb_fir;

integer i;


reg [3:0] i_mag;
reg clk, rst_n, en_n, clr;
wire signed [15:0] out;

wire signed [3:0] i_mul_0;
wire signed [3:0] i_mul_1;
wire signed [3:0] i_mul_2;
wire signed [3:0] i_mul_3;
wire signed [3:0] i_mul_4;
wire signed [3:0] i_mul_5;
wire signed [3:0] i_mul_6;
wire signed [3:0] i_mul_7;
wire signed [3:0] i_mul_8;
wire signed [3:0] i_mul_9;
wire signed [3:0] i_mul_10;
wire signed [3:0] i_mul_11;
wire signed [3:0] i_mul_12;
wire signed [3:0] i_mul_13;
wire signed [3:0] i_mul_14;
wire signed [3:0] i_mul_15;
wire signed [3:0] i_mul_16;
wire signed [3:0] i_mul_17;
wire signed [3:0] i_mul_18;
wire signed [3:0] i_mul_19;
wire signed [3:0] i_mul_20;
wire signed [3:0] i_mul_21;
wire signed [3:0] i_mul_22;
wire signed [3:0] i_mul_23;
wire signed [3:0] i_mul_24;
wire signed [3:0] i_mul_25;
wire signed [3:0] i_mul_26;

reg signed [15:0] golden_value;
reg signed [8:0] h_buf_0  = 9'b000000001;
reg signed [8:0] h_buf_1  = 9'b000000100;
reg signed [8:0] h_buf_2  = 9'b000000000;
reg signed [8:0] h_buf_3  = 9'b000000110;
reg signed [8:0] h_buf_4  = 9'b000000001;
reg signed [8:0] h_buf_5  = 9'b000001000;
reg signed [8:0] h_buf_6  = 9'b000000100;
reg signed [8:0] h_buf_7  = 9'b000001001;
reg signed [8:0] h_buf_8  = 9'b000001010;
reg signed [8:0] h_buf_9  = 9'b000001011;
reg signed [8:0] h_buf_10 = 9'b000010111;
reg signed [8:0] h_buf_11 = 9'b000001100;
reg signed [8:0] h_buf_12 = 9'b001001111;
reg signed [8:0] h_buf_13 = 9'b010001100;
reg signed [8:0] h_buf_26 = 9'b000000001;
reg signed [8:0] h_buf_25 = 9'b000000100;
reg signed [8:0] h_buf_24 = 9'b000000000;
reg signed [8:0] h_buf_23 = 9'b000000110;
reg signed [8:0] h_buf_22 = 9'b000000001;
reg signed [8:0] h_buf_21 = 9'b000001000;
reg signed [8:0] h_buf_20 = 9'b000000100;
reg signed [8:0] h_buf_19 = 9'b000001001;
reg signed [8:0] h_buf_18 = 9'b000001010;
reg signed [8:0] h_buf_17 = 9'b000001011;
reg signed [8:0] h_buf_16 = 9'b000010111;
reg signed [8:0] h_buf_15 = 9'b000001100;
reg signed [8:0] h_buf_14 = 9'b001001111;


fir TEST (.i_mag(i_mag), .out(out), .clk(clk), .rst_n(rst_n), .en_n(en_n), .clr(clr)
, .i_mul_0(i_mul_0)
, .i_mul_1(i_mul_1)
, .i_mul_2(i_mul_2)
, .i_mul_3(i_mul_3)
, .i_mul_4(i_mul_4)
, .i_mul_5(i_mul_5)
, .i_mul_6(i_mul_6)
, .i_mul_7(i_mul_7)
, .i_mul_8(i_mul_8)
, .i_mul_9(i_mul_9)
, .i_mul_10(i_mul_10)
, .i_mul_11(i_mul_11)
, .i_mul_12(i_mul_12)
, .i_mul_13(i_mul_13)
, .i_mul_14(i_mul_14)
, .i_mul_15(i_mul_15)
, .i_mul_16(i_mul_16)
, .i_mul_17(i_mul_17)
, .i_mul_18(i_mul_18)
, .i_mul_19(i_mul_19)
, .i_mul_20(i_mul_20)
, .i_mul_21(i_mul_21)
, .i_mul_22(i_mul_22)
, .i_mul_23(i_mul_23)
, .i_mul_24(i_mul_24)
, .i_mul_25(i_mul_25)
, .i_mul_26(i_mul_26)
, .h_buf_0 (h_buf_0 )
, .h_buf_1 (h_buf_1 )
, .h_buf_2 (h_buf_2 )
, .h_buf_3 (h_buf_3 )
, .h_buf_4 (h_buf_4 )
, .h_buf_5 (h_buf_5 )
, .h_buf_6 (h_buf_6 )
, .h_buf_7 (h_buf_7 )
, .h_buf_8 (h_buf_8 )
, .h_buf_9 (h_buf_9 )
, .h_buf_10(h_buf_10)
, .h_buf_11(h_buf_11)
, .h_buf_12(h_buf_12)
, .h_buf_13(h_buf_13)
, .h_buf_26(h_buf_26)
, .h_buf_25(h_buf_25)
, .h_buf_24(h_buf_24)
, .h_buf_23(h_buf_23)
, .h_buf_22(h_buf_22)
, .h_buf_21(h_buf_21)
, .h_buf_20(h_buf_20)
, .h_buf_19(h_buf_19)
, .h_buf_18(h_buf_18)
, .h_buf_17(h_buf_17)
, .h_buf_16(h_buf_16)
, .h_buf_15(h_buf_15)
, .h_buf_14(h_buf_14)


);


always begin
    #5 clk = ~clk;
end

initial begin

    $display("Initial value [%d]", $time);
        rst_n       <= 0;
        en_n        <= 1;
        clk         <= 0;
        i_mag       <= 4'b1001;

    #100

    @(posedge clk); 
    $display("clear [%d]", $time);
    @(negedge clk);
    rst_n   <= 1;
    en_n    <= 0;
    clr     <= 1;
    
    @(negedge clk);
    $display("clear complete [%d]\n output ([%b])[%d]"
    ,$time
    ,out
    ,out
    );
    @(negedge clk);

    clr     <= 0;
    i_mag   <= 4'b0000;

    for(i = 0; i < 16 ; i = i + 1) begin
        @(negedge clk);
        i_mag <= i_mag + 4'b0001;
    end
    

#1000
$display("Finish! [%d]", $time);
$finish;

end

always @(posedge clk) begin


    if(~rst_n) begin
        golden_value <= 0;
    end

    else if(clr) begin
        golden_value <= 0;
    end

    else if(~en_n) begin
        
        golden_value <= i_mul_0 * h_buf_0 +
        i_mul_1 * h_buf_1 +
        i_mul_2 * h_buf_2 +
        i_mul_3 * h_buf_3 +
        i_mul_4 * h_buf_4 +
        i_mul_5 * h_buf_5 +
        i_mul_6 * h_buf_6 +
        i_mul_7 * h_buf_7 +
        i_mul_8 * h_buf_8 +
        i_mul_9 * h_buf_9 +
        i_mul_10 * h_buf_10 +
        i_mul_11 * h_buf_11 +
        i_mul_12 * h_buf_12+
        i_mul_13 * h_buf_13+
        i_mul_14 * h_buf_14+
        i_mul_15 * h_buf_15+
        i_mul_16 * h_buf_16+
        i_mul_17 * h_buf_17+
        i_mul_18 * h_buf_18 +
        i_mul_19 * h_buf_19 +
        i_mul_20 * h_buf_20 +
        i_mul_21 * h_buf_21 +
        i_mul_22 * h_buf_22 +
        i_mul_23 * h_buf_23 +
        i_mul_24 * h_buf_24 +
        i_mul_25 * h_buf_25 +
        i_mul_26 * h_buf_26;

    end
                
    $display("[%d]\n verilog_out = [%b]/[%d]\ngolden_value = [%b]/[%d]\no_ff_1",
    $time
    ,out
    ,out
    ,golden_value
    ,golden_value);
               


end


endmodule