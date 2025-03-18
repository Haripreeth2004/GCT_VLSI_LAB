module SR_FF (
    input wire S, R, clk,
    output reg Q, Qbar
);
    always @(posedge clk) begin
        if (S && ~R) begin
            Q <= 1;
            Qbar <= 0;
        end else if (~S && R) begin
            Q <= 0;
            Qbar <= 1;
        end else if (S && R) begin
            Q <= 1'bx; // Invalid state
            Qbar <= 1'bx;
        end
    end
endmodule
