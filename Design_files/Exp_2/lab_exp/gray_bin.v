module gray_bin (
    input [3:0] gray,   // 4-bit gray code input
    output [3:0] binary // 4-bit binary output
);

    assign binary[3] = gray[3]; // MSB is the same
    assign binary[2] = gray[3] ^ gray[2];
    assign binary[1] = gray[3] ^ gray[2] ^ gray[1];
    assign binary[0] = gray[3] ^ gray[2] ^ gray[1] ^ gray[0];

endmodule
