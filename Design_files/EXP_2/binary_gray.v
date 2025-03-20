module binary_gray(input[3:0]b,output[3:0]g);
assign g[3]=b[3];
xor o1(g[2],b[3],b[2]);
xor o2(g[1],b[2],b[1]);
xor o3(g[0],b[1],b[0]);
endmodule
