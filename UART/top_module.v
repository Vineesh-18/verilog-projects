module uart_top(

    input clk,
    input reset,

    // Transmitter
    input tx_start,
    input [7:0] tx_data,

    // Receiver
    input rx,

    // Outputs
    output tx,
    output tx_busy,

    output [7:0] rx_data,
    output rx_done

);

    wire baud_tick;


    baud_generator baud_gen(
        
        .clk(clk),
        .reset(reset),
        .baud_tick(baud_tick)

    );

    uart_tx transmitter(

        .clk(clk),
        .reset(reset),
        .baud_tick(baud_tick),
        .tx_start(tx_start),
        .tx_data(tx_data),

        .tx(tx),
        .tx_busy(tx_busy)

    );

    uart_rx receiver(

        .clk(clk),
        .reset(reset),
        .baud_tick(baud_tick),
        .rx(rx),

        .rx_data(rx_data),
        .rx_done(rx_done)

    );

endmodule