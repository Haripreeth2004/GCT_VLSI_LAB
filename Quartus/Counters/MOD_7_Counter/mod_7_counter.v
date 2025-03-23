module T_FF (
    input clk,
    input rst,
    input t,       // Toggle input
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;   // Reset to 0
        else if (t)
            q <= ~q;  // Toggle when t=1
    end
endmodule

module mod7_counter (
    input clk,
    input rst,
    output wire [2:0] count
);
    wire t0, t1, t2;

    assign t0 = 1;              // Always toggle LSB
    assign t1 = count[0];       // Toggle based on previous bit
    assign t2 = count[1] & count[0]; // Toggle when previous bits are 1

    T_FF ff0 (.clk(clk), .rst(rst), .t(t0), .q(count[0]));
    T_FF ff1 (.clk(clk), .rst(rst), .t(t1), .q(count[1]));
    T_FF ff2 (.clk(clk), .rst(rst), .t(t2), .q(count[2]));

    // Reset when count reaches 7 (binary 111)
    always @(posedge clk or posedge rst) begin
        if (rst || count == 3'b111)
            {count[2], count[1], count[0]} <= 3'b000;
    end

endmodule

