`timescale 1ns / 1ns


module fir1(i_mag, out, clk, rst_n, en_n, clr
,i_mul_0
,i_mul_1
,i_mul_2
,i_mul_3
,i_mul_4
,i_mul_5
,i_mul_6
,i_mul_7
,i_mul_8
,i_mul_9
,i_mul_10
,i_mul_11
,i_mul_12
,i_mul_13
,i_mul_14
,i_mul_15
,i_mul_16
,i_mul_17
,i_mul_18
,i_mul_19
,i_mul_20
,i_mul_21
,i_mul_22
,i_mul_23
,i_mul_24
,i_mul_25
,i_mul_26
,h_buf_0  
,h_buf_1  
,h_buf_2  
,h_buf_3  
,h_buf_4  
,h_buf_5  
,h_buf_6  
,h_buf_7  
,h_buf_8  
,h_buf_9  
,h_buf_10 
,h_buf_11 
,h_buf_12 
,h_buf_13 
,h_buf_26 
,h_buf_25 
,h_buf_24 
,h_buf_23 
,h_buf_22 
,h_buf_21 
,h_buf_20 
,h_buf_19 
,h_buf_18 
,h_buf_17 
,h_buf_16 
,h_buf_15 
,h_buf_14 

);


input [3:0] i_mag;
input clk, rst_n, en_n, clr;
output reg signed [15:0] out;

wire signed [15:0] o_mul_0;
wire signed [15:0] o_mul_1;
wire signed [15:0] o_mul_2;
wire signed [15:0] o_mul_3;
wire signed [15:0] o_mul_4;
wire signed [15:0] o_mul_5;
wire signed [15:0] o_mul_6;
wire signed [15:0] o_mul_7;
wire signed [15:0] o_mul_8;
wire signed [15:0] o_mul_9;
wire signed [15:0] o_mul_10;
wire signed [15:0] o_mul_11;
wire signed [15:0] o_mul_12;
wire signed [15:0] o_mul_13;
wire signed [15:0] o_mul_14;
wire signed [15:0] o_mul_15;
wire signed [15:0] o_mul_16;
wire signed [15:0] o_mul_17;
wire signed [15:0] o_mul_18;
wire signed [15:0] o_mul_19;
wire signed [15:0] o_mul_20;
wire signed [15:0] o_mul_21;
wire signed [15:0] o_mul_22;
wire signed [15:0] o_mul_23;
wire signed [15:0] o_mul_24;
wire signed [15:0] o_mul_25;
wire signed [15:0] o_mul_26;

wire signed [26 * 16 - 1 : 0] i_adder_tree26;
wire signed [14 * 16 - 1 : 0] i_adder_tree14;
wire signed [6 * 16 - 1 : 0] i_adder_tree6;
wire signed [4 * 16 - 1 : 0] i_adder_tree4;
wire signed [2 * 16 - 1 : 0] i_adder_tree2;


wire signed [13 * 16 - 1 : 0] o_adder_tree26;
wire signed [7 * 16 - 1 : 0] o_adder_tree14;
wire signed [3 * 16 - 1 : 0] o_adder_tree6;
wire signed [2 * 16 - 1 : 0] o_adder_tree4;
wire signed [1 * 16 - 1 : 0] o_adder_tree2;






output signed [3:0] i_mul_0;
output signed [3:0] i_mul_1;
output signed [3:0] i_mul_2;
output signed [3:0] i_mul_3;
output signed [3:0] i_mul_4;
output signed [3:0] i_mul_5;
output signed [3:0] i_mul_6;
output signed [3:0] i_mul_7;
output signed [3:0] i_mul_8;
output signed [3:0] i_mul_9;
output signed [3:0] i_mul_10;
output signed [3:0] i_mul_11;
output signed [3:0] i_mul_12;
output signed [3:0] i_mul_13;
output signed [3:0] i_mul_14;
output signed [3:0] i_mul_15;
output signed [3:0] i_mul_16;
output signed [3:0] i_mul_17;
output signed [3:0] i_mul_18;
output signed [3:0] i_mul_19;
output signed [3:0] i_mul_20;
output signed [3:0] i_mul_21;
output signed [3:0] i_mul_22;
output signed [3:0] i_mul_23;
output signed [3:0] i_mul_24;
output signed [3:0] i_mul_25;
output signed [3:0] i_mul_26;


input signed [8:0] h_buf_0;
input signed [8:0] h_buf_1;
input signed [8:0] h_buf_2;
input signed [8:0] h_buf_3;
input signed [8:0] h_buf_4;
input signed [8:0] h_buf_5;
input signed [8:0] h_buf_6;
input signed [8:0] h_buf_7;
input signed [8:0] h_buf_8;
input signed [8:0] h_buf_9;
input signed [8:0] h_buf_10;
input signed [8:0] h_buf_11;
input signed [8:0] h_buf_12;
input signed [8:0] h_buf_13;
input signed [8:0] h_buf_26;
input signed [8:0] h_buf_25;
input signed [8:0] h_buf_24;
input signed [8:0] h_buf_23;
input signed [8:0] h_buf_22;
input signed [8:0] h_buf_21;
input signed [8:0] h_buf_20;
input signed [8:0] h_buf_19;
input signed [8:0] h_buf_18;
input signed [8:0] h_buf_17;
input signed [8:0] h_buf_16;
input signed [8:0] h_buf_15;
input signed [8:0] h_buf_14;





mag2com mag2com_1 (.mag(i_mag), .com(i_mul_0), .clk(clk), .clr(clr));

ff_4b ff_4b_0 (.in(i_mul_0), .out(i_mul_1), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_1 (.in(i_mul_1), .out(i_mul_2), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_2 (.in(i_mul_2), .out(i_mul_3), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_3 (.in(i_mul_3), .out(i_mul_4), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_4 (.in(i_mul_4), .out(i_mul_5), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_5 (.in(i_mul_5), .out(i_mul_6), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_6 (.in(i_mul_6), .out(i_mul_7), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_7 (.in(i_mul_7), .out(i_mul_8), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_8 (.in(i_mul_8), .out(i_mul_9), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_9 (.in(i_mul_9), .out(i_mul_10), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_10 (.in(i_mul_10), .out(i_mul_11), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_11 (.in(i_mul_11), .out(i_mul_12), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_12 (.in(i_mul_12), .out(i_mul_13), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_13 (.in(i_mul_13), .out(i_mul_14), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_14 (.in(i_mul_14), .out(i_mul_15), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_15 (.in(i_mul_15), .out(i_mul_16), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_16 (.in(i_mul_16), .out(i_mul_17), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_17 (.in(i_mul_17), .out(i_mul_18), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_18 (.in(i_mul_18), .out(i_mul_19), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_19 (.in(i_mul_19), .out(i_mul_20), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_20 (.in(i_mul_20), .out(i_mul_21), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_21 (.in(i_mul_21), .out(i_mul_22), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_22 (.in(i_mul_22), .out(i_mul_23), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_23 (.in(i_mul_23), .out(i_mul_24), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_24 (.in(i_mul_24), .out(i_mul_25), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));
ff_4b ff_4b_25 (.in(i_mul_25), .out(i_mul_26), .clk(clk), .en_n(en_n), .rst_n(rst_n), .clr(clr));



shift_mul shift_mul_0 (.in(i_mul_0), .h(h_buf_0), .acc_buf(o_mul_0));
shift_mul shift_mul_1 (.in(i_mul_1), .h(h_buf_1), .acc_buf(o_mul_1));
shift_mul shift_mul_2 (.in(i_mul_2), .h(h_buf_2), .acc_buf(o_mul_2));
shift_mul shift_mul_3 (.in(i_mul_3), .h(h_buf_3), .acc_buf(o_mul_3));
shift_mul shift_mul_4 (.in(i_mul_4), .h(h_buf_4), .acc_buf(o_mul_4));
shift_mul shift_mul_5 (.in(i_mul_5), .h(h_buf_5), .acc_buf(o_mul_5));
shift_mul shift_mul_6 (.in(i_mul_6), .h(h_buf_6), .acc_buf(o_mul_6));
shift_mul shift_mul_7 (.in(i_mul_7), .h(h_buf_7), .acc_buf(o_mul_7));
shift_mul shift_mul_8 (.in(i_mul_8), .h(h_buf_8), .acc_buf(o_mul_8));
shift_mul shift_mul_9 (.in(i_mul_9), .h(h_buf_9), .acc_buf(o_mul_9));
shift_mul shift_mul_10 (.in(i_mul_10), .h(h_buf_10), .acc_buf(o_mul_10));
shift_mul shift_mul_11 (.in(i_mul_11), .h(h_buf_11), .acc_buf(o_mul_11));
shift_mul shift_mul_12 (.in(i_mul_12), .h(h_buf_12), .acc_buf(o_mul_12));
shift_mul shift_mul_13 (.in(i_mul_13), .h(h_buf_13), .acc_buf(o_mul_13));
shift_mul shift_mul_14 (.in(i_mul_14), .h(h_buf_14), .acc_buf(o_mul_14));
shift_mul shift_mul_15 (.in(i_mul_15), .h(h_buf_15), .acc_buf(o_mul_15));
shift_mul shift_mul_16 (.in(i_mul_16), .h(h_buf_16), .acc_buf(o_mul_16));
shift_mul shift_mul_17 (.in(i_mul_17), .h(h_buf_17), .acc_buf(o_mul_17));
shift_mul shift_mul_18 (.in(i_mul_18), .h(h_buf_18), .acc_buf(o_mul_18));
shift_mul shift_mul_19 (.in(i_mul_19), .h(h_buf_19), .acc_buf(o_mul_19));
shift_mul shift_mul_20 (.in(i_mul_20), .h(h_buf_20), .acc_buf(o_mul_20));
shift_mul shift_mul_21 (.in(i_mul_21), .h(h_buf_21), .acc_buf(o_mul_21));
shift_mul shift_mul_22 (.in(i_mul_22), .h(h_buf_22), .acc_buf(o_mul_22));
shift_mul shift_mul_23 (.in(i_mul_23), .h(h_buf_23), .acc_buf(o_mul_23));
shift_mul shift_mul_24 (.in(i_mul_24), .h(h_buf_24), .acc_buf(o_mul_24));
shift_mul shift_mul_25 (.in(i_mul_25), .h(h_buf_25), .acc_buf(o_mul_25));
shift_mul shift_mul_26 (.in(i_mul_26), .h(h_buf_26), .acc_buf(o_mul_26));


adder_tree26 adder_tree_26_ (.in(i_adder_tree26), .out(o_adder_tree26));
adder_tree14 adder_tree_14_ (.in(i_adder_tree14), .out(o_adder_tree14));
adder_tree6 adder_tree_6_ (.in(i_adder_tree6), .out(o_adder_tree6));
adder_tree4 adder_tree_4_ (.in(i_adder_tree4), .out(o_adder_tree4));
adder_tree2 adder_tree_2_ (.in(i_adder_tree2), .out(o_adder_tree2));


assign i_adder_tree26 = {
    o_mul_0,
    o_mul_1,
    o_mul_2,
    o_mul_3,
    o_mul_4,
    o_mul_5,
    o_mul_6,
    o_mul_7,
    o_mul_8,
    o_mul_9,
    o_mul_10,
    o_mul_11,
    o_mul_12,
    o_mul_13,
    o_mul_14,
    o_mul_15,
    o_mul_16,
    o_mul_17,
    o_mul_18,
    o_mul_19,
    o_mul_20,
    o_mul_21,
    o_mul_22,
    o_mul_23,
    o_mul_24,
    o_mul_25
};

assign i_adder_tree14 = {
    o_adder_tree26, o_mul_26};

assign i_adder_tree6 = o_adder_tree14[16 * 6 - 1 : 0];

assign i_adder_tree4 = {o_adder_tree6, o_adder_tree14[16 * 6 +: 16]};

assign i_adder_tree2 = o_adder_tree4;






always @(posedge clk or negedge rst_n)
begin
    if (~rst_n)
    begin
        out <= 0;
    end

    else if(clr)
    begin
        out <= 0;
    end

    else if(~en_n)
    begin
        out <= o_adder_tree2;
    end

end
endmodule



