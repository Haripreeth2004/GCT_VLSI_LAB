module PISO_Shift_Register (
    input clk,
    input rst,
    input load,
    input [3:0] parallel_in,
    output wire serial_out
);
    reg [3:0] shift_reg;
    wire [3:0] q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            shift_reg <= 4'b0000;
        else if (load)
            shift_reg <= parallel_in;
        else
            shift_reg <= shift_reg >> 1;
    end

    D_FF dff0(clk, rst, shift_reg[0], q[0]);
    D_FF dff1(clk, rst, shift_reg[1], q[1]);
    D_FF dff2(clk, rst, shift_reg[2], q[2]);
    D_FF dff3(clk, rst, shift_reg[3], q[3]);

    assign serial_out = q[0];

endmodule