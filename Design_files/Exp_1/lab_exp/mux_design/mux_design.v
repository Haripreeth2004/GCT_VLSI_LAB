module mux_design (out,I0,I1,I2,I3,S0,S1,Y0,Y1,Y2,Y3);
input I0,I1,I2,I3,S0,S1;
output out,Y0,Y1,Y2,Y3;
wire Sin,Son;

not(Sin,S1);
not(Son,S0);
and(Y0,Sin,Son,I0);
and(Y1,Sin,S0,I1);
and(Y2,S1,Son,I2);
and(Y3,S1,S0,I3);
or(out,Y0,Y1,Y2,Y3);
endmodule

