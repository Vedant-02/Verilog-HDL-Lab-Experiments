`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2022 14:42:07
// Design Name: 
// Module Name: barrel_shifter
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

module barrel_shifter(s,w,y);
input [1:0]s;
input [3:0]w;
output [3:0]y;
//4 4:1 mux used in barrel shifter
four_to_one_mux F1(w[3],w[0],w[1],w[2],s,y[3]);
four_to_one_mux F2(w[2],w[3],w[0],w[1],s,y[2]);
four_to_one_mux F3(w[1],w[2],w[3],w[0],s,y[1]);
four_to_one_mux F4(w[0],w[1],w[2],w[3],s,y[0]);
endmodule
