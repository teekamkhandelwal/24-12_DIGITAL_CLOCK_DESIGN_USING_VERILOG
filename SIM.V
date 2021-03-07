// Code your testbench here
// or browse Examples
module tb();
  wire [6:0] sl,sm,ml,mm,hl,hm;
  reg clk;
  reg rst;
  
  
  always#1 clk=~clk;
  
  top_rtc r0(rst,clk,sl,sm,ml,mm,hl,hm);
  
  initial begin
  clk=0;
    rst=0;
    #5;
    rst=1;
    #5;
    rst=0;
    #4500$finish();
  end
  initial begin
    $dumpvars();
    $dumpfile("dump.vcd");
   
      $monitor($time, "rst= %b,SEC_L= %b, SEC_M= %b, MIN_L= %b, MIN_M= %b, H_L= %b, H_M= %b", rst, sl, sm, sl, mm, hl, hm);

  end
endmodule
