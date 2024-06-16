module four_decade_counter(
    input reset,
    input clk,
    input x,
    output reg z,
    output reg [3:0] out
    );
      
always @(posedge clk) begin
    
    if (reset == 1'b1) begin
        out = 4'b0000;
        z = 1'b0;
    end
    
    else begin
    
        if (out == 4'b0000) z = 1'b0;
        
        if (out == 4'b1001) begin
             out = 4'b0000;
             z = 1'b1;
        end    
        
        else out <= out + 4'b0001;
    
    end
end
    
endmodule