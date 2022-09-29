`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 15:41:56
// Design Name: 
// Module Name: test_pe_for
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

module test_pe_for;
reg [3:0]d;
wire v;
wire [1:0]out;
priority_enc_for_loop PF1(d,out,v);
initial
 begin
    d=4'b0000;
    #10 d=4'b0001;
    #10 d=4'b0010;
    #10 d=4'b0100;
    #10 d=4'b1000;
    #10 d=4'b0111;
    #10 d=4'b0011;
    #10 d=4'b1010;
 end
 initial #80 $finish;
endmodule
