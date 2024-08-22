module mux2x1 (
    input logic [3:0] a, b,
    input logic s,
    output logic [3:0] f
    
);
    assign f = (s == 1'b0) ? a : b;

endmodule