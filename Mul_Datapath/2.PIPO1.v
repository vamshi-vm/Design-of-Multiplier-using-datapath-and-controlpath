`timescale 1ns / 1ps
module PIPO1(dout,din,ld,clk);
    input [31:0]din;
    input ld,clk;
    output reg[31:0]dout;
    always@(posedge clk)
        if(ld)
            dout<=din;
endmodule
