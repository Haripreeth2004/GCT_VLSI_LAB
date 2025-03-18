module tb_gray_bin;

    // Testbench signals
    reg [3:0] gray;   // 4-bit gray code input
    wire [3:0] binary; // 4-bit binary output

    // Instantiate the Gray-to-Binary converter
    gray_bin uut (
        .gray(gray),
        .binary(binary)
    );

    // Test cases
    initial begin
        // Test case 1: gray = 0000
        gray = 4'b0000;
        #10;
        $display("Gray = %b, Binary = %b", gray, binary);

        // Test case 2: gray = 0001
        gray = 4'b0001;
        #10;
        $display("Gray = %b, Binary = %b", gray, binary);

        // Test case 3: gray = 0011
        gray = 4'b0011;
        #10;
        $display("Gray = %b, Binary = %b", gray, binary);

        // Test case 4: gray = 0110
        gray = 4'b0110;
        #10;
        $display("Gray = %b, Binary = %b", gray, binary);

        // Test case 5: gray = 1100
        gray = 4'b1100;
        #10;
        $display("Gray = %b, Binary = %b", gray, binary);

        // Test case 6: gray = 1000
        gray = 4'b1000;
        #10;
        $display("Gray = %b, Binary = %b", gray, binary);

        // End simulation
        #30 $finish;
    end
initial begin
        // Generate the waveform file
        $dumpfile("tb_gray_bin.vcd");
        $dumpvars(0, tb_gray_bin);
    end

endmodule
