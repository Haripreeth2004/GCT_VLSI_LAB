`timescale 1ns / 1ps

module T_FF_tb;
    reg T, clk;
    wire Q;

    T_FF uut (.T(T), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock generation
    end

    initial begin
        $monitor("Time=%0t | T=%b, Q=%b", $time, T, Q);

        T = 0; #10;  // No change
        T = 1; #10;  // Toggle
        T = 1; #10;  // Toggle
        T = 0; #10;  // No change
        T = 1; #10;  // Toggle

        $stop;
    end
endmodule

