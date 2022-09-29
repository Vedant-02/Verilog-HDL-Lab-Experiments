`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2022 20:22:50
// Design Name: 
// Module Name: four_bit_adder
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
//Lab-1-Work 3: Use Full Adder to Create a Four Bit Adder. Write its test bench and Simulate.

module four_bit_adder(a,b,c0,s,c);
input [3:0]a,b;
input c0;
output [3:0]s;
output c;

//4 full adders used to make four bit adder.
//carry of each full adder is passed as input to the next full adder

wire c1,c2,c3;
full_adder F1(a[0],b[0],c0,s[0],c1);
full_adder F2(a[1],b[1],c1,s[1],c2);
full_adder F3(a[2],b[2],c2,s[2],c3);
full_adder F4(a[3],b[3],c3,s[3],c);

endmodule
