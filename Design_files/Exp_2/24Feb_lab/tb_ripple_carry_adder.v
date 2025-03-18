module tb_ripple_carry_adder;

    // Testbench signals
    reg [7:0] a, b; // 8-bit inputs
    reg cin;        // Carry-in
    wire [7:0] sum; // 8-bit sum
    wire cout;      // Carry-out

    // Instantiate the 8-bit ripple carry adder
    ripple_carry_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test cases
    initial begin
        // Test case 1: a = 8'b00000001, b = 8'b00000001, cin = 0
        a = 8'b00000001;
        b = 8'b00000001;
        cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);

        // Test case 2: a = 8'b11111111, b = 8'b00000001, cin = 0
        a = 8'b11111111;
        b = 8'b00000001;
        cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);

        // Test case 3: a = 8'b10101010, b = 8'b01010101, cin = 1
        a = 8'b10101010;
        b = 8'b01010101;
        cin = 1;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);

        // Test case 4: a = 8'b11110000, b = 8'b00001111, cin = 0
        a = 8'b11110000;
        b = 8'b00001111;
        cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);

        // End simulation
        #30 $finish;
    end
 initial begin
        // Generate the waveform file
        $dumpfile("tb_ripple_carry_adder.vcd");
        $dumpvars(0, tb_ripple_carry_adder);
    end

endmodule
