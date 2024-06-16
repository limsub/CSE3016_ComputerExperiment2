module four_bit_RC_tb;

reg clk, reset, clk1;
wire [3:0] out;

four_bit_RC u_four_bit_RC(
    .clk(clk),
    .reset(reset),
    .out(out)
);


initial begin
    clk=1'b0;
    reset=1'b0;
    clk1 = 1'b0;
    #600 reset = 1'b1; 
end

always clk1 = #20 ~clk1;  

always @(posedge clk1) clk = 1'b1;
always @(negedge clk1) clk = 1'b0;

endmodule
