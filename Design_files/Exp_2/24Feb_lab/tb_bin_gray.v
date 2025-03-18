module tb_bin_gray;

    // Testbench signals
    reg [3:0] binary; // 4-bit binary input
    wire [3:0] gray;  // 4-bit gray code output

    // Instantiate the Binary-to-Gray converter
    bin_gray uut (
        .binary(binary),
        .gray(gray)
    );

    // Test cases
    initial begin
        // Test case 1: binary = 0000
        binary = 4'b0000;
        #10;
        $display("Binary = %b, Gray = %b", binary, gray);

        // Test case 2: binary = 0001
        binary = 4'b0001;
        #10;
        $display("Binary = %b, Gray = %b", binary, gray);

        // Test case 3: binary = 0010
        binary = 4'b0010;
        #10;
        $display("Binary = %b, Gray = %b", binary, gray);

        // Test case 4: binary = 0100
        binary = 4'b0100;
        #10;
        $display("Binary = %b, Gray = %b", binary, gray);

        // Test case 5: binary = 1000
        binary = 4'b1000;
        #10;
        $display("Binary = %b, Gray = %b", binary, gray);

        // Test case 6: binary = 1111
        binary = 4'b1111;
        #10;
        $display("Binary = %b, Gray = %b", binary, gray);

        // End simulation
        #30 $finish;
    end
initial begin
        // Generate the waveform file
        $dumpfile("tb_bin_gray.vcd");
        $dumpvars(0, tb_bin_gray);
    end

endmodule
