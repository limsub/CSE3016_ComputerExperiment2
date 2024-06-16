module half_subtractor(
    input a, 
    input b,

    output d,
    output borrow
);

assign d = a ^ b;
assign borrow = (~a) && b;

endmodule

