module bcd_binary(input[3:0]bcd,output[3:0]binary);
assign binary[0]=bcd[0];
assign binary[1]=bcd[1];
assign binary[2]=bcd[2];
assign binary[3]=bcd[3];
endmodule