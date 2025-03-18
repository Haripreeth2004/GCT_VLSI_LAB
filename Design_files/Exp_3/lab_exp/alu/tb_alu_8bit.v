module tb_alu_8bit;
    reg [7:0] A, B;
    reg [3:0] opcode;
    wire [7:0] result;
    wire carry_out, zero;

    alu_8bit uut (
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
        $dumpfile("tb_alu_8bit.vcd");
    $dumpvars(0,tb_alu_8bit);

        A = 8'b00001111; B = 8'b00000001; opcode = 4'b0000; #10; // Addition
        A = 8'b00001111; B = 8'b00000001; opcode = 4'b0001; #10; // Subtraction
        A = 8'b10101010; B = 8'b11001100; opcode = 4'b0010; #10; // AND
        A = 8'b10101010; B = 8'b11001100; opcode = 4'b0011; #10; // OR
        A = 8'b10101010; B = 8'b11001100; opcode = 4'b0100; #10; // XOR
        A = 8'b00001111; opcode = 4'b1000; #10; // Left shift
        A = 8'b10001111; opcode = 4'b1001; #10; // Right shift
        A = 8'b10001111; opcode = 4'b1010; #10; // Rotate left
        A = 8'b10001111; opcode = 4'b1011; #10; // Rotate right
        A = 8'b00000011; B = 8'b00000010; opcode = 4'b1110; #10; // Multiplication
        A = 8'b00001000; B = 8'b00000010; opcode = 4'b1111; #10; // Division

        $finish;
    end
endmodule
