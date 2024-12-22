`timescale 1ns/1ns
module TB2();
wire w;
logic j;
logic clk;
FSM DUT(.j(j),.w(w),.clk(clk));
always #5 clk = ~clk;
initial begin
#1 clk = 1;
#1 j = 0;
#20 j = 0;
#5 j = 1;
#5 j = 1;
#5 j = 0;
#5 j = 1;
$stop;
end
endmodule
