module mealy_10101_tb;

reg reset, clk, x;
wire [4:0] out;
wire z;

mealy_10101 u_mealy_10101(
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
    
    #30 x = 1; #30 x = 0; #30 x = 1; #30 x = 0;
    #30 x = 1; #30 x = 0; #30 x = 1; #30 x = 1;
    #30 x = 0; #30 x = 1; #30 x = 1; #30 x = 0;
    #30 x = 1; #30 x = 1; #30 x = 1; #30 x = 0;
end

always clk = #15 ~clk;

endmodule