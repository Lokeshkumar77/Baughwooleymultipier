`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 12:02:40
// Design Name: 
// Module Name: Baughwooley
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


module Baughwooley(a_in, b_in, c_out);
    parameter n = 5;

    input [n-1:0] a_in, b_in;
    output [2*(n-1):0] c_out;
    
    wire [52:0]w;
    
    assign c_out[0] = a_in[0]&b_in[0];
    
    half_adder HA1(a_in[1]&b_in[0], a_in[0]&b_in[1], c_out[1], w[0]);
    half_adder HA2(a_in[2]&b_in[0], a_in[1]&b_in[1], w[1], w[2]);
    half_adder HA3((a_in[3]&b_in[0]), a_in[2]&b_in[1], w[3], w[4]);
    half_adder HA4(~(a_in[4]&b_in[0]), a_in[3]&b_in[1], w[5], w[6]);
    
    full_adder FA1(w[0], w[1], a_in[0]&b_in[2], c_out[2],w[7]);
    full_adder FA2(w[2], w[3], a_in[1]&b_in[2],w[8], w[9]);
    full_adder FA3(w[5], a_in[2]&b_in[2], w[4], w[10],w[11]);
    full_adder FA4(~(a_in[4]&b_in[1]), a_in[3]&b_in[2], w[6], w[12],w[13]);
    
    full_adder FA5(w[7], w[8], (a_in[0]&b_in[3]), c_out[3], w[14]);
    full_adder FA6(w[9], w[10], (a_in[1]&b_in[3]), w[15],w[16]);
    full_adder FA7(w[11], w[12], (a_in[2]&b_in[3]), w[17],w[18]);
    full_adder FA8(w[13], ~(a_in[4]&b_in[2]), (a_in[3]&b_in[3]), w[19],w[20]);
    
    full_adder FA9(w[14], w[15], ~(a_in[0]&b_in[4]), c_out[4], w[21]);
    full_adder FA10(w[16], w[17], ~(a_in[1]&b_in[4]), w[22],w[23]);
    full_adder FA11(w[18], w[19], ~(a_in[2]&b_in[4]), w[24],w[25]);
    full_adder FA12(w[20], ~(a_in[4]&b_in[3]), ~(a_in[3]&b_in[4]), w[26],w[27]);
    full_adder FA13(w[21], w[22], 1'b1,c_out[5] ,w[29]);
    
    half_adder HA5( w[23], w[24], w[30], w[31]);
    half_adder HA6(w[25],w[26], w[32], w[33]);
    half_adder HA7(w[27], (a_in[4]&b_in[4]), w[34],w[35]);
    half_adder HA8(w[29], w[30],c_out[6], w[36]);
    
     half_adder HA9(w[31], w[32], w[37], w[38]);
    half_adder HA10(w[33],w[34],w[39], w[40]);
    half_adder HA11(w[35],1'b1, w[41],w[42]);
    half_adder HA12(w[36], w[37],c_out[7], w[43]);
    
     half_adder HA13(w[38], w[39], w[44], w[45]);
    half_adder HA14(w[40],w[41],w[46], w[47]);
    half_adder HA15(w[43], w[44],c_out[8],w[49]);
    half_adder HA16(w[45], w[46],w[50], w[51]);
    half_adder HA17(w[49], w[50],c_out[9],w[52]);
endmodule
