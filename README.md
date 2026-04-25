# ARITHMETIC-LOGIC-UNIT-ALU-

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: MYGAPULA DINESH KUMAR

*INTERN ID*:CTIS7586

*DURATION*:4 WEEKS

*MENTOR*:NEELA SANTOSH


(TASK SUMMARY):-

1. AIM:-
To design and implement a basic Arithmetic Logic Unit (ALU) using Verilog/VHDL that can perform arithmetic operations such as addition and subtraction, and logical operations such as AND, OR, and NOT. The project also aims to simulate the ALU using a testbench and verify its functionality through waveform analysis.
2.APPARATUS:-
Computer system with minimum 8GB RAM
HDL software tools such as:
ModelSim / Xilinx Vivado
3.PROGRAMMING LANGUAGE:-
Verilog HDL 
Simulation tools for waveform analysis
Basic knowledge of digital electronics and logic gates
3.THEORY:-
An Arithmetic Logic Unit (ALU) is a key component of the Central Processing Unit (CPU) responsible for performing arithmetic and logical operations. It takes binary inputs and processes them based on control signals. The ALU performs operations like addition, subtraction, AND, OR, and NOT depending on the selection input.
Arithmetic operations involve mathematical calculations:
Addition combines two binary numbers.
Subtraction is implemented using 2’s complement method.
Logical operations are bitwise:
AND: Output is 1 only if both inputs are 1.
OR: Output is 1 if at least one input is 1.
NOT: Inverts the input bits.
The ALU operation is controlled using a select line (opcode), which determines which function is executed. The output may also include flags such as carry-out.
**function is executed. The output may also include flags such as carry-out.
4.PROCEDURE:-
Define the ALU module with inputs (A, B, ALU_Sel) and outputs (ALU_Out, CarryOut).
Declare internal registers and wires for intermediate calculations.
Use a case statement or conditional statements to implement different operations based on ALU_Sel.
Implement arithmetic operations (addition and subtraction).
Implement logical operations (AND, OR, NOT).
Assign the computed result to the output.
Write a testbench to apply different input combinations.
Simulate the design using HDL tools.
Observe the waveform and verify correctness of outputs.
5.TRUTH TABLE:-
<img width="299" height="173" alt="Image" src="https://github.com/user-attachments/assets/40487e94-cc15-4471-a0df-f7c31eaa3e0a" />
6.OUTPUT WAVEFROM:-
<img width="766" height="373" alt="Image" src="https://github.com/user-attachments/assets/e26a8007-6fac-40d6-a5a2-fb9961823d11" />
7.RESULT:-
The ALU was successfully designed and simulated. All arithmetic and logical operations produced correct outputs for different input combinations. The waveform analysis confirms proper functioning of the ALU.
