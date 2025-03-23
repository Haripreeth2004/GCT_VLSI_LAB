module PISO_Shift_Register_tb;
    reg clk, rst, load;
    reg [3:0] parallel_in;
    wire serial_out;

    PISO_Shift_Register uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );

    // Clock Generation
    always #5 clk = ~clk;

    initial begin

        clk = 0; rst = 1; load = 0; parallel_in = 4'b0000;
        #10 rst = 0;
        #10 load = 1; parallel_in = 4'b1101;
        #10 load = 0;
        #40 $finish;
    end
endmodule