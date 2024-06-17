# 1주차 : FPGA의 소개와 이해
- FPGA (Field Programmable Gate Array)
    - 이미 설계된 하드웨어를 반도체로 생산하기 전, <br>
    최종적으로 하드웨어의 동작 및 성능을 검증하기 위해 제작하는 <br>
    중간 개발물 형태의 집적 회로 (IC)
    
    - 프로그래밍을 할 수 있는 중간 형태의 **비메모리 반도체**의 한 종류

    - AND, OR, XOR, NOT, 더 복잡한 디코더나 계산 기능의 조합 기능과 같은 <br>
    기본적인 논리 게이트의 기능을 복제하여 프로그래밍할 수 있으며, <br>
    대부분의 FPGA는 프로그래밍 가능 논리 요소에 간단한 플립플롭이나 메모리 블록으로 된 메모리 요소를 포함

    - 로봇 제어, 우주선, 인공위성 등 **압도적으로 빠른 하드웨어 프로그래밍**을 요구로 하는 현장에서 주로 사용


<br>


- 실험 과정
    1. Functional Architecture Design : 이론 및 schematic을 통해 디자인 설계
    2. Design Entry : HDL (Hardware Description Language)로 설계
    3. RTL Simulation : 2에서 사용자가 구현한 것을 시뮬레이션으로 검증
    4. Synthesis : 유저가 구현한 high level 디자인을 FPGA가 이해할 수 있는 low level로 변환
    5. FPGA Test : FPGA를 이용하여 테스트