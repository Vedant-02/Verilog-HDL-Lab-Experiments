`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 18:44:09
// Design Name: 
// Module Name: FA_add_sub
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

module FA_add_sub(x,y,z,s,c);
input [3:0]x,y;
input z;
output [3:0]s;
output c;

//2 half adders and 1 OR gate used

wire s1,c1,c2;
half_add H1(y,z,s1,c1);
half_add H2(s1,x,s,c2);

or (c,c1,c2);
endmodule
