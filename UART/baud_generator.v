module baud_generator #(
    parameter CLOCK_FREQ = 50000000,
    parameter BAUD_RATE  = 9600
)(
    input clk,
    input reset,
    output reg baud_tick
);

    localparam BAUD_DIV = CLOCK_FREQ / BAUD_RATE;

    reg [15:0] counter;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            counter   <= 16'd0;
            baud_tick <= 1'b0;
        end
        else
        begin
            if (counter == BAUD_DIV - 1)
            begin
                counter   <= 16'd0;
                baud_tick <= 1'b1;
            end
            else
            begin
                counter   <= counter + 1;
                baud_tick <= 1'b0;
            end
        end
    end

endmodule