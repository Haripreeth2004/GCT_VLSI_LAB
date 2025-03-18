module mux_lp_design (
    input wire A,        // Input 1
    input wire B,        // Input 2
    input wire sel,      // Select signal
    input wire PwrClk,   // Pulsed power supply
    output wire Y        // Output
);
    wire nsel;          // Complement of select signal
    wire T1, T2;        // Transmission gate output
    assign nsel = ~sel; // Generate complement of select

    // Transmission gate implementation
    assign T1 = (sel)  ? A : 1'bz; // Pass A when sel = 1
    assign T2 = (nsel) ? B : 1'bz; // Pass B when sel = 0

    // Output is driven by the pulsed power supply
    assign Y = (T1 | T2) & PwrClk; 
   // assign X = (T1 | T2) & A;

endmodule

