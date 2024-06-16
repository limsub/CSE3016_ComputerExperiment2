// (A)
module bf1_a(
    input a,
    input b,
    input c,

    output d
);

assign d = ( (~a) || (~b) ) && (~c);

endmodule


// (B)
module bf1_b(
    input a,
    input b,
    input c,

    output d
);

assign d = ~( ~(a && b) || c);

endmodule