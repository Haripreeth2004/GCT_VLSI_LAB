module adder(input[7:0]a,b,input cin,output[7:0]sum,output cout);
wire[6:0]c;
fulladder(a[0],b[0],cin,sum[0],c[0]);
fulladder(a[1],b[1],c[0],sum[1],c[1]);
fulladder(a[2],b[2],c[1],sum[2],c[2]);
fulladder(a[3],b[3],c[2],sum[3],c[3]);
fulladder(a[4],b[4],c[3],sum[4],c[4]);
fulladder(a[5],b[5],c[4],sum[5],c[5]);
fulladder(a[6],b[6],c[5],sum[6],c[6]);
fulladder(a[7],b[7],c[6],sum[7],cout);
endmodule
module fulladder(input x,y,z,output s,c);
assign s=x^y^z;
assign c=(x&y)|(y&z)|(x&z);
endmodule