`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 22:38:39
// Design Name: 
// Module Name: tens_comp
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

module tens_comp(x,y);
input [3:0]x;
output reg [3:0]y;
//case statement used to find 10's complement of input
always @(x)
begin
    case(x)
        4'b0000 : y = 4'b1010;
        4'b0001 : y = 4'b1001;
        4'b0010 : y = 4'b1000;
        4'b0011 : y = 4'b0111;
        4'b0100 : y = 4'b0110;
        4'b0101 : y = 4'b0101;
        4'b0110 : y = 4'b0100;
        4'b0111 : y = 4'b0011;
        4'b1000 : y = 4'b0010;
        4'b1001 : y = 4'b0001;
    endcase
 end
endmodule
