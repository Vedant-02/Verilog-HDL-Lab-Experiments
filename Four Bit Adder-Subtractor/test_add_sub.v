`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 18:54:34
// Design Name: 
// Module Name: test_add_sub
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

module test_add_sub;
reg [3:0]a,b;
reg c0;
wire [3:0]s;
wire ovf;

add_sub A1(a,b,c0,s,ovf);               //c0=0 implies adder circuit
initial                                 //c0=1 implies subtractor circuit
 begin
    a=4'b0000; b=4'b0001; c0=1'b0;      //a=0000,b=0000,c0=0
    #10 a=4'b0001; b=4'b0001;           //a=0001,b=0001,c0=0
    #10 b=4'b0010;                      //a=0001,b=0010,c0=0
    #10 a=4'b0010; b=4'b0100;           //a=0010,b=0100,c0=0
    #10 a=4'b0011; b=4'b0001;           //a=0011,b=0001,c0=0
    #10 a=4'b1111; b=4'b1000; c0=1'b1;  //a=1000,b=1111,c0=1
    #10 a=4'b1000; b=4'b1000;           //a=1000,b=1000,c0=1
    #10 a=4'b1101; b=4'b1100;           //a=1100,b=1100,c0=1
 end
 
 initial #100 $finish;
endmodule
