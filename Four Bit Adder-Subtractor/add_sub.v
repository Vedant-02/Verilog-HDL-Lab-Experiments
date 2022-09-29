`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 17:09:39
// Design Name: 
// Module Name: add_sub
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
//Lab-3: By Vedant A Sontake(B20EE095) 
//Work 1:Modify the Four Bit Adder created in Lab 1 to implement an Adder-Subtractor Unit.
//Indicate overflow. Test using the test benches.

module add_sub(a,b,c0,s,ovf);
input [3:0]a,b;
input c0;
output [3:0]s;
output ovf;                 //overflow

//4 full adders used to make four bit adder.
//carry of each full adder is passed as input to the next full adder
wire c,c1,c2,c3;
//modified 4 bit adder. b[i]^c0 instead of b[i] is used.
FA_add_sub F1(a[0],b[0]^c0,c0,s[0],c1);
FA_add_sub F2(a[1],b[1]^c0,c1,s[1],c2);
FA_add_sub F3(a[2],b[2]^c0,c2,s[2],c3);
FA_add_sub F4(a[3],b[3]^c0,c3,s[3],c);
assign ovf=c^s[3];          //calculation of overflow
endmodule
