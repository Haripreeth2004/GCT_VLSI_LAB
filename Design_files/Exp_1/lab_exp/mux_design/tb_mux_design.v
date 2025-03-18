module tb_mux_design;
reg I0,I1,I2,I3,S0,S1;
wire out,Y0,Y1,Y2,Y3;
mux_design hp (.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1),.out(out),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));

initial begin
    S0 = 0 ; S1 = 0 ; I0 = 1 ; I1 = 1 ; I2 = 1 ; I3 = 1 ;
    #10 S0 = 0 ; S1 = 1 ; I0 = 1 ; I1 = 1 ; I2 = 1 ; I3 = 1 ;
    #10 S0 = 1 ; S1 = 0 ; I0 = 1 ; I1 = 1 ; I2 = 1 ; I3 = 1 ;
    #10 S0 = 1 ; S1 = 1 ; I0 = 1 ; I1 = 1 ; I2 = 1 ; I3 = 1 ;
    #10 $finish;
end
 initial begin
        // Generate the waveform file
        $dumpfile("tb_mux_design.vcd");
        $dumpvars(0, tb_mux_design);
    end


endmodule