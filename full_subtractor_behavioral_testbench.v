module testbench;

reg a, b, bin;
wire difference, borrow;

full_subtractor uut(
    .a(a),
    .b(b),
    .bin(bin),
    .difference(difference),
    .borrow(borrow)
);

initial begin

    a = 0; b = 0; bin = 0;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 0; b = 0; bin = 1;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 0; b = 1; bin = 0;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 0; b = 1; bin = 1;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 1; b = 0; bin = 0;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 1; b = 0; bin = 1;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 1; b = 1; bin = 0;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    a = 1; b = 1; bin = 1;
    #10;
    $display("a=%b b=%b bin=%b difference=%b borrow=%b",
             a,b,bin,difference,borrow);

    $finish;

end

endmodule
