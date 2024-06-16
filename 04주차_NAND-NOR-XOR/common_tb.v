`timescale 1ns / 1ps

module common_tb;

reg a, b, c, d; // reg : 절차적 할당문 (register : 추상적 저장 장치)
wire e, f, g;   // wire : 변수들이 모듈 내에 어떻게 연결되어 있는지 (net : 디바이스의 물리적인 연결)

common u_common(
    .a(a),
    .b(b),
    .c(c),
    .d(d),

    .e(e),
    .f(f),
    .g(g)
);

initial begin   // initial : 시뮬레이션이 실행되는동안 한 번만 실행
    a = 1'b0
    b = 1'b0
    c = 1'b0
    d = 1'b0
end

always @(a or b or c or d) begin    // always : 시뮬레이션이 실행되는 동안 반복적으로 실행
    a <= #2 ~a;
    b <= #3 ~b;
    c <= #5 ~c;
    d <= #7 ~d;
end

initial begin
    #56
    $finish
end

endmodule