module deslocador (
    input logic [7:0] a,
    input logic[2:0] sh,
    output logic [7:0] b
);
    assign b = a << sh;
    
endmodule