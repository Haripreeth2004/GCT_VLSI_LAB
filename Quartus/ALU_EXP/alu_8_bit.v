module alu_4_bit (
    input [7:0] A,      // 8-bit input A
    input [7:0] B,      // 8-bit input B
    input [3:0] opcode, // 4-bit opcode to select the operation (16 operations)
    output reg [7:0] result, // 8-bit result
    output reg carry_out,     // Carry out for addition and shift
    output reg zero          // Zero flag
);

    always @(*) begin
        // Reset the result and flags
        result = 8'b0;
        carry_out = 0;
        zero = 0;

        // ALU operation based on opcode
        case (opcode)
            4'b0000: {carry_out, result} = A + B;     // Addition with carry
            4'b0001: result = A - B;                 // Subtraction
            4'b0010: result = A & B;                 // AND operation
            4'b0011: result = A | B;                 // OR operation
            4'b0100: result = A ^ B;                 // XOR operation
            4'b0101: result = ~(A & B);              // NAND operation
            4'b0110: result = ~(A | B);              // NOR operation
            4'b0111: result = ~(A ^ B);              // XNOR operation
            4'b1000: {carry_out, result} = {A, 1'b0}; // Logical left shift (A << 1)
            4'b1001: result = A >> 1;                // Logical right shift (A >> 1)
            4'b1010: result = (A << 1) | (A >> 7);   // Rotate left (ROL)
            4'b1011: result = (A >> 1) | (A << 7);   // Rotate right (ROR)
            4'b1100: result = A <<< 1;               // Arithmetic left shift
            4'b1101: result = A >>> 1;               // Arithmetic right shift
            4'b1110: result = A * B;                 // Multiplication (truncated to 8 bits)
            4'b1111: result = A / (B == 0 ? 1 : B);  // Division (Avoid division by zero)
            default: result = 8'b0;                  // Default case (shouldn't happen)
        endcase
        
        // Set zero flag if result is zero
        if (result == 8'b0)
            zero = 1;
    end
endmodule