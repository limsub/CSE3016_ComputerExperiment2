`timescale 1ns / 1ps

module demux_1_to_4_tb;
reg x,y,F;
wire A,B,C,D;

demux_1_to_4 u_demux_1_to_4 (
    .x(x ),
    .y(y ),
    .F(F ),
    .A(A ),
    .B(B ),
    .C(C ),
    .D(D )
);

initial begin
    x = 1'b0;
    y = 1'b0;
    F = 1'b0;
end

always@(x or y or F) begin
    x <= #10 ~x;
    y <= #20 ~y;
    F <= #40 ~F;
end

initial begin
    #80
    $finish;
end

endmodule