`timescale 1ns / 1ps

module Master_Slave_DFF_tb;
    reg D, clk;
    wire Q;

    Master_Slave_DFF uut (.D(D), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock generation
    end

    initial begin
        $monitor("Time=%0t | D=%b, Q=%b", $time, D, Q);

        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;

        $stop;
    end
endmodule

