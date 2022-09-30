`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 21:55:47
// Design Name: 
// Module Name: bcd_adder
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

module bcd_adder(a,b,c0,s,cout);
input [3:0]a,b;
input c0;
output [3:0]s;
output cout;
wire [3:0]z,six;
wire temp_cout,o1,o2,waste_cout;
four_bit_add FB1(a,b,c0,z,temp_cout);
and (o1,z[3],z[2]);
and (o2,z[3],z[1]);
or (cout,o1,o2,temp_cout);
assign six[3]=1'b0;
assign six[0]=1'b0;
assign six[1]=cout;
assign six[2]=cout;
four_bit_add FB2(six,z,0,s,waste_cout);
endmodule
