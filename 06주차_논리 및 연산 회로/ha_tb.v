module half_adder_tb;
reg a,b;
wire s,c;

half_adder u_half_adder (
    .a(a ),
    .b(b ),
    .s(s ),
    .c(c )
);

initial begin
    a = 1'b0;
    b = 1'b0;
end

always@(a or b) begin
    a <= #20 ~a;
    b <= #40 ~b;
end

initial begin
    #80
    $finish;
end

endmodule