# 7주차 : Parity bit Generator / Checker, 2-bit Binary Comparator
- Parity bit Generator
    - binary 정보를 전송할 때, error를 검출하기 위해 parity bit 사용
    
    - binary 정보를 전송할 때 parity bit이라 불리는 1-bit 를 추가로 넣어 보내는 방법으로, <br>
    binary 데이터의 '1' bit 수가 홀수개 이면 parity bit는 '1'로, <br>
    짝수개이면 parity bit을 '0'으로 설정한다

    - 결과적으로 항상 짝수개의 '1' bit 수를 갖는 전송 데이터 형태를 갖게 된다.


<br>


- Parity bit Checker
    - 수신기에서 parity를 검사하는 회로를 parity checker라고 한다.
    
    - 출력은 PEC (parity error checker)로 표시되며, <br>
    1이 홀수 개일 경우, 즉 오류인 경우 1을 표시하고<br>
    1이 짝수 개이거나 0개인 경우 0을 나타낸다.


<br>


- 2-bit binary comparator
    - 2-bit의 이진수 A, B가 있을 때 두 수를 비교하여 <br>
    A > B이면 F1, <br>
    A = B이면 F2, <br>
    A < B이면 F3가 '1'이 되도록 출력하는 조합 논리 회로
