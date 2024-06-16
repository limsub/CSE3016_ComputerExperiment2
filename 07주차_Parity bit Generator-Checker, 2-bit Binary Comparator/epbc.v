module epbc(
    input a,
    input b,
    input c,
    input d,   
    input epb,

    output pec
);

assign pec = ~( (a^b)^(c^d)^ebp);

endmodule