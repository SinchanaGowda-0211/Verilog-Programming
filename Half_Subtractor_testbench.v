module test;
  reg a,b;
  wire difference,borrow;

  half_subtractor uut(a,b,difference,borrow);

  initial 
  begin
    a=0; b=0;
    #10;
    $display("a=%b,b=%b,Difference=%b,Borrow=%b",
             a,b,difference,borrow);

    a=0; b=1;
    #10;
    $display("a=%b,b=%b,Difference=%b,Borrow=%b",
             a,b,difference,borrow);

    a=1; b=0;
    #10;
    $display("a=%b,b=%b,Difference=%b,Borrow=%b",
             a,b,difference,borrow);

    a=1; b=1;
    #10;                                      
    $display("a=%b,b=%b,Difference=%b,Borrow=%b",
             a,b,difference,borrow);

    $finish;
  end 
endmodule
