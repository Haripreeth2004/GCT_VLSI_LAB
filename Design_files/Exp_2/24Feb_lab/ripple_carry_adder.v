module full_adder (
    input a, b, cin,  // Inputs: a, b, and carry-in
    output sum, cout  // Outputs: sum and carry-out
);

    assign sum = a ^ b ^ cin; // Sum calculation
    assign cout = (a & b) | (b & cin) | (cin & a); // Carry-out calculation

endmodule

module ripple_carry_adder (
    input [7:0] a, b, // 8-bit inputs
    input cin,        // Carry-in
    output [7:0] sum, // 8-bit sum
    output cout       // Carry-out
);

    wire [7:0] carry; // Internal carry signals

    // First full adder (LSB)
    full_adder fa0 (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(carry[0])
    );

    // Middle full adders
    genvar i;
    generate
        for (i = 1; i < 8; i = i + 1) begin : adder_loop
            full_adder fa (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i-1]),
                .sum(sum[i]),
                .cout(carry[i])
            );
        end
    endgenerate

    // Carry-out from the last full adder
    assign cout = carry[7];

endmodule
