`timescale 1ns / 1ps

module SR_FF_tb;
    reg S, R, clk;
    wire Q, Qbar;

    SR_FF uut (.S(S), .R(R), .clk(clk), .Q(Q), .Qbar(Qbar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock generation
    end

    initial begin
        $monitor("Time=%0t | S=%b, R=%b, Q=%b, Qbar=%b", $time, S, R, Q, Qbar);

        S = 0; R = 0; #10;
        S = 1; R = 0; #10;  // Set
        S = 0; R = 1; #10;  // Reset
        S = 1; R = 1; #10;  // Invalid state

        $stop;
    end
endmodule

