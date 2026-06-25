module clock_divider(
    input clk,
    input reset,
    output reg slow_clk
);

reg counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter  <= 0;
        slow_clk <= 0;
    end
    else begin
        counter  <= ~counter;

        if (counter)
            slow_clk <= ~slow_clk;
    end
end

endmodule