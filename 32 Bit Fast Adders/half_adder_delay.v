`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 21:41:19
// Design Name: 
// Module Name: half_adder_delay
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
//Lab-3:Vedant A Sontake(B20EE095)
//Write a Program to Implement the following Fast Adders [32 bit]
//Carry Look Ahead Adder,Carry Skip Adder,Carry Select Adder

//code for half adder with delay of 10ns on XOR gate and 5ns for and gate
module half_adder_delay(a,b,s,c);
input a,b;
output s,c;

assign #10 s=a^b;       //sum gives the output as xor of the 2 inputs in half adder
assign #5 c=a&b;       //carry gives the output as & of the 2 inputs in half adder

endmodule
