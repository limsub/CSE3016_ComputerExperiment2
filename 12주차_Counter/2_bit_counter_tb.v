module two_bit_counter_tb;

reg reset, clk, x, clk1, clk2;
wire z;
wire [1:0] out;

two_bit_counter u_two_bit_counter(
    .reset(reset),
    .clk(clk),
    .x(x),
    .out(out),
    .z(z)
);

initial begin
    clk=1'b0;
    reset=1'b1;
    x=1'b0;
    clk1 = 1'b0;
    clk2 = 1'b0;
    #50 reset = 1'b0; 
end

always clk1 = #20 ~clk1;
always clk2 = #40 ~clk2;

always @(posedge clk1) clk = 1'b1;
always @(negedge clk1) clk = 1'b0;

always @(posedge clk2) x = 1'b1;
always @(negedge clk2) x = 1'b0;


endmodule