# Four Bit Parallel Adder
## Introduction
Parallel Adder is a digital circuit that efficiently adds more than 1 bit binary numbers. Parallel Adder consists of Full Adders connected consecutively. The input of the Full Adder is the carry bit from the previous Full Adder. 4 Full Adders are required to perform addition operation in four bit parallel adder.
## Truth Table
<p align="center">
<img src="https://qph.cf2.quoracdn.net/main-qimg-9b2eeac9eb7e2e6ab85c810ab681ce74"><br>
<a href="https://qph.cf2.quoracdn.net/main-qimg-9b2eeac9eb7e2e6ab85c810ab681ce74"><i>(Image Source)</i></a>
</p>

## Schematic of four bit parallel adder
4- bit Parallel Adder is designed using 4 Full Adders FA0, FA1, FA2, FA3 . Full Adder FA0 adds A0, B0 along with carry Cin to generate Sum S0 and Carry bit C1 and this Carry bit is connected to FA1. FA1 accepts this Carry C1 and adds with its inputs A1 and B1 to generate Sum S1 and Carry C2. This bit C2 is connected to FA2. This process continues till last Full Adder. FA ‘n’ accepts the carry bit Cn and adds with its input An and Bn to generate the final output along with the last carry bit Cout.

<p align="center">
<img src="https://i0.wp.com/electricalfundablog.com/wp-content/uploads/2020/03/image3_thumb2.jpg?ssl=1"><br>
<a href="https://i0.wp.com/electricalfundablog.com/wp-content/uploads/2020/03/image3_thumb2.jpg?ssl=1"><i>(Image Source)</i></a>
</p>
