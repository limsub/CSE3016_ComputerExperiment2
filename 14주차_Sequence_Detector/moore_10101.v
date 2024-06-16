module moore_10101(
    input reset,
    input clk,
    input x,
    
    output reg z,
    output reg [4:0] out,
    output [4:0] target
);

reg[4:0] target = 5'b10101;

always @(posedge clk) begin
    if (out == target) z <= 1'b1;
    else z <= 1'b0;
    
    if (reset) begin
        out <= 5'b00000;
        z <= 1'b0;
    end
    
    else begin
        out[4] = out[3];
        out[3] = out[2];
        out[2] = out[1];
        out[1] = out[0];
        out[0] = x;
    end
end
endmodule