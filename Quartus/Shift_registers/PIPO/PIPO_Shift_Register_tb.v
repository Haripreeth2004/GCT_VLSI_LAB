module PIPO_Shift_Register_tb;
    reg clk, rst;
    reg [3:0] parallel_in;
    wire [3:0] parallel_out;

    PIPO_Shift_Register uut (
        .clk(clk),
        .rst(rst),
        .parallel_in(parallel_in),
        .parallel_out(parallel_out)
    );

    // Clock Generation
    always #5 clk = ~clk;

    initial begin
	 
        clk = 0; rst = 1; parallel_in = 4'b0000;
        #10 rst = 0;
        #10 parallel_in = 4'b1010;
        #10 parallel_in = 4'b1100;
        #10 parallel_in = 4'b1111;
        #50 $finish;
    end
endmodule