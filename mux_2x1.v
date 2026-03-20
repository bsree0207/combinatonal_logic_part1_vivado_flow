module mux_2x1(input i0,input i1,input s0,output reg y);

always @(*)
begin
    if (s0==0)begin
        y=i0;
     end
    else   begin
        y=i1;
     end
end

endmodule