`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 15:31:23
// Design Name: 
// Module Name: test_pe_casex
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
//Lab-5:Work 3. Write a program to implement a 4 line to 2 line priority encoder using
//a. Casex statements b. For loop

module test_pe_casex;
reg [3:0]d;
wire v;
wire [1:0]out;
priority_encoder_casex P1(d,out,v);
initial
 begin
    d=4'b0000;
    #10 d=4'b0001;
    #10 d=4'b0010;
    #10 d=4'b0100;
    #10 d=4'b1000;
    #10 d=4'b0101;
    #10 d=4'b1001;
 end
 initial #70 $finish;
endmodule
