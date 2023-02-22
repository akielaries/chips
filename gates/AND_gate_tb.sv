//`include "AND_gate.sv"
module AND_gate_tb;

reg A, B;
wire Y;

AND_gate uut(A, B, Y);

initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
end
initial begin
    $monitor ("%t | A = %d| B = %d| Y = %d", $time, A, B, Y);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule
