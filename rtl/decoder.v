module decoder ( input wire [3:0] x, output reg [6:0] y );

    always @(x) begin
        case(x)
            'd0:     y <= 'b1000000;
            'd1:     y <= 'b1111001;
            'd2:     y <= 'b0100100;
            'd3:     y <= 'b0110000;
            'd4:     y <= 'b0011001;
            'd5:     y <= 'b0010010;
            'd6:     y <= 'b0000010;
            'd7:     y <= 'b1111000;
            'd8:     y <= 'b0000000;
            'd9:     y <= 'b0010000;
            'd10:    y <= 'b0001000;
            'd11:    y <= 'b0000011;
            'd12:    y <= 'b1000110;
            'd13:    y <= 'b0100001;
            'd14:    y <= 'b0000100;
            'd15:    y <= 'b0001110;
            default: y <= 'b1111111;
        endcase
    end

endmodule