module test;

  reg a, b, c;
  wire sum, carry;

  full_adder uut(
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
  );

  initial
  begin
    a=0; b=0; c=0;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=0; b=0; c=1;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=0; b=1; c=0;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=0; b=1; c=1;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=1; b=0; c=0;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=1; b=0; c=1;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=1; b=1; c=0;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    a=1; b=1; c=1;
    #10;
    $display("a=%b b=%b c=%b | sum=%b carry=%b", a,b,c,sum,carry);

    $finish;
  end

endmodule
