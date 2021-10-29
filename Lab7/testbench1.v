

module testbench1();

    wire clk, rst;

    assign rst = 1;

    always
        #10 clk = ~clk;


endmodule
