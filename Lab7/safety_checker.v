
module safety_checker(
    input [2: 0] gt,
    output [2: 0] gs,
    output err
);

    assign gs[0] = gt[0] & ~gt[1] & ~gt[2];
    assign gs[1] = ~gt[0] & gt[1] & ~gt[2];
    assign gs[2] = ~gt[0] & ~gt[1] & gt[2];
    

    assign err = (gt[0] & gt[1]) | (gt[0] & gt[2]) | (gt[1] & gt[2]);


endmodule
