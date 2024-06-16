module D_FF_tb;

reg clk;
reg D;

wire Q, Qbar;
wire nand1, nand2;

reg clear;
reg clk1, clk2, clk3;

D_FF u_D_FF(
.clk (clk),
.D (D),
.Q (Q),
.Qbar (Qbar)
);

initial begin
clk = 1'b0;
D = 1'b0;
clear = 1'b0;
clk1 = 0;
clk2 = 0;
clk3 = 0;
end


always clk1 = #10 ~clk1;
always clk2 = #20 ~clk2;
always clk3 = #40 ~clk3;

always @(posedge clk1) clk = 1'b1;
always @(negedge clk1) clk = 1'b0;

always @(posedge clk2) D = 1'b1;
always @(negedge clk2) D = 1'b0;

always @(posedge clk3) clear = 1'b1;
always @(negedge clk3) clear = 1'b0;

initial begin
    #500
    $finish;
end

endmodule
