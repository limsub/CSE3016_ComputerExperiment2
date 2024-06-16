module moore_1101(
    input reset,
    input slk,
    input x,
    
    output reg z,
    output reg [3:0] out,
    output [3:0] target
    );

reg [3:0] target = 4'b1101;

always @(posedge clk) begin
    
    if (out == target) z <= 1'b1;
    else z <= 1'b0;
    
    if (reset) begin
        out <= 4'b0000;
        z = 1'b0;
    end
    
    else begin
        out[3] = out[2];
        out[2] = out[1];
        out[1] = out[0];
        out[0] = x;
    end
end

endmodule