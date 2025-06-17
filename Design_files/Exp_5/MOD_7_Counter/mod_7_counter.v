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

module mod_7_counter (
    input clk,
    input rst,
    output reg [2:0] count
);
    wire [2:0] count_internal;  // Wire to hold FF outputs
    wire t0, t1, t2;

    assign t0 = 1;              // Always toggle LSB
    assign t1 = count_internal[0];       // Toggle based on previous bit
    assign t2 = count_internal[1] & count_internal[0]; // Toggle when previous bits are 1

    // Instantiate T Flip-Flops
    T_FF ff0 (.clk(clk), .rst(rst), .t(t0), .q(count_internal[0]));
    T_FF ff1 (.clk(clk), .rst(rst), .t(t1), .q(count_internal[1]));
    T_FF ff2 (.clk(clk), .rst(rst), .t(t2), .q(count_internal[2]));

    // Assign internal counter value to output
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 3'b000;  // Reset to 0
		else if (count_internal == 3'b111)
        count <= 3'b000;  // Reset when reaching 7
        else
            count <= count_internal;  // Update count
    end

endmodule


