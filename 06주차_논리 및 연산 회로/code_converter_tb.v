module code_converter_tb;
reg a, b, c, d;
wire x, y, z, w;

code_converter u_code_converter (
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .x(x ),
    .y(y ),
    .z(z ),
    .w(w )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always@(a or b or c or d) begin
    a <= #20 ~a;
    b <= #40 ~b;
    c <= #80 ~c;
    d <= #160 ~d;
end

initial begin
    #320
    $finish;
end

endmodule