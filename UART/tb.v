`timescale 1ns/1ps

module uart_tb;


    reg clk;
    reg reset;
    reg tx_start;
    reg [7:0] tx_data;

 
    wire tx;


    wire tx_busy;
    wire [7:0] rx_data;
    wire rx_done;

    uart_top uut(

        .clk(clk),
        .reset(reset),

        .tx_start(tx_start),
        .tx_data(tx_data),

        .rx(tx),          

        .tx(tx),
        .tx_busy(tx_busy),

        .rx_data(rx_data),
        .rx_done(rx_done)

    );

    initial
    begin
        clk = 0;
        forever #10 clk = ~clk;    
    end

    initial
    begin

        reset = 1;
        tx_start = 0;
        tx_data = 8'h00;    

        #50;
        reset = 0;

        #50;

        tx_data = 8'hA5;
        tx_start = 1;

        #20;
        tx_start = 0;

        wait(rx_done);

        $display("--------------------------------");
        $display("Received Data = %h", rx_data);
        $display("--------------------------------");

        #100;

        tx_data = 8'h3C;
        tx_start = 1;

        #20;
        tx_start = 0;

        wait(rx_done);

        $display("--------------------------------");
        $display("Received Data = %h", rx_data);
        $display("--------------------------------");

        #200;

        $finish;

    end

endmodule