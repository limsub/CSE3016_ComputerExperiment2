module four_bit_UD_counter_tb;

reg clk, reset, x, clk1, clk2;

wire [3:0] out;
wire [6:0] seg;


four_bit_UD_counter u_four_bit_UD_counter(
    .clk(clk),
    .reset(reset),
    .x(x),
    .out(out),
    .seg(seg)
);

initial begin
    clk=1'b0;
    reset=1'b1;
    x=1'b1;
    clk1 = 1'b0;
    clk2 = 1'b0;
    #50 reset = 1'b0;
    #300 x = 1'b0; 
end

always clk1 = #20 ~clk1; 
always clk2 = #40 ~clk2;

always @(posedge clk1) clk = 1'b1; 
always @(negedge clk1) clk = 1'b0; 

initial begin
    #600
    $finish;
end


endmodule