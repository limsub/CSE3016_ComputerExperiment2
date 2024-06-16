module moore_1101_tb;

reg reset, clk, x;
wire[3:0] out;
wire z;

moore_1101 u_moore_1101(
    .reset(reset),
    .clk(clk),
    .x(x),
    .out(out),
    .z(z)
);

initial begin
    reset = 1'b1;
    clk = 1'b0;
    x = 1'b0;
    #20 reset = 1'b0;
    
    #240 x = 1;
    
    #30 x = 1; #30 x = 1; #30 x = 0; #30 x = 1;
    #30 x = 1; #30 x = 0; #30 x = 1; #30 x = 1;
    #30 x = 1; #30 x = 1; #30 x = 1; #30 x = 0;
    #30 x = 1; #30 x = 0; #30 x = 1; #30 x = 0;
end

always clk = #15 ~clk;

endmodule
