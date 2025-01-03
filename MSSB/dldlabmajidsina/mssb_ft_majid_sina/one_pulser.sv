module one_pulser (
  input logic clk,
  input logic clkPB,
  input logic rst,
  output logic clk_en
);
parameter A = 2'b00;
parameter B = 2'b01;
parameter C = 2'b10;
logic [1:0] CS , NS ;
always_ff @(posedge clk, posedge rst) begin
  if(rst)
    CS <= A;
  else
    CS <= NS;
end
always_comb begin
  NS = CS ;
  clk_en = 1'b0 ;
    
  case(CS)
    A: NS = clkPB? B: A ;
    B: begin
      NS = C ;
      clk_en = 1'b1 ;
    end
  C: begin
    NS = clkPB?C:A;
    clk_en = 1'b0;
    end
  endcase
end
endmodule