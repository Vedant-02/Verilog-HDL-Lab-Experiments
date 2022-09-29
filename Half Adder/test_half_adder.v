`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2022 19:44:34
// Design Name: 
// Module Name: test_half_adder
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
//Lab-1-Work 1: Create half adder. write its test bench and simulate

module test_half_adder;
wire s,c;
reg a,b;

half_adder H1(a,b,s,c);
initial 
 begin
     a=1'b0;                //a=0
     b=1'b0;                //b=0
     #10 b=1'b1; a=1'b0;    //a=0,b=1
     #10 a=1'b1; b=1'b0;    //a=1,b=0
     #10 a=1'b1; b=1'b1;    //a=1,b=1
 end
 
 initial #50 $finish;
endmodule
