module tb_mod10;

reg clk, reset;
wire [3:0] count;
wire [6:0] seg;

mod10_display uut(
    .clk(clk),
    .reset(reset),
    .count(count),
    .seg(seg)
);


always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t | count=%d | seg=%b", $time, count, seg);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #350 $finish;
end

endmodule