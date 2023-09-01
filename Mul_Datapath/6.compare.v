`timescale 1ns / 1ns
module EQZ(eqz,data);
    input [31:0]data;
    output reg eqz;
    always@(*)
        begin
            if(data==0)
                eqz<=1'b1;
            else
                eqz<=1'b0;
        end
endmodule
