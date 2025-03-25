
module binary_to_7segment (
    input logic [3:0] bin_in,
    output logic [6:0] seg_out
);
    always_comb begin
        case (bin_in)
            4'b0000: seg_out = 7'b1111110; // 0
            4'b0001: seg_out = 7'b0110000; // 1
            4'b0010: seg_out = 7'b1101101; // 2
            4'b0011: seg_out = 7'b1111001; // 3
            4'b0100: seg_out = 7'b0110011; // 4
            4'b0101: seg_out = 7'b1011011; // 5
            4'b0110: seg_out = 7'b1011111; // 6
            4'b0111: seg_out = 7'b1110000; // 7
            4'b1000: seg_out = 7'b1111111; // 8
            4'b1001: seg_out = 7'b1111011; // 9
            default: seg_out = 7'b0000000; // Blank display for invalid input
        endcase
    end
endmodule
