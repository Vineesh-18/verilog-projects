module mod10_display(
    input clk,
    input reset,
    output [3:0] count,
    output [6:0] seg
);

wire slow_clk;

// clock divider
clock_divider c1 (
    .clk(clk),
    .reset(reset),
    .slow_clk(slow_clk)
);

// counter
mod_10_counter c2 (
    .clk(slow_clk),
    .reset(reset),
    .count(count)
);

// display
seven_segment d1 (
    .num(count),
    .seg(seg)
);

endmodule