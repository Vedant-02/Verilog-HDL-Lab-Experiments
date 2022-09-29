`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 00:18:50
// Design Name: 
// Module Name: test_multiplier
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
//Lab-4-Work 2: Write a Program to implement a a) Binary Multiplier (3 bit X 3 bit)

module test_multiplier;
reg a0,a1,a2,b0,b1,b2;
wire [6:0]led_o,led_t;
multiplier M1(a0,a1,a2,b0,b1,b2,led_o,led_t);
initial
 begin
    a0=1'b0; a1=1'b0; a2=1'b0;          //0x4
    b0=1'b0; b1=1'b0; b2=1'b1;
    #10 a0=1'b0; a1=1'b1; a2=1'b0;      //2x4
    b0=1'b0; b1=1'b0; b2=1'b1;
    #10 a0=1'b0; a1=1'b1; a2=1'b0;      //2x6
    b0=1'b0; b1=1'b1; b2=1'b1;
    #10 a0=1'b0; a1=1'b0; a2=1'b1;      //4x6
    b0=1'b0; b1=1'b1; b2=1'b1;
  end
  initial #50 $finish;
endmodule
