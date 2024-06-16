module two_bit_counter(
    input reset,
    input clk,
    input x,
    output z,
    output[1:0] out
);


reg [1:0]out;
reg z;

always @(posedge clk) begin
    if(reset == 1'b1) begin
        out[0] <= 1'b0;
        out[1] <= 1'b0;
        z <= 1'b0;
    end
    else begin
        if((x == 1'b1))begin
            
            if ((out[0] == 1'b0) && (out[1] == 1'b0)) z <= 1'b0;
            
            if((out[0] && out[1])) z <= 1'b1;
            if((out[0] == 1'b1)) begin
                out[0] <= (~out[0]);
                out[1] <= (~out[1]);
            end
            else out[0] <= (~out[0]);
        end
    end
end

endmodule