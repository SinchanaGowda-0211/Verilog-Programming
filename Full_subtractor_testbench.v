module testbench;

  reg a, b, bin;
  wire difference, borrow;

  Full_subtractor uut(a, b, bin, difference, borrow);

  initial
    begin

      a=0; b=0; bin=0;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=0; b=0; bin=1;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=0; b=1; bin=0;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=0; b=1; bin=1;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=1; b=0; bin=0;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=1; b=0; bin=1;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=1; b=1; bin=0;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

      a=1; b=1; bin=1;
      #10;
      $display("a=%b, b=%b, bin=%b, difference=%b, borrow=%b",
               a, b, bin, difference, borrow);

    end

endmodule
