module D_FF (
    input wire D, clk,
    output reg Q
);
    always @(posedge clk) begin
        Q <= D;
    end
endmodule

