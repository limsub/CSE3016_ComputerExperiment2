`timescale 1ns / 1ps

module epbg(
    input a,
    input b,
    input c,
    input d,

    output epb
);

assign epb = ~(a ^ b) ^ (c ^ d);

endmodule