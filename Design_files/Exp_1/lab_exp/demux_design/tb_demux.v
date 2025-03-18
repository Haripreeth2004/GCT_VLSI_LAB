module tb_demux;
    reg din;
    reg [1:0] sel;
    wire [3:0] dout;
    
    demux_1to4 uut (
        .din(din),
        .sel(sel),
        .dout(dout)
    );

    initial begin
        $monitor("Time = %0t | din = %b | sel = %b | dout = %b", $time, din, sel, dout);
        $dumpfile("tb_demux");
        $dumpvars(0,tb_demux);

        din = 1; sel = 2'b00; #10;
        din = 1; sel = 2'b01; #10;
        din = 1; sel = 2'b10; #10;
        din = 1; sel = 2'b11; #10;
        din = 0; sel = 2'b00; #10;
        din = 0; sel = 2'b01; #10;
        din = 0; sel = 2'b10; #10;
        din = 0; sel = 2'b11; #10;

        $finish;
    end
endmodule
