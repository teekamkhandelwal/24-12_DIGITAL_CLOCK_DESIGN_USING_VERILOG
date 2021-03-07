module rtc(input rst,clk, output [3:0] sl,sm,ml,mm,hl,hm );
  reg [3:0] sl0,sm0,ml0,mm0,hl0,hm0;
  wire clk_1sec;
  assign sl=sl0;
  assign sm=sm0;
  assign ml=ml0;
  assign mm=mm0;
  assign hl=hl0;
  assign hm=hm0;
  assign clk_1sec=clk;//let clk_1sec is drived by 1sec time period clock
  always@(posedge clk)
    if(rst) begin
    sl0<=0;
      sm0<=0;
      ml0<=0;
      mm0<=0;
      hl0<=0;
      hm0<=0;
    end
  else if(sl0<9) begin
    if(clk_1sec)
    sl0<=sl0+1;
  end
    else if(sm0<5) begin
    sm0<=sm0+1;  
      sl0<=0;
    end
  else if(ml0<9) begin
  sl0<=0;
    sm0<=0;
    ml0<=ml0+1;
  end
  else if(mm0<5) begin
  sl0<=0;
    sm0<=0;
    ml0<=0;
    mm0<=mm0+1;  
  end
  else if(((hm0<2) && (hl0<9))||((hm0==2)&&(hl0<3))) begin
    sl0<=0;
    sm0<=0;
    ml0<=0;
    mm0<=0;
    hl0<=hl0+1;
  end
  else if(hm0<2)
    begin
    sl0<=0;
    sm0<=0;
    ml0<=0;
    mm0<=0;
    hl0<=0;
    hm0<=hm0+1; 
    end
          else if((hm0==2)&&(hl0==3)&&(mm0==5)&&(ml0==9)&&(sm0==5)&&(sl0==9)) begin
            sl0<=0;
    sm0<=0;
    ml0<=0;
    mm0<=0;
    hl0<=0;
    hm0<=0;
          end
          endmodule
          
