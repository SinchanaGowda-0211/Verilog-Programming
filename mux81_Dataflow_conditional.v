module mux81(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input s2,s1,s0,
    output y
);

assign y = s2 ? (s1 ? (s0 ? i7 : i6) : (s0 ? i5 : i4))
              : (s1 ? (s0 ? i3 : i2) : (s0 ? i1 : i0));

endmodule
