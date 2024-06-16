`timescale 1ns/1ps

module enc_4_to_2(
    input A, 
    input B, 
    input C,
    input D,

    output E0,
    output E1
);

assign E0 = C | D;
assign E1 = B | D;

endmodule
