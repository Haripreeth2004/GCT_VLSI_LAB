module SISO_Shift_Register_tb;
    reg clk, rst, serial_in;
    wire serial_out;

    SISO_Shift_Register uut (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .serial_out(serial_out)
    );

    // Clock Generation
    always #5 clk = ~clk;

    initial begin

        clk = 0; rst = 1; serial_in = 0;
        #10 rst = 0;
        #10 serial_in = 1; 
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;
        #50 $finish;
    end
endmodule