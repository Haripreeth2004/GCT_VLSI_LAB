module SIPO_Shift_Register (
    input clk,
    input rst,
    input serial_in,
    output wire [3:0] parallel_out
);
    D_FF dff0(clk, rst, serial_in, parallel_out[0]);
    D_FF dff1(clk, rst, parallel_out[0], parallel_out[1]);
    D_FF dff2(clk, rst, parallel_out[1], parallel_out[2]);
    D_FF dff3(clk, rst, parallel_out[2], parallel_out[3]);

endmodule