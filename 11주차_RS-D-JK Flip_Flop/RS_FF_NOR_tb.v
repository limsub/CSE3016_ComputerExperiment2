module RS_FF_NOR_tb;

reg clk;
reg R, S;

wire Q, Qbar;
wire nor1, nor2;

reg clear;
reg clk1, clk2, clk3, clk4;

RS_FF_NOR u_RS_FF_NOR(
.clk (clk),
.R (R),
.S (S),
.Q (Q),
.Qbar (Qbar)
);

initial begin
clk = 1'b0;
R = 1'b0;
S = 1'b0;
clear = 1'b0;
clk1 = 0;
clk2 = 0;
clk3 = 0;
clk4 = 0;
end


always clk1 = #10 ~clk1;
always clk2 = #20 ~clk2;
always clk3 = #40 ~clk3;
always clk4 = #80 ~clk4;

always @(posedge clk1) clk = 1'b1;
always @(negedge clk1) clk = 1'b0;

always @(posedge clk2) R = 1'b1;
always @(negedge clk2) R = 1'b0;

always @(posedge clk3) S = 1'b1;
always @(negedge clk3) S = 1'b0;

always @(posedge clk4) clear = 1'b1;
always @(negedge clk4) clear = 1'b0;

initial begin
    #2000
    $finish;
end

endmodule