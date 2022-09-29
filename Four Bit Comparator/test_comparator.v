`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 19:54:57
// Design Name: 
// Module Name: test_comparator
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
//Modify the unit to implement a comparator. Test using the test benches.

module test_comparator;
reg [3:0]a,b;
wire [3:0]s;
wire AeqB,AgrtB,AlessB;
comparator C1(a,b,s,AeqB,AgrtB,AlessB);
initial
 begin
    a=4'b0000; b=4'b0000;               //a=0000,b=0000
    #10 a=4'b0011; b=4'b0001;           //a=0001,b=0001
    #10 b=4'b0010;                      //a=0001,b=0010
    #10 a=4'b0010; b=4'b0100;           //a=0010,b=0100
    #10 a=4'b0011; b=4'b0001;           //a=0011,b=0001
    #10 a=4'b1000; b=4'b1000;           //a=1000,b=1000
    #10 a=4'b1110; b=4'b1110;           //a=1110,b=1110
    #10 a=4'b1111; b=4'b1111;           //a=1111,b=1111
 end
 
 initial #100 $finish;
endmodule
