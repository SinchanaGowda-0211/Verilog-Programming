module testbench;

reg i0,i1,i2,i3,i4,i5,i6,i7;
reg s2,s1,s0;
wire y;

mux81 uut(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);

initial begin

    i0=0; i1=1; i2=0; i3=1;
    i4=0; i5=1; i6=0; i7=1;

    s2=0; s1=0; s0=0;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=0; s1=0; s0=1;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=0; s1=1; s0=0;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=0; s1=1; s0=1;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=1; s1=0; s0=0;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=1; s1=0; s0=1;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=1; s1=1; s0=0;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

    s2=1; s1=1; s0=1;
    #10 $display("s2=%b s1=%b s0=%b y=%b",s2,s1,s0,y);

end

endmodule
