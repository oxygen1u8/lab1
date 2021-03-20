`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2021 21:15:27
// Design Name: 
// Module Name: top_tb
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


module top_tb();

    reg     [9:0]   SW;

    wire    [6:0]   C;

    top dut(.SW(SW), .C(C));
    
    initial begin
        SW[9:8] = 'b00;
        SW[3:0] = 'b1100;
        #10;
        SW[3:0] = 'b1111;
        #10;
        SW[3:0] = 'b1101;
        #10;
        SW[3:0] = 'b0110;
        #10;
        SW[3:0] = 'b1110;
        #10;
        SW[9:8] = 'b01;
        SW[7:4] = 'b1100;
        #10;
        SW[7:4] = 'b1111;
        #10;
        SW[7:4] = 'b1101;
        #10;
        SW[7:4] = 'b0110;
        #10;
        SW[9:8] = 'b10;
        SW[3:0] = 'b1100;
        #10;
        SW[3:0] = 'b1111;
        #10;
        SW[3:0] = 'b1101;
        #10;
        SW[3:0] = 'b0110;
        #10;
        SW[3:0] = 'b1110;
        #10;
        SW[9:8] = 'b11;
        SW[3:0] = 'b1100;
        #10;
        SW[3:0] = 'b1111;
        #10;
        SW[3:0] = 'b1101;
        #10;
        SW[3:0] = 'b0110;
        #10;
        SW[3:0] = 'b1110;
        $stop;
    end
    
endmodule
