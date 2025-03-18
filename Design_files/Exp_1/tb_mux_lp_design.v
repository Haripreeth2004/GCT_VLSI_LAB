`timescale 1ns / 1ps

module tb_mux_lp_design;
    reg A, B, sel;
    reg PwrClk;
    wire Y;

    // Instantiate the MUX module
    mux_lp_design uut (
        .A(A), 
        .B(B), 
        .sel(sel), 
        .PwrClk(PwrClk), 
        .Y(Y)
    );

    // Generate Pulsed Power Supply (Sinusoidal Approximation)
    initial begin
        PwrClk = 0;
        forever #5 PwrClk = ~PwrClk; // Approximate trapezoidal waveform
    end

    // Apply Test Inputs
    initial begin
        $monitor("Time=%0t | A=%b B=%b sel=%b PwrClk=%b -> Y=%b", 
                 $time, A, B, sel, PwrClk, Y);
        
        A = 0; B = 1; sel = 0; #10;
        A = 1; B = 0; sel = 1; #10;
        A = 1; B = 1; sel = 0; #10;
        A = 0; B = 0; sel = 1; #10;
	A = 0; B = 1; sel = 0; #10;        
        $finish;
    end
endmodule

