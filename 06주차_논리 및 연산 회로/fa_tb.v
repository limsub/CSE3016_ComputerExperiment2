module full_adder_tb;
reg a,b,c_in;
wire s,c_out;

full_adder u_full_adder (
    .a(a ),
    .b(b ),
    .c_in(c_in ),
    .s(s ),
    .c_out(c_out )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c_in = 1'b0;
end

always@(a or b or c_in) begin
    a <= #20 ~a;
    b <= #40 ~b;
    c_in <= #80 ~c_in;
end

initial begin
    #160
    $finish;
end

endmodule