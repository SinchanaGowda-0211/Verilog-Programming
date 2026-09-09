muxmodule mux81(input [7:0]i,input [2:0]s,output reg y);
  always @(*)
    begin
      y=i[s];
    end
    endmodule
      
