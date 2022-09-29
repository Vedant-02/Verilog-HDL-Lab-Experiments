`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 22:54:36
// Design Name: 
// Module Name: test_bcd_subtractor
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

module test_bcd_subtractor;
reg [3:0]a,b;
wire [3:0]s;
wire cout;
bcd_subtractor BS1(a,b,s,cout);
initial
 begin
    a=4'b0000; b=4'b0000;                   //0+0
    #10 a=4'b0011; b=4'b0010;               //3-2
    #10 a=4'b0111; b=4'b0100;               //7-4
    #10 a=4'b1000; b=4'b1001;               //8-9
    #10 a=4'b1010; b=4'b1000;               //10-8
    #10 a=4'b0100; b=4'b0101;               //4-5
 end
 initial #60 $finish;
endmodule
