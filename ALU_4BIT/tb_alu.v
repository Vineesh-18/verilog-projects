module tb_alu();
    reg [3:0] A, B;
    reg [1:0] S;
    wire [3:0] Y;
    wire carry;

    alu_4_bit uut (.A(A), .B(B), .S(S), .Y(Y), .carry(carry));
    initial begin
        $monitor("A = %b, B = %b , S = %b, Y = %b, carry = %b", A, B, S, Y, carry);

        A = 4'b1011; B = 4'b0110;
        S = 2'b00;
        #10 S = 2'b01;
        #10 S = 2'b10;
        #10 S = 2'b11;
        #10 $finish;
    end
endmodule    



