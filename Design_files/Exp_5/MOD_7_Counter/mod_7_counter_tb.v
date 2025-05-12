module mod_7_counter_tb;

    reg clk, rst;
    wire [2:0] count;

    // Instantiate Mod-7 Counter
    mod_7_counter uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock Generation (50MHz, 20ns period)
    always #10 clk = ~clk;

    // Test Procedure
    initial begin

        clk = 0;  
        rst = 1;  // Apply Reset
        #20;

        rst = 0;  // Start counting
        #200;  // Observe for 10 clock cycles

        $finish;
    end

    // Display Count in Console
    always @(posedge clk) begin
        $display("Time: %0t | Count: %0d", $time, count);
    end

endmodule
