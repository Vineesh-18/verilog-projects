module alu_4_bit(
    input [3:0] A, B,
    input [1:0] S,
    output reg [3:0]Y,
     output reg carry
);
    always @(*)
    begin
        case(S) 
            2'b00: begin
                Y = A & B;
                carry = 0;
            end

            2'b01: begin
                Y = A | B;
                carry = 0;
            end

            2'b10: begin
                {carry , Y} = A + B;
            end

            2'b11: begin
                {carry, Y} = A - B;
            end

            default: begin
                Y = 4'b0000;
                carry = 1'b0;
            end
        endcase
    end 
endmodule
