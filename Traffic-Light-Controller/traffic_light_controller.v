module traffic_light_controller(
    input clk,
    input reset,
    output reg [2:0] lightA,
    output reg [2:0] lightB
);

parameter RED    = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN  = 3'b001;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] state;
reg [3:0] timer;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= S0;
        timer <= 0;
    end
    else
    begin
        case(state)

        S0:
        begin
            if(timer == 9)
            begin
                state <= S1;
                timer <= 0;
            end
            else
                timer <= timer + 1;
        end

        S1:
        begin
            if(timer == 2)
            begin
                state <= S2;
                timer <= 0;
            end
            else
                timer <= timer + 1;
        end

        S2:
        begin
            if(timer == 9)
            begin
                state <= S3;
                timer <= 0;
            end
            else
                timer <= timer + 1;
        end

        S3:
        begin
            if(timer == 2)
            begin
                state <= S0;
                timer <= 0;
            end
            else
                timer <= timer + 1;
        end

        endcase
    end
end

always @(*)
begin
    case(state)

    S0:
    begin
        lightA = GREEN;
        lightB = RED;
    end

    S1:
    begin
        lightA = YELLOW;
        lightB = RED;
    end

    S2:
    begin
        lightA = RED;
        lightB = GREEN;
    end

    S3:
    begin
        lightA = RED;
        lightB = YELLOW;
    end

    default:
    begin
        lightA = RED;
        lightB = RED;
    end

    endcase
end

endmodule