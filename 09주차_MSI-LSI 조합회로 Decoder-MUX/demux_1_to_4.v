`timescale 1ns / 1ps

module demux_1_to_4(
    input x,
    input y,
    input F,
    output A,
    output B,
    output C,
    output D
    );

assign A = (~x)&(~y)&F;     // ~x, ~y, F�� and
assign B = (~x)&y&F;        // ~x, y, F�� and
assign C = x&(~y)&F;        // x, ~y, F�� and
assign D = x&y&F;           // x, y, F�� and

endmodule