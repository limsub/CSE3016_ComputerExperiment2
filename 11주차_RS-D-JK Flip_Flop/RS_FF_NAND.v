module RS_FF_NAND(
    input clk,
    input R, S,
    output Q, Qbar,
    
    wire nand1, nand2
);

assign nand1 = ~ ( clk & S );
assign nand2 = ~ ( clk & R );
assign Q = ~ ( nand1 & Qbar );
assign Qbar = ~ ( nand2 & Q );

endmodule