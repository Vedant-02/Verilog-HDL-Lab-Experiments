`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 19:14:06
// Design Name: 
// Module Name: half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//Lab-3: By Vedant A Sontake(B20EE095) 
//Work 1:Modify the Four Bit Adder created in Lab 1 to implement an Adder-Subtractor Unit.

module half_adder(a,b,s,c);
input [3:0]a,b;
output s,c;
assign s=a^b;       //sum gives the output as xor of the 2 inputs in half adder
assign c=a&b;       //carry gives the output as & of the 2 inputs in half adder
endmodule
