module RS_FF_NOR(
    input clk,
    input R, S,
    output Q, Qbar,
    
    wire nor1, nor2
);



assign nor1 = ~(~(~(clk|0) | ~(S|0)) | 0);
assign nor2 = ~(~(~(clk|0) | ~(R|0)) | 0);
assign Q = ~(~(~(nor1|0) | ~(Qbar|0)) | 0);
assign Qbar = ~(~(~(nor2|0) | ~(Q|0)) | 0);

endmodule