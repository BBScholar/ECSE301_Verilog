

module arbiter(
    input clk,
    input rst,
    input [2:0] rq,
    output reg [2:0]  gt
);

    localparam IDLE = 3'b000;
    localparam GT1 = 3'b001;
    localparam GT2 = 3'b010;
    localparam GT3 = 3'b100;

    always @ (negedge rst) begin
        gt <= IDLE;
    end

    always @ (posedge clk) begin

        if(rq[0]) 
            gt <= GT1;
        else if(~rq[0] & rq[1])
            gt <= GT2;
        else if(~rq[0] & ~rq[1] & rq[2])
            gt <= GT3;
        else
            gt <= IDLE;

    end

endmodule
