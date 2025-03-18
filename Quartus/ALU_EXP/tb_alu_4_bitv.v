module tb_alu_4_bit;
    reg [6:0] A, B;
    reg [3:0] opcode;
    wire [6:0] result;
    wire carry_out, zero;

    alu_4_bit uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry_out(carry_out),
        .zero(zero)
    );

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Opcode=%b | Result=%b | Carry=%b | Zero=%b", 
                 $time, A, B, opcode, result, carry_out, zero);
        A = 7'b0001111; B = 7'b0000001; opcode = 4'b0000; #10; // Addition
        A = 7'b0001111; B = 7'b0000001; opcode = 4'b0001; #10; // Subtraction
        A = 7'b0101010; B = 7'b1001100; opcode = 4'b0010; #10; // AND
        A = 7'b0101010; B = 7'b1001100; opcode = 4'b0011; #10; // OR
        A = 7'b0101010; B = 7'b1001100; opcode = 4'b0100; #10; // XOR
        A = 7'b0001111; opcode = 4'b1000; #10; // Left shift
        A = 7'b0001111; opcode = 4'b1001; #10; // Right shift
        A = 7'b0001111; opcode = 4'b1010; #10; // Rotate left
        A = 7'b0001111; opcode = 4'b1011; #10; // Rotate right
        A = 7'b0000011; B = 7'b0000010; opcode = 4'b1110; #10; // Multiplication
        A = 7'b0001000; B = 7'b0000010; opcode = 4'b1111; #10; // Division

        $finish;
    end
endmodule