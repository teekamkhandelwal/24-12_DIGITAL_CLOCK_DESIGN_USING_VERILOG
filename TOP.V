module top_rtc(input rst, clk, output[6:0] S_L, S_M, M_L, M_M, H_L, H_M);
  wire[3:0]w1,w2,w3,w4,w5,w6;
  segment_7 s1(.bcd(w1),.y(S_L));
  segment_7 s2(.bcd(w2),.y(S_M));
  segment_7 s3(.bcd(w3),.y(M_L));
  segment_7 s4(.bcd(w4),.y(M_M));
  segment_7 s5(.bcd(w5),.y(H_L));
  segment_7 s6(.bcd(w6),.y(H_M));
  rtc c1(.clk(clk),.rst(rst),.sl(w1),.sm(w2),.ml(w3),.mm(w4),.hl(w5),.hm(w6));
endmodule
       
