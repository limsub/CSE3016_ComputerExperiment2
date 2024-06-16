module four_bit_SR_tb;

reg clk, reset, x, clk1, clk2;
wire [3:0] out; 

four_bit_SR u_four_bit_SR(
    .clk(clk),
    .reset(reset),
    .x(x),
    .out(out)
);


initial begin
    clk=1'b0;
    reset=1'b1;
    x=1'b0;
    clk1 = 1'b0;
    clk2 = 1'b0;
    #50 reset = 1'b0; 
end

always clk1 = #20 ~clk1;    // clk1 : 20ns���� �� ���� ���� ����
always clk2 = #80 ~clk2;    // clk2 : 80ns���� �� ���� ���� ����


always @(posedge clk1) clk = 1'b1;  // clk1�� 0 -> 1 (positive edge) => clk = 1
always @(negedge clk1) clk = 1'b0;  // clk1�� 1 -> 0 (negative edge) => clk = 0

always @(posedge clk2) x = 1'b1;    // clk2�� 0 -> 1 (positive edge) => x = 1
always @(negedge clk2) x = 1'b0;    // clk2�� 1 -> 0 (negative edge) => x = 0


endmodule