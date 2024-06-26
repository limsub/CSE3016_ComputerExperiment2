module four_bit_SR(
    input clk,
    input reset,    
    input x,
    output reg [3:0] out 
    );
    
always @(posedge clk) begin  
   
   if (reset) begin    
        out[3] <= 1'b0;
        out[2] <= 1'b0;
        out[1] <= 1'b0;
        out[0] <= 1'b0;
   end
   
   
   else begin
        
        // input : 0
        if (x == 1'b0) begin
            out[3] <= 1'b0;  
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];    
        end
        
        // input : 1
        else begin
            out[3] <= 1'b1;
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];
        end
   end
end
endmodule