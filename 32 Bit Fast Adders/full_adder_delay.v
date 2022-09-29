`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 21:45:57
// Design Name: 
// Module Name: full_adder_delay
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

//code for full adder with delay of 5ns on or gate
module full_adder_delay(x,y,z,s,c);
input x,y,z;
output s,c;

//2 half adders and 1 OR gate used

wire s1,c1,c2;
half_adder_delay H1(y,z,s1,c1);
half_adder_delay H2(s1,x,s,c2);

or #5 (c,c1,c2);
endmodule
