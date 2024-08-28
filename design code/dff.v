`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 15:48:40
// Design Name: 
// Module Name: dff
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


module dff(rs,clk,D,Q);
input rs,clk;
input [4:0]D;
output reg [4:0]Q=5'd0;
always@(posedge clk)
begin
if(rs)
Q<=0;
else
Q<=D;
end
endmodule
