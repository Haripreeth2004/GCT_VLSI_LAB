module Master_Slave_DFF (
    input wire D, clk,
    output reg Q
);
    reg master;

    always @(posedge clk) begin
        master <= D;  // Master captures input
    end

    always @(negedge clk) begin
        Q <= master;  // Slave updates output
    end
endmodule

