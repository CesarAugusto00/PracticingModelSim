
`timescale 1ns / 1ps

module tb_counter;

reg clk;
reg reset;
wire [3:0] count;

// Instantiate the counter module
counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generator: toggle clk every 10ns
always #10 clk = ~clk;

initial begin
    // Initial values
    clk = 0;
    reset = 1;

    // Apply reset
    #20;
    reset = 0;

    // Let it run
    #200;

    // End simulation
    $stop;
end

endmodule
