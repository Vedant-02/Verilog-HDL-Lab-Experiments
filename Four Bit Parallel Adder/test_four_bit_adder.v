`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2022 03:17:32
// Design Name: 
// Module Name: test_four_bit_adder
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

module test_four_bit_adder;
wire [3:0]s;
wire c;
reg [3:0]a,b;
reg c0;

four_bit_adder FBA(a,b,c0,s,c);
initial 
 begin
    a=4'b0000; b=4'b0000; c0=1'b0;      //a=0000,b=0000,c0=0
    #10 a=4'b0001; b=4'b0001;           //a=0001,b=0001,c0=0
    #10 b=4'b0010;                      //a=0001,b=0010,c0=0
    #10 a=4'b0010; b=4'b0100;           //a=0010,b=0100,c0=0
    #10 a=4'b0011; b=4'b0001;           //a=0011,b=0001,c0=0
    #10 a=4'b1000; b=4'b1111;           //a=1000,b=1111,c0=0
    #10 a=4'b1000; b=4'b1000;           //a=1000,b=1000,c0=0
    #10 a=4'b1100; b=4'b1100;           //a=1100,b=1100,c0=0
    #10 a=4'b1110; b=4'b1110;           //a=1110,b=1110,c0=0
    #10 a=4'b1111; b=4'b1111;           //a=1111,b=1111,c0=0
 end
 
 initial #100 $finish;
endmodule
