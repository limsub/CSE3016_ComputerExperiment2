module D_FF(
    input clk,
    input D,
    output Q, Qbar,
    
    wire nand1, nand2
);

assign nand1 = ~ (clk & D);
assign nand2 = ~ (clk & (~D) );
assign Q = ~ (nand1 & Qbar);
assign Qbar = ~ (nand2 & Q);

endmodule