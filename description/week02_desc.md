# 2주차 : Verilog 기초
- 실습
    - buf gate


- HDL (Hardware Description Language)의 한 종류로 가장 널리 쓰인다.


<br>


- 회로도 방식 vs. Verilog 방식
    | 항목      |           회로도 방식           |           Verilog 방식           |
    | :--: | :--: | :--: |
    | 설계 시간 | 상대적으로 많이 걸림 | 상대적으로 적게 걸림 |
    | 설계 용이성 | 논리 설계 능력 필요. 복잡해질수록 어려워짐 | 동작을 이해하면 비교적 쉽게 기술 가능 |
    | 설계 이해 | 설계자 이외에는 이해 어려움 | 다른 사람도 비교적 쉽게 이해 가능 |
    | 설계 변경 | 설계자도 변경이 어려움 | 다른 사람도 쉽게 변경 가능 |
    | 설계 이식성 | 라이브러리나 툴을 바꾸려면 어려움 | 비교적 쉽게 다른 것으로 바꿀 수 있음 |
    | 문서화 작업 | 별도의 기술 문서를 작성해야 하는 부담 | 설계용 Verilog 코드를 기술 문서로 활용 가능 |


<br>


- Verilog
    - 전자 회로 및 시스템에 사용되는 **하드웨어 기술 언어**로, <br>
    회로 설계, 검증, 구현 등 여러 용도로 사용할 수 있다.

    - **C언어와 비슷한 문법**을 가지기 때문에 사용자들이 쉽게 접근할 수 있고, <br>
    if나 while과 같은 제어 구조도 동일하고 출력 루틴 및 연산자들도 거의 비슷하다.

    - C언어와 달리, 블록의 시작과 끝을 중괄호 기호가 아닌 begin / end로 구분한다.
    
    - HDL의 특징인 시간에 대한 개념이 포함되는 것 등 일반적인 프로그래밍과의 다른점이 존재한다.


<br>


- 구성
    1. 머리부
        - 키워드 `module`로 시작한다.
        - `모듈 이름, 포트 목록;`
        - 키워드와 동일한 이름을 사용할 수 없다
    

    2. 선언부
        - 포트 목록에 나열된 포트들의 방향, 비트 폭, reg 및 wire 선언, parameter 선언 등 모듈에서 필요로 하는 것들 선언
    

    3. 몸체부
        - 회로의 기능, 동작, 구조 등을 표현하는 다양한 Verilog 구문들로 구성


<br>


- Data Type
    - input : 입력 신호 / output : 출력 신호

    - register : 추상적인 저장 장치
        - reg : 절차적 할당문
        - integer : 정수형 변수
        - time, realtime : 시간적 변수
        - real : 실수형 변수
    
    - net : 디바이스의 물리적인 연결
        - wire : 변수들이 모듈 내에서 어떻게 연결되어 있는지
        - tri : 선을 서로 연결할 때 사용. wire와 다르게 3상태 net에 사용


<br>


- 상수 선언
    - 비트 수 제한이 있는 reg값 선언 시 형식 : `(비트 수)'(입력 형식)'(입력값)`


    - **size를 정하지 않은 값** : size를 특별히 정하지 않아도 선언 가능
        - `214` : 정수 214
        - `'h32` : 16진수 32
        - `'o324` : 8진수 324
    

    - **size를 정한 값** : 처음에 몇 비트인지 정해주고 선언한다
        - `4'b1111` : 4bit의 2진수 1111
        - `4'hf` : 4bit의 16진수 f
        - `4'd15` : 4bit의 10진수 15
    

    - **부호가 있는 수**의 처리 (음의 값은 2의 보수로 처리되어 저장)
        - `-8'd6` : 8비트의 -6


<br>


- 연산자
    - 기본 연산자
        ```verilog
        // X = 4'b1010
        // Y = 4'b1101
        // z = 4'b10x1

        ~X // Negation
        // => 4'b0101

        X & Y // AND
        // => 4'b1000

        X | Y // OR
        // => 4'b1111

        X ^ Y // XOR
        // => 4'b0111

        X ^~ Y // XNOR
        // => 4'b1000

        X & Z   // AND
        // => 4'b10x0
        ```
    

    <br>


    - Shift 연산자
        ```verilog
        // X = 4'b1101

        Y = X >> 1  // right shift
        // => Y = 4'b0110 (0 is filled in MSB position)

        Y = X << 2  // left shift
        // => Y = 4'b0100 (0 is filled in LSB position)
        ```
    

    <br>


    - 결합 및 반복 연산자
        ```verilog
        /* Concatenation Operator : {} */
        // A = 1'b1
        // B = 2'b00
        // C = 2'b10

        X = {B, C}  // X = 4'b0010
        Y = {A, B, 3'b110}  // Y = 6'b100110
        Z = {A, B[0], C[1]} // Z = 3'b101


        /* Replication Operator : {{ }} */
        // A = 1'b1
        // B = 2'b01
        // C = 2'b00

        X = { 4{A} }    // X = 4'b1111
        Y = { 4{A}, 2{B} }  // Y = 8'b11110101
        Z = { 4{A}, { 2{B} }, C }   // Z = 1111010100
        ```


<br>


- timescale
    - `'timescale <시간단위> / <정밀도>`
        - `<시간단위>` : 해당 파일 내의 모든 시간 단위가 선언한 값으로 바뀐다.

        - `<정밀도>` : 주어진 시간 단위로 구성할 수 있는 가장 작은 지연을 나타낸다. 사용할 수 있는 **소수점의 허용범위**를 나타낸다.

        ```verilog
        /* ex 1 */
        'timescale 10ns / 1ns
        # 1.55a = b;
        // 모든 시간 단위는 10ns로, 1.55 * 10ns = 15.5ns
        // 이 때, 정밀도가 1ns이므로 소수점 값을 반올림하여 16ns가 된다


        /* ex 2*/
        'timescale 1ns / 1ps
        # 1.0055a = b;
        // 모든 시간 단위는 1ns로, 1.0055 * 1ns = 1.0055ns
        // 이 때, 정밀도가 1ps (0.001ns) 이므로, 소수점 값을 반올림하여 1.006ns가 된다.
        ```


<br>


- 연속 할당문
    - `assign`
        - 입력 피연산자의 값에 **변화(event)**가 발생할 때마다 우변의 식이 평가되고, <br>
        그 결과 값이 할당문 주변의 net을 **구동(drive)**하는 하드웨어적 특성.
        
        - 간단하게, net 변수에 특정 논리 값을 지정하는데 사용
        
        - `deassign` 구문은 variable에 대한 assign 문의 영향을 제거시킬 때 사용

        ```verilog
        /* 두 구문은 동일하다 */
        // 1. 
        wire mynet = enable & data

        // 2. 
        wire mynet
        assign mynet = enable & data


        /* ex */
        assign wire1 = reg1;    // 선을 단순히 연결
        assign wire2 = (pin1) ? reg2[0] : reg2[1];  // 2 to 1mux의 역할. bool값에 따라 둘 중 하나로 연결
        assign wire3 = {reg1, reg2[0]}  // 서로 다른 두 개의 신호를 하나의 버스로 넣어둠
        ```
    

    <br>


    - `always`
        - 시뮬레이션이 실행되는 동안 반복적으로 실행
        - `@(sensitivity_list)`는 always문의 실행을 제어하는 역할 수행
        - sensitivity_list에 나열된 신호들 중 하나 이상에 변화(event)가 발생했을 때, always 내부에 있는 begin/end 블록 실행

        ```verilog
        always @(sensitivity_list) begin
            // blocking or nonblocking statements
        end
        ```
    

    <br>


    - `initial`
        - 시뮬레이션이 진행되는 동안 무한히 반복되는 always 구문과는 다르게, initial 구문은 한 번만 실행
        - initial 구문의 begin/end 블록은 절차형 문장으로 구성되며, 이들은 나열된 순서대로 실행

        ```verilog
        initial begin
            // blocking or nonblocking statements
        end
        ```


<br>


- 절차형 할당문
    - 문장이 나열된 순서대로 실행되어 **할당문 좌변의 변수 값을 갱신**하는 소프트웨어적 특성
    - always 구문, initial 구문에서 사용


    <br>


    - blocking statements
        ```verilog
        // 1. blocking symbol : =
        // 2. begin ~ end까지 line by line으로 순차적으로 계산과 동시에 저장이 이루어짐
        // 3. 할당까지 모두 수행 후 다음 문장 수행. 즉, 한 문장이 끝나기 전에 blocking된다
        // 4. #t 변수 = 연산; // t 시간 후 연산하고 변수에 할당한다

        c = a & b;
        d = a | b;
        // a와 b의 값을 읽고, & 연산 후, c에 할당
        // a와 b의 값을 읽고, | 연산 후, d에 할당
        // delay는 존재하지 않는다.
        ```
    

    <br>


    - nonblocking statments
        ```verilog
        // 1. nonblocking symbol : <=
        // 2. begin ~ end까지 모든 계산을 수행한 후, 한꺼번에 저장 작업 수행
        // 3. 여러 nonblocking 구문이 동시에 평가된 후 할당
        // 4. 변수 <= #t 연산 : // 연산 후 t 시간 후 변수 할당을 예약

        c <= a & b;
        d <= a | b;
        // a와 b의 값을 읽고, & 연산
        // a와 b의 값을 읽고, | 연산
        // 동시에 c와 d 할당
        ```