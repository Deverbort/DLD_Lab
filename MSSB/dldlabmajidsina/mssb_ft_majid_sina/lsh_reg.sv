module lsh_reg #(parameter WIDTH)(
  input logic clk,
  input logic clk_en,
  input logic rst,
  input logic sh_en,
  input logic serIn, 
  output logic [WIDTH-1:0] regOut
);
always @(posedge clk or posedge rst) begin
  if(rst) begin
    regOut <= {WIDTH{1'b0}};
  end
  else if (clk_en & sh_en) begin
    regOut <= {regOut[WIDTH-2:0], serIn};
  end
end
endmodule