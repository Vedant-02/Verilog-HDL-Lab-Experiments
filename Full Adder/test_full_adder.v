`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2022 19:35:42
// Design Name: 
// Module Name: test_full_adder
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
//Lab-1-Work 2: Use half adder to create full adder

module test_full_adder;
wire s,c;
reg x,y,z;

full_adder F1(x,y,z,s,c);
initial
 begin
    x=1'b0; y=1'b0; z=1'b0;         //x=0,y=0,z=0
    #10 z=1'b1;                     //x=0,y=0,z=1
    #10 y=1'b1; z=1'b0;             //x=0,y=1,z=0
    #10 z=1'b1;                     //x=0,y=1,z=1
    #10 x=1'b1; y=1'b0; z=1'b0;     //x=1,y=0,z=0
    #10 z=1'b1;                     //x=1,y=0,z=1
    #10 y=1'b1; z=1'b0;             //x=1,y=1,z=0
    #10 z=1'b1;                     //x=1,y=1,z=1
 end
 
 initial #100 $finish;
endmodule
