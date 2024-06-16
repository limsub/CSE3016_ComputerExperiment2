// (A)
module dm1_a(
    input a,
    input b,

    output c
);

assign c = ~ (a || b);

endmodule


// (B)
module dm1_b(
    input a,
    input b,

    output c
);

assign c = (~a) && (~b);

endmodule