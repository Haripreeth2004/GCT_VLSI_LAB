module tb_bcd_bin;

    // Testbench signals
    reg [7:0] bcd;
    wire [6:0] binary;

    // Instantiate the module
    bcd_bin uut (
        .bcd(bcd),
        .binary(binary)
    );

    // Test cases
    initial begin
        // Test case 1: BCD = 1001_0111 (97 in decimal)
        bcd = 8'b10010111;
        #10;
        $display("BCD = %b, Binary = %b", bcd, binary);

        // Test case 2: BCD = 0101_1000 (58 in decimal)
        bcd = 8'b01011000;
        #10;
        $display("BCD = %b, Binary = %b", bcd, binary);

        // Test case 3: BCD = 0001_0010 (12 in decimal)
        bcd = 8'b00010010;
        #10;
        $display("BCD = %b, Binary = %b", bcd, binary);

        // End simulation
        #20 $finish;
    end
 initial begin
        // Generate the waveform file
        $dumpfile("tb_bcd_bin.vcd");
        $dumpvars(0, tb_bcd_bin);
    end


    endmodule
