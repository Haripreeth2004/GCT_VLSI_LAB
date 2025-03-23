module SISO_Shift_Register (
    input clk,
    input rst,
    input serial_in,
    output wire serial_out
);
    wire [3:0] q;

    D_FF dff0(clk, rst, serial_in, q[0]);
    D_FF dff1(clk, rst, q[0], q[1]);
    D_FF dff2(clk, rst, q[1], q[2]);
    D_FF dff3(clk, rst, q[2], q[3]);

    assign serial_out = q[3];

endmodule