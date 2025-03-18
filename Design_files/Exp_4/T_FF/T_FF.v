module T_FF (
    input wire T, clk,
    output reg Q
);
    always @(posedge clk) begin
        if (T)
            Q <= ~Q; // Toggle state
    end
endmodule

