'timescale 1ns / 1ps
// 시간단위 : 1ns (해당 파일의 모든 시간 단위는 1ns)
// 정밀도 : 1ps (소수점의 허용 범위)
// 1ps = 0.001ns

module buf_gate(
    input a,
    output y
)

assign y = ~a;      // NOT gate
// assign y = a;    // buf gate

endmodule