`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 00:41:25
// Design Name: 
// Module Name: gray_bin
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
//lab-2 Work:1b-Write a program to implement gray binary converter

module gray_bin(gry,bn);
output [0:3]bn;
input [0:3]gry;

assign bn[0]=gry[0];
assign bn[1]=gry[0]^gry[1];
assign bn[2]=gry[0]^gry[1]^gry[2];
assign bn[3]=gry[0]^gry[1]^gry[2]^gry[3];
endmodule
