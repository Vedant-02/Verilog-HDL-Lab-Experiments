`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 23:32:26
// Design Name: 
// Module Name: carry_select
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

//code for 4-bit carry select
module carry_select(a,b,c0,s,cout);
input [3:0]a,b;
input c0;
output[3:0]s;
output cout;

wire [3:0]x,y,c1,c2,c3,c4,c5,c6,c7,c8;
//unit-1 of four bit adder with carry=0
full_adder_delay F1(a[0],b[0],0,x[0],c1);
full_adder_delay F2(a[1],b[1],c1,x[1],c2);
full_adder_delay F3(a[2],b[2],c2,x[2],c3);
full_adder_delay F4(a[3],b[3],c3,x[3],c4);
//duplicate unit of four bit adder with carry=1
full_adder_delay F5(a[0],b[0],1,y[0],c5);
full_adder_delay F6(a[1],b[1],c5,y[1],c6);
full_adder_delay F7(a[2],b[2],c6,y[2],c7);
full_adder_delay F8(a[3],b[3],c7,y[3],c8);

assign cout=c0?c8:c4,
s[3:0]=c0?y[3:0]:x[3:0];
endmodule
