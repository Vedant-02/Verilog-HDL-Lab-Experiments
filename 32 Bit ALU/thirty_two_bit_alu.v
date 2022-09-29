`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2022 14:03:46
// Design Name: 
// Module Name: thirty_two_bit_alu
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
//Lab-5:Work 2. Write a Program to implement a 32 bit ALU.

module thirty_two_bit_alu(a,b,inp,out);
input [31:0]a,b;
input [2:0]inp;
output reg [31:0]out;
always@(inp)
 begin
    case(inp)
        3'b000: out = 0;        //clear
        3'b001: out = a+b;      //addition
        3'b010: out = a-b;      //subtraction
        3'b011: out= a<<1;      //left shift
        3'b100: out= a>>1;      //right shift
        3'b101: out= a&b;       //AND
        3'b110: out= a|b;       //OR
        3'b111: out= a^b;       //XOR
     endcase
 end
endmodule
