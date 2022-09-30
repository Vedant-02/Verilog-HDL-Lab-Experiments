`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 21:52:56
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
//By Vedant A Sontake(B20EE095)
//Lab-4-Work 1: Write a Program to implement a a) BCD Adder Unit b) BCD Subtractor Unit

module half_adder(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;       //sum gives the output as xor of the 2 inputs in half adder
assign c=a&b;       //carry gives the output as & of the 2 inputs in half adder
endmodule

