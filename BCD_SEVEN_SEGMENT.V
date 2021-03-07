
module segment_7(input [3:0]bcd, output reg [6:0]y);
  always @(*)
  case(bcd)
    4'd0: y = 7'b1111_110;
    4'd1: y = 7'b0110_000;
    4'd2: y = 7'b1101_101;
    4'd3: y = 7'b1111_001;
    4'd4: y = 7'b0110_011;
    4'd5: y = 7'b1011_011;
    4'd6: y = 7'b1011_111;
    4'd7: y = 7'b1110_000;
    4'd8: y = 7'b1111_111;
    4'd9: y = 7'b1111_011;
  endcase
  endmodule
