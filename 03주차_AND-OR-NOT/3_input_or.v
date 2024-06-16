// (A)
module input_3_or(
    input a,
    input b,
    input c,

    output d
);

assign d = a || b || c;


// (B)
module input_3_or(
    input a,
    input b,
    input c,
    input d,

    output e
);

assign e = ( (a || b) && d) || c;
