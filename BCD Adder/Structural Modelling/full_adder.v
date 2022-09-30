`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 21:51:08
// Design Name: 
// Module Name: full_adder
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

module full_adder(x,y,z,s,c);
input x,y,z;
output s,c;

//2 half adders and 1 OR gate used

wire s1,c1,c2;
half_adder H1(y,z,s1,c1);
half_adder H2(s1,x,s,c2);

or (c,c1,c2);
endmodule

