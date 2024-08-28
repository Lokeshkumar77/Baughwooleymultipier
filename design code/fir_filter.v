`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 12:25:56
// Design Name: 
// Module Name: iir_filter
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


module iir_filter(x_in, clk, rst, y_out);
    
    input clk, rst;
    input [4:0] x_in;
    output reg [8:0] y_out;  
    wire  [4:0]c1,c2,c3;
    wire  [4:0]Q1,Q2,Q3;
    wire  [8:0]po1,po2,po3;
    wire  [8:0]so1,so2;
    assign c1=5'b01000;
    assign c2=5'b00100;
    assign c3=5'b01010;
    
    dff d1(1'b0,clk,x_in,Q1);
    dff d2(1'b0,clk,Q1,Q2);
    dff d3(1'b0,clk,Q2,Q3);
    Baughwooley b0(c1,x_in,po1);
    Baughwooley b1(c2,Q1,po2);
    Baughwooley b2(c3,Q3,po3);
    assign so1=po1+po2;
    assign so2=so1+po3;
    always@(posedge clk) 
    begin
        if(rst)
        y_out<=9'd0;
        
        else
        y_out<=so2;
    end
endmodule
