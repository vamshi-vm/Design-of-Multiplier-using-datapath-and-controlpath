`timescale 1ns / 1ns
module CNTR(dout,din,ld,dec,clk);
    input [31:0]din;
    input ld,clk,dec;
    output reg[31:0]dout;
    always@(posedge clk)
        begin
            if(ld)
                dout<=din;
            else
                if(dec)
                    dout<=dout-1;
        end
        
endmodule
