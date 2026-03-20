module fullAdder(
    input  a, b, Cin,
    output sum, Cout
);
    wire sum1, c1, c2;

    half_adder HA1 (.a(a),    .b(b),   .sum(sum1), .carry(c1));
    half_adder HA2 (.a(sum1), .b(Cin), .sum(sum),  .carry(c2));

    assign Cout = c1 | c2;
endmodule