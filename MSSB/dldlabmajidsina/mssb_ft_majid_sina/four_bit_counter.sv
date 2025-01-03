module two_bit_counter(
  input logic clk,
  input logic clk_en,
  input logic rst,
  input count_en,
  input logic ld_en,
  input logic [3:0] ld,
  output logic [3:0] count,
  output logic cout
);
always @(posedge clk or posedge rst or posedge ld_en) begin
  if(rst)begin
    count <= 2'b00;
    cout <=1'b0;
  end
  else if (ld_en) begin
    count <= ld;
    cout <= 1'b0;
  end
  else if (clk_en & count_en) begin
    {cout, count} <= count - 1;
  end
end
endmodule