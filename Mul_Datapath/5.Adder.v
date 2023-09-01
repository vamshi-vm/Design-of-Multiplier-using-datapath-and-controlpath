`timescale 1ns / 1ns
module ADD(out,in1,in2);
    input [31:0]in1,in2;
    output reg[31:0]out;
    always@(*)
        out = in1+in2;
endmodule
