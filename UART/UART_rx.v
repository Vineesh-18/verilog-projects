module uart_rx (
    input clk,
    input reset,
    input baud_tick,
    input rx,

    output reg [7:0] rx_data,
    output reg rx_done
);

    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter DATA  = 2'b10;
    parameter STOP  = 2'b11;

    reg [1:0] state;

    reg [7:0] shift_reg;
    reg [2:0] bit_count;

    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            state     <= IDLE;
            shift_reg <= 8'd0;
            bit_count <= 3'd0;
            rx_data   <= 8'd0;
            rx_done   <= 1'b0;
        end
        else
        begin

            rx_done <= 1'b0;

            case(state)

            IDLE:
            begin
                if(rx == 1'b0)
                    state <= START;
            end

            START:
            begin
                if(baud_tick)
                begin
                    bit_count <= 3'd0;
                    state <= DATA;
                end
            end

            DATA:
            begin
                if(baud_tick)
                begin
                    shift_reg <= {rx, shift_reg[7:1]};

                    if(bit_count == 3'd7)
                        state <= STOP;
                    else
                        bit_count <= bit_count + 1;
                end
            end

            STOP:
            begin
                if(baud_tick)
                begin
                    rx_data <= shift_reg;
                    rx_done <= 1'b1;
                    state <= IDLE;
                end
            end

            default:
                state <= IDLE;

            endcase

        end
    end

endmodule