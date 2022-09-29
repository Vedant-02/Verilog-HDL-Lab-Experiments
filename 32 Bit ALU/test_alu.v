`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2022 14:19:15
// Design Name: 
// Module Name: test_alu
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

module test_alu;
reg [31:0]a,b;
reg [2:0]inp;
wire [31:0]out;
thirty_two_bit_alu A1(a,b,inp,out);
initial
 begin
    a=21; b=10; inp=3'b001;         //addition
    #10 a=54; b=9; inp=3'b010;      //subtraction
    #10 a=10; inp=3'b011;           //left shift
    #10 a=15; inp=3'b100;           //right shift
    #10 inp=3'b000;                 //clear
    #10 a=1; b=0; inp=3'b101;       //AND
    #10 a=0; b=1; inp=3'b110;       //OR
    #10 a=1; b=1; inp=3'b111;       //XOR
 end
 initial #80 $finish;
endmodule
