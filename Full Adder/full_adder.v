`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2022 18:06:11
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
//Lab-1-Work 2: Use half adder to create full adder

module full_adder(x,y,z,s,c);
input x,y,z;
output s,c;

//2 half adders and 1 OR gate used

wire s1,c1,c2;
half_adder H1(y,z,s1,c1);
half_adder H2(s1,x,s,c2);

or (c,c1,c2);
endmodule
