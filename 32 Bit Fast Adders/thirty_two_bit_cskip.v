`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 23:16:59
// Design Name: 
// Module Name: thirty_two_bit_cskip
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
//Lab-3:Vedant A Sontake(B20EE095)
//Write a Program to Implement the following Fast Adders [32 bit]
//Carry Look Ahead Adder,Carry Skip Adder,Carry Select Adder

module thirty_two_bit_cskip(a,b,c0,s,cout);
input [31:0]a,b;
input c0;
output [31:0]s;
output cout;

//32 bit carry skip adder with 8 4-bit Carry Skip Adder
wire c1,c2,c3,c4,c5,c6,c7;
carry_skip CS1(a[3:0],b[3:0],c0,s[3:0],c1);
carry_skip CS2(a[7:4],b[7:4],c1,s[7:4],c2);
carry_skip CS3(a[11:8],b[11:8],c2,s[11:8],c3);
carry_skip CS4(a[15:12],b[15:12],c3,s[15:12],c4);
carry_skip CS5(a[19:16],b[19:16],c4,s[19:16],c5);
carry_skip CS6(a[23:20],b[23:20],c5,s[23:20],c6);
carry_skip CS7(a[27:24],b[27:24],c6,s[27:24],c7);
carry_skip CS8(a[31:28],b[31:28],c7,s[31:28],cout);

endmodule
