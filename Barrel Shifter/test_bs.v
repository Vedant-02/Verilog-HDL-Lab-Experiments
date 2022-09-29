`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 12:27:41
// Design Name: 
// Module Name: test_bs
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
//Lab-5:Work 1.Write a program to implement a Barrel Shifter.

module test_bs;
reg [1:0]s;
reg [3:0]w;
wire [3:0]y;
barrel_shifter BS1(s,w,y);
initial
 begin
    w = 4'b0110; s=2'b00;
    #10 s=2'b01;
    #10 s=2'b10;
    #10 s=2'b11;
 end
 initial #40 $finish;
endmodule
