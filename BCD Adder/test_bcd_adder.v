`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 22:09:17
// Design Name: 
// Module Name: test_bcd_adder
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

module test_bcd_adder;
reg [3:0]a,b;
reg c0;
wire [3:0]s;
wire cout;
bcd_adder B1(a,b,c0,s,cout);
initial
 begin
    a=4'b0000; b=4'b0000; c0=1'b0;          //0+0
    #10 a=4'b0010; b=4'b0011;               //2+3
    #10 a=4'b0100; b=4'b0111;               //4+7
    #10 a=4'b1000; b=4'b1001;c0=1'b1;       //8+9
    #10 a=4'b1000; b=4'b1010;               //8+10
    #10 a=4'b0100; b=4'b0101;               //4+5
 end
 initial #70 $finish;
endmodule
