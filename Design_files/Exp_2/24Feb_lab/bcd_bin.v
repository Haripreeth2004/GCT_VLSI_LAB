module bcd_bin (
    input [7:0] bcd,       // 8-bit BCD input (2 digits)
    output reg [6:0] binary // 7-bit binary output
);

    reg [3:0] tens_digit;  // Tens place digit
    reg [3:0] ones_digit;  // Ones place digit
	//reg [6:0] temp_binary;
    always @(*) begin
        // Extract tens and ones digits
        tens_digit = bcd[7:4];
        ones_digit = bcd[3:0];

        // Convert to binary using bitwise operations
        binary = (tens_digit << 3) + (tens_digit << 1) + ones_digit;

	//temp_binary = (tens_digit * 7'd10) + ones_digit;
	// binary = temp_binary;
	end

endmodule
