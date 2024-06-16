module half_subtractor_tb;
reg a,b;
wire d,borrow;

half_subtractor u_half_subtractor (
    .a(a ),
    .b(b ),
    .d(d ),
    .borrow(borrow )
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