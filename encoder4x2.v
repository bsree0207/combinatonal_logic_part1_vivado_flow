module encoder4x2(
input i0,input i1,input i2,input i3,
output y0, output y1
);
or_gate g1(i3,i2,y1);   // y1 = i3 | i2
or_gate g2(i3,i1,y0);   // y0 = i3 | i1
endmodule