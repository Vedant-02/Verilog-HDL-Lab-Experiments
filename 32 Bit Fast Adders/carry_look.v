`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 21:09:04
// Design Name: 
// Module Name: carry_look
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

//code for 4-bit carry look ahead adder
module carry_look(a,b,c0,s,cout);
input [3:0]a,b;
input c0;
output [3:0]s;
output cout;

wire p0,p1,p2,p3,g0,g1,g2,g3,c1,c2,c3,x0,x1,x2,x3;
//here pi and gi are carry propagate and carry generate
//for 1st bit
xor #10 (p0,a[0],b[0]);
xor #10 (s[0],p0,c0);
and #5 (g0,a[0],b[0]);
and #5 (x0,p0,c0);
or #5 (c1,g0,x0);
//for 2nd bit
xor #10 (p1,a[1],b[1]);
xor #10 (s[1],p1,c1);
and #5 (g1,a[1],b[1]);
and #5 (x1,p1,c1);
or #5 (c2,g1,x1);
//for 3rd bit
xor #10 (p2,a[2],b[2]);
xor #10 (s[2],p2,c2);
and #5 (g2,a[2],b[2]);
and #5 (x2,p2,c2);
or #5 (c3,g2,x2);
//for 4th bit
xor #10 (p3,a[3],b[3]);
xor #10 (s[3],p3,c3);
and #5 (g3,a[3],b[3]);
and #5 (x3,p3,c3);
or #5 (cout,g3,x3);

endmodule
