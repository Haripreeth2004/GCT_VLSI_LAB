module binary_gray_tb;
reg[3:0]binary;
wire[3:0]gray;
integer i;
binary_gray uut(.b(binary),.g(gray));
initial begin
for(i=0;i<=4'b1111;i=i+1)
begin
binary=i;
#5;
end
$stop;
end
endmodule