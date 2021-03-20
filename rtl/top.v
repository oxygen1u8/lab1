`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2021 20:54:02
// Design Name: 
// Module Name: top
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


module top(
    input           [9:0]   SW,
    input           [7:0]   AN,
    input                   DP,
    output          [6:0]   C
    );
    
    reg      [3:0]   tmp;

    assign AN = 'b0000_0001;
    assign DP = 'b1;
    
    decoder dc1(.x(tmp), .y(C));
    
    always @(*) begin
        case(SW[9:8])
            'b00: tmp[3:0] = SW[0]*SW[1]+SW[1]*SW[2]+SW[2]*SW[3]; 
            'b01: tmp[3:0] = SW[7:4] & 'b0101;
            'b10: tmp[3:0] = SW[0] & SW[1] & SW[2] ^ SW[3];
            'b11: tmp[3:0] = SW[3:0];
        endcase
    end

endmodule
