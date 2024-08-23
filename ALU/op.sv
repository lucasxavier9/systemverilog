module somador(
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] soma
);
    assign soma = A + B;   
endmodule

module subtrador (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] sub
);
    assign sub = A - B;    
endmodule

module ESQUERDA (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] resultadoE
);
    assign resultadoE = A << B;
endmodule

module DIREITA (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic[3:0] resultadoD
);
    assign resultadoD = A >> B;
endmodule

module mod_and(
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] mod_and
);
    assign mod_and = A & B;
endmodule

module mod_or (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] mod_or
);
    assign mod_or = A | B;
endmodule

 module mod_xor(
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] mod_xor
 );
    assign mod_xor = A ^ B;
 endmodule

module mod_not(
    input logic [3:0] A,
    output logic [3:0] mod_not
);
    assign mod_not = ~A;
endmodule