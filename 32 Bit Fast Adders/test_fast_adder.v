`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2022 00:18:21
// Design Name: 
// Module Name: test_fast_adder
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

module test_fast_adder;
reg [31:0]a,b;                  //32-bit input
reg c0;                         //input carry

wire [31:0]cla_sum,cskip_sum,cselect_sum;
wire cla_cout,cskip_cout,cselect_cout;

thirty_two_bit_cselect CSL(a,b,c0,cselect_sum,cselect_cout);
thirty_two_bit_cskip CSK(a,b,c0,cskip_sum,cskip_cout);
thirty_two_bit_cla CLA(a,b,c0,cla_sum,cla_cout);

initial
 begin
    a=30; b=33; c0=0;
    #150 a=25; b=26; c0=1;
 end
 initial #300 $finish;
endmodule
