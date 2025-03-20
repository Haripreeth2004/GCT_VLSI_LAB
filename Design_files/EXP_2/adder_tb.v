module adder_tb;
reg[7:0]a,b;
wire[7:0]sum;
reg cin;
wire cout;
adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
cin=1'b0;
a=8'b11010011;b=8'b11111011;
#5;
cin=1'b1;
a=8'b00110111;b=8'b111110011;
#5;
a=8'b01110111;b=8'b11111011;
#5;
$stop;
end
endmodule



