module testbench;

  reg [1:0] i;
  reg s;
  wire y;

  // Instantiate the DUT
  mux21 uut (
    .i(i),
    .s(s),
    .y(y)
  );

  initial begin

    // Test 1
    i = 2'b00; s = 0;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    // Test 2
    i = 2'b01; s = 0;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    // Test 3
    i = 2'b10; s = 0;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    // Test 4
    i = 2'b11; s = 0;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    // Now test s = 1

    i = 2'b00; s = 1;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    i = 2'b01; s = 1;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    i = 2'b10; s = 1;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    i = 2'b11; s = 1;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    $finish;
  end

endmodule
