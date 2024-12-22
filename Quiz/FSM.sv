module FSM (input j, clk, output logic w);
logic [2:0] ps, ns;
always @(posedge clk) begin
ps <= ns;
end
always@(*)begin
case(ps)
3'b000: w = 1'b0;
3'b001: w = 1'b0;
3'b010: w = 1'b0;
3'b011: w = 1'b0;
3'b100: w = 1'b1;
default: w = 1'b0;
endcase
end
always@(*)begin
case(ps)
3'b000: ns = j?3'b000:3'b001;
3'b001: ns = j?3'b010:3'b001;
3'b010: ns = j?3'b011:3'b001;
3'b011: ns = j?3'b000:3'b100;
3'b100: ns = j?3'b010:3'b001;
default: ns = 3'b0;
endcase
end
endmodule