module tb_traffic_light;

reg clk;
reg reset;

wire slow_clk;
wire [2:0] lightA;
wire [2:0] lightB;

clock_divider cd(
    .clk(clk),
    .reset(reset),
    .slow_clk(slow_clk)
);

traffic_light_controller uut(
    .clk(slow_clk),
    .reset(reset),
    .lightA(lightA),
    .lightB(lightB)
);

always #5 clk = ~clk;

function [63:0] light_name;
    input [2:0] light;
    begin
        case(light)
            3'b001: light_name = "GREEN";
            3'b010: light_name = "YELLOW";
            3'b100: light_name = "RED";
            default: light_name = "UNKNOWN";
        endcase
    end
endfunction

initial
begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    
    #3000;

    $finish;
end

initial
begin
    $display("----------------------------------------------------");
    $display(" Time\tSlow Clock\tRoad A\t\tRoad B");
    $display("----------------------------------------------------");
end

always @(lightA or lightB)
begin
    $display("%4t\t%b\t\t%s\t\t%s",
             $time,
             slow_clk,
             light_name(lightA),
             light_name(lightB));
end

endmodule
