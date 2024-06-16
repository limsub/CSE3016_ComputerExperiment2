`timescale 1ns / 1ps

module dec_2_to_4_tb;
reg A,B;
wire D0,D1,D2,D3;

dec_2_to_4 u_dec_2_to_4 (
    .A(A ),
    .B(B ),
    .D0(D0 ),
    .D1(D1 ),
    .D2(D2 ),
    .D3(D3 )
);

initial begin
    A = 1'b0;
    B = 1'b0;
end

always@(A or B) begin
    A <= #10 ~A;
    B <= #20 ~B;
end

initial begin
    #40
    $finish;
end

endmodule