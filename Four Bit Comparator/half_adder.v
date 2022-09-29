`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2022 19:39:21
// Design Name: 
// Module Name: half_adder
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
//Lab-1-Work 1: Create half adder. write its test bench and simulate

module half_adder(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;       //sum gives the output as xor of the 2 inputs in half adder
assign c=a&b;       //carry gives the output as & of the 2 inputs in half adder
endmodule
