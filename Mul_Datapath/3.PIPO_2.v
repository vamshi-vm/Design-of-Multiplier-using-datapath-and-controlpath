`timescale 1ns / 1ns
module PIPO2(dout,din,ld,clr,clk);
    input [31:0]din;
    input clr,ld,clk;
    output reg[31:0]dout;
    always@(posedge clk)
        begin
            if(clr)
                dout<=31'h00000000;
            else
                if(ld)
                    dout<=din;
        end
endmodule
