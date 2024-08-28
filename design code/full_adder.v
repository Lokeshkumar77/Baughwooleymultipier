`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 12:17:49
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a,
    input b,
    input cin,
    output sum,
    output Cout);

    wire s1,c1,c2;
    half_adder ha1(a,b,s1,c1);
    half_adder ha2(cin,s1,sum,c2);
    assign Cout=c1|c2;

endmodule
