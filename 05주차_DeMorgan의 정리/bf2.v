// (A)
module bf2_a(
    input a,
    input b,
    input c,

    output d
);

assign d = ( (~a && ~b) || ~c);

endmodule


// (B)
module bf2_b(
    input a,
    input b,
    input c,

    output d
);

assign d = ~((a || b) && c);

endmodule