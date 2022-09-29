`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2022 19:43:10
// Design Name: 
// Module Name: four_to_one_mux
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

module four_to_one_mux(w0,w1,w2,w3,s,o);
input w0,w1,w2,w3;
input [1:0]s;
output o;
//w0 is given as output when s=00, w1 when s=01 and so on
assign o = s[1]?(s[0]?w3:w2):(s[0]?w1:w0);
endmodule
