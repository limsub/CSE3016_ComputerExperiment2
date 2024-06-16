// (A)
module input_4_or(
    input a, 
    input b,
    input c,
    input d,

    output e
);

assign e = a || b || c || d;

// (B)
module input_4_or(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,

    output g
);

assign g = (((( a || b) && e) || c) && f) || d;