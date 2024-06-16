module code_converter(
    input a,
    input b,
    input c,
    input d,

    output x,
    output y,
    output z,
    output w
);

assign x = (b&&d) || (b&& c) || (a&&~c);
assign y = (a && ~c) || (b && ~d) || (b && c);
assign z = (a && ~c) || (~b && c) || (b && ~c && d);
assign w = d;

endmodule


