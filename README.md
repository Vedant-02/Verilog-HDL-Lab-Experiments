# Verilog-HDL-Lab-Experiments
Verilog, standardized as IEEE 1364, is a hardware description language used to model electronic systems. This repository consists of verilog HDL based lab experiments conducted in course EEL2020 Digitial Design at IIT Jodhpur.

The list of experiments mentioned in this repository are as follows:
- Half adder
- Full adder
- Four bit Parallel adder
- Binary to Gray code converter
- Gray to binary code converter
- Binary to BCD converter
- BCD to 7-segment display decoder
- Four bit Adder-Subtractor
- Four bit Comparator
- 32-bit fast adders (carry look ahead, carry skip, carry select)
- BCD Adder
- BCD Subtractor
- Binary Multiplier (3 bit x 3 bit)
- Barrel Shifter
- 32-bit ALU
- Priority encoder
- D flip-flop(synchronous & asynchronous reset)

## License
[MIT License](LICENSE)


# Half Adder
## Introduction
Half adder is the simplest of all adder circuits. Half adder is a combinational arithmetic circuit that adds two numbers and produces a sum bit (s) and carry bit (c) both as output. The addition of 2 bits is done using a combination circuit called a Half adder. The input variables are augend and addend bits and output variables are sum & carry bits. A and B are the two input bits.

let us consider two input bits A and B, then sum bit (s) is the X-OR of A and B. it is evident from the function of a half adder that it requires one X-OR gate and one AND gate for its construction.

## Truth Table

![ha_truth-300x235](https://user-images.githubusercontent.com/72512204/197323161-418a7a85-eb45-4139-b8d4-76edcfef2e67.png)

Here we perform two operations Sum and Carry, thus we need two K-maps one for each to derive the expression.

Logical Expression: 

For Sum:
                                   
![xorkmap](https://user-images.githubusercontent.com/72512204/197323206-0094bd01-3a65-4d2e-96d5-7248df2b2d62.jpg)



Sum = A XOR B

For Carry: 
                               
![Inkedandkmap1](https://user-images.githubusercontent.com/72512204/197323213-04eb747e-b92f-44ac-ba19-8bc3d18790f1.jpg)



Carry = A AND B 

Implementation:

![Half_Adder](https://user-images.githubusercontent.com/72512204/197323224-de9e443d-e878-4740-b36b-04e75f890a5f.jpg)


Note: Half adder has only two inputs and there is no provision to add a carry coming from the lower order bits when multi addition is performed. 
