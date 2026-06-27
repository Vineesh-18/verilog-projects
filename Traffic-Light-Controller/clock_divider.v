module clock_divider(
    input clk,
    input reset,
    output reg slow_clk
);

reg [3:0] count;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        count <= 0;
        slow_clk <= 0;
    end
    else
    begin
        if(count == 4)
        begin
            count <= 0;
            slow_clk <= ~slow_clk;
        end
        else
            count <= count + 1;
    end
end

endmodule