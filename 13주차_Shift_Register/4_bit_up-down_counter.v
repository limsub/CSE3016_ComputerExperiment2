module four_bit_UD_counter(
    input clk,   
    input reset, 
    input x,     
    output digit,         
    output reg [3:0] out, 
    output reg [6:0] seg, 
    output reg dp         
    );
    
assign digit = seg[0] | seg[1] | seg[2] | seg[3] | seg[4] | seg[5] | seg[6] | dp;
    
always @(posedge clk) begin
   if (reset) begin
        out[3] <= 1'b0;
        out[2] <= 1'b0;
        out[1] <= 1'b0;
        out[0] <= 1'b0;
        seg[0]<=1'b0;
        seg[1]<=1'b0;
        seg[2]<=1'b0;
        seg[3]<=1'b0;
        seg[4]<=1'b0;
        seg[5]<=1'b0;
        seg[6]<=1'b0;
        dp <= 0;
   end
   
   
   else begin
        
        // input : 0 
        if (x == 1'b0) begin
            out = out - 1;
            seg[0]<=1'b1;
            seg[1]<=1'b0;
            seg[2]<=1'b1;
            seg[3]<=1'b1;
            seg[4]<=1'b1;
            seg[5]<=1'b1;
            seg[6]<=1'b0;
        end
        
        // input : 1 
        else begin
            out = out + 1;
            seg[0]<=1'b0;
            seg[1]<=1'b1;
            seg[2]<=1'b1;
            seg[3]<=1'b1;
            seg[4]<=1'b1;
            seg[5]<=1'b1;
            seg[6]<=1'b0;
        end
   end
end
endmodule