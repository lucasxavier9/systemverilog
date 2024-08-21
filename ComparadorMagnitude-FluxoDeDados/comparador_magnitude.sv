module compmag (
    input logic[3:0] a, b,
    output logic aeqb, agtb, altb
);
    assign aeqb = (a == b);
    assign agtb = (a > b);
    assign altb = (a < b);

endmodule