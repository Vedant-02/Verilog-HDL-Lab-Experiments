`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 22:32:47
// Design Name: 
// Module Name: bcd_subtractor
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

module bcd_subtractor(a,b,s,cout);
input [3:0]a,b;
output reg [3:0]s;
output cout;
wire [3:0]new_b,temp_s,new_s;
//made of 1 bcd adder and 10's compelement is given as input
//if cout=1 then 10's complement of output is taken else no
tens_comp T1(b,new_b);
bcd_adder BA1(a,new_b,0,temp_s,cout);
tens_comp T2(temp_s,new_s);
always@(cout)
    if(cout==1)
    begin
        assign s=temp_s;
    end
    else
    begin
        assign s=new_s;
    end
endmodule
