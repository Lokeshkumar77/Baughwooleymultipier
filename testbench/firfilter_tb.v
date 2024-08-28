`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 12:32:27
// Design Name: 
// Module Name: iirfilter_tb
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


module iirfilter_tb();
    
    reg clk, rst;
    reg [3:0] x_in;
    wire [6:0] y_out;
    iir_filter dut(.x_in(x_in), .clk(clk), .rst(rst), .y_out(y_out));
    
    always #5 clk = ~clk;
    
    initial begin
    clk = 0; rst = 1; 
        x_in = 4'd3;
    #10 rst = 0; 
    #15 x_in = 4'd1;
    #20 x_in = 4'd2;
    #20 $finish;
    end
    
endmodule
