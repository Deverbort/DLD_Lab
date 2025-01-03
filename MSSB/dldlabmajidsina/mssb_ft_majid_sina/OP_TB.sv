`timescale 1ns/1ns
module OP_TB();
  logic clk;
  logic clkPB;
  logic rst;
  logic clk_en;
  one_pulser UUT(
    .clk(clk),
    .clkPB(clkPB),
    .rst(rst),
    .clk_en(clk_en)
    );
  always #1 clk = ~clk;
  initial begin
    clk = 0;
    rst = 0;
    clkPB = 0;
    rst = 1;
    #10 rst = 0;
    // TEST 1
    #24 clkPB = 1;
    #8 clkPB = 0;
    // TEST 2
    #17 clkPB = 1;
    #22 clkPB = 0;
    // TEST 3
    #11 clkPB = 1;
    #15 clkPB = 0;
    #20
    $stop;
  end
endmodule