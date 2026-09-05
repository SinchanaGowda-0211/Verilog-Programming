module full_subtractor(
    input a,
    input b,
    input bin,
    output reg difference,
    output reg borrow
);

always @(*) begin
    if ({a,b,bin} == 3'b000) begin
        difference = 0;
        borrow = 0;
    end
    else if ({a,b,bin} == 3'b001) begin
        difference = 1;
        borrow = 1;
    end
    else if ({a,b,bin} == 3'b010) begin
        difference = 1;
        borrow = 1;
    end
    else if ({a,b,bin} == 3'b011) begin
        difference = 0;
        borrow = 1;
    end
    else if ({a,b,bin} == 3'b100) begin
        difference = 1;
        borrow = 0;
    end
    else if ({a,b,bin} == 3'b101) begin
        difference = 0;
        borrow = 0;
    end
    else if ({a,b,bin} == 3'b110) begin
        difference = 0;
        borrow = 0;
    end
    else begin
        difference = 1;
        borrow = 1;
    end
end

endmodule
