`timescale 1ns / 100ps
module test_MUL_dp_cp();
    reg [31:0]data_in;
    reg clk,start;
    wire done;
    wire [31:0]out;
    MUL_Datapath DP(eqz,LdA,LdB,LdP,clrP,decB,data_in,clk);
    control_path CP(LdA,LdB,LdP,clrP,decB,done,clk,eqz,start);
    assign out = DP.Y;
    initial
        begin
            clk=1'b1;
            start=1'b1;
            #35 $finish;
        end
    always #2 clk=~clk;
    initial
        begin
            #5 data_in=17;
            #4 data_in=5;
            #4 data_in=0;
        end
    initial 
        begin
            $monitor($time,"LdA=%d,X=%d,LdB=%d,Bout=%d,decB=%d,LdP=%d,Y=%d,eqz=%d",DP.LdA,DP.X,DP.LdB,DP.Bout,DP.decB,DP.LdP,DP.Y,DP.eqz);
        end
endmodule
