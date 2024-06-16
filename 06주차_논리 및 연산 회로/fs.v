module full_subtractor(
    input a, 
    input b,
    input b_n1,

    output d,
    output b_n
);

assign d = a ^ b ^ b_n1;
assign b_n = ( ~(a ^ n) && b_n1) || (~a && b);

endmodule