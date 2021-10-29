

module synchronizer(
    input x,
    input clk,
    output reg y,
);

always @ (posedge clk) begin
    y <= x
end

endmodule
