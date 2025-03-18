`timescale 1ns / 1ps

module JK_FF_tb;
    reg J, K, clk;
    wire Q;

    JK_FF uut (.J(J), .K(K), .clk(clk), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock generation
    end

    initial begin
        $monitor("Time=%0t | J=%b, K=%b, Q=%b", $time, J, K, Q);

        J = 0; K = 0; #10;  // No change
        J = 0; K = 1; #10;  // Reset
        J = 1; K = 0; #10;  // Set
        J = 1; K = 1; #10;  // Toggle
        J = 1; K = 1; #10;  // Toggle

        $stop;
    end
endmodule

