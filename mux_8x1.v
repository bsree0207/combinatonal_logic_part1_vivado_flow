module mux_8x1(input [7:0] i, input [2:0] S, output y);
wire y0,y1,y2,y3,y4,y5;
mux_2x1 m1(i[0], i[1], S[0], y0);
mux_2x1 m2(i[2], i[3], S[0], y1);
mux_2x1 m3(i[4], i[5], S[0], y2);
mux_2x1 m4(i[6], i[7], S[0], y3);
mux_2x1 m5(y0, y1, S[1], y4);
mux_2x1 m6(y2, y3, S[1], y5);
mux_2x1 m7(y4, y5, S[2], y);
endmodule