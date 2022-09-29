`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2022 19:25:06
// Design Name: 
// Module Name: comparator
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

module comparator(a,b,s,AeqB,AgrtB,AlessB);
input [3:0]a,b;
output reg AeqB,AgrtB,AlessB;          //AeqB=output when a=b
                                       //AgrtB=output when a>b, AlessB=output when a<b
output [3:0]s;
//4 full adders used to make four bit adder.
//carry of each full adder is passed as input to the next full adder
wire c0,c,c1,c2,c3,ovf;
assign c0=1'b1;                     //c0=1 because subtractor 
full_adder F1(a[0],b[0]^c0,c0,s[0],c1);
full_adder F2(a[1],b[1]^c0,c1,s[1],c2);
full_adder F3(a[2],b[2]^c0,c2,s[2],c3);
full_adder F4(a[3],b[3]^c0,c3,s[3],c);
assign ovf=c^s[3];
always @(*)
    begin
      if(s==4'b0000)                //when a=b, AeqB=1
        begin
      	 assign AeqB=1'b1;
         assign AgrtB=1'b0;
         assign AlessB=1'b0;
        end
       else if((ovf^s[3])==1'b1)    //when a>b, AgrtB=1
        begin  
         assign AeqB=1'b0;
         assign AgrtB=1'b1;
         assign AlessB=1'b0;
        end
      else                          //when a<b, AlessB=1
        begin
      	 assign AeqB=1'b0;
         assign AgrtB=1'b0;
         assign AlessB=1'b1;
        end
    end
endmodule
