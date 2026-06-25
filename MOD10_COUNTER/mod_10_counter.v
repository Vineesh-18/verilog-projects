module mod_10_counter (
    input clk,reset,
    output reg [3:0] count
);

    always @(posedge clk, posedge reset)
    begin
        if (reset)
            count <= 4'b0000;
        else if (count == 4'b1001)
            count <= 4'b0000;
        else
            count <= count + 1;
    end
endmodule