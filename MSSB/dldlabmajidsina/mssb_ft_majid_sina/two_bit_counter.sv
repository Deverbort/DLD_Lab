module two_bit_counter(
  input logic clk,
  input logic clk_en,
  input logic rst,
  input logic count_en,
  output logic [1:0] count,
  output logic cout
);
always @(posedge clk or posedge rst) begin
  if(rst)begin
    count <= 2'b00;
    cout <=1'b0;
  end
  else if (clk_en & count_en) begin
    {cout, count} <= count + 1;
  end
end
endmodule
