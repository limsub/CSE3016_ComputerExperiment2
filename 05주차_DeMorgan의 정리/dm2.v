// (A)
module dm2_a(
    input a,
    input b,

    output c
);

assign c = ~(a && b);

endmodule


// (B)
module dm2_b(
    input a,
    input b,

    output c
);

assign c = (~a) || (~b);

endmodule