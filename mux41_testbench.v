module testbench;

reg [3:0] i;
reg [1:0] s;
wire y;

mux41 uut(i, s, y);

initial begin

    i = 4'b1010;

    s = 2'b00;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    s = 2'b01;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    s = 2'b10;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    s = 2'b11;
    #10;
    $display("i=%b, s=%b, y=%b", i, s, y);

    $finish;
end

endmodule
