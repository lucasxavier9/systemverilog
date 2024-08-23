module alu(
    input logic [3:0] A,
    input logic [3:0] B,
    input logic [2:0] selecao,
    output logic [3:0] resultado
);
    logic [3:0] soma, sub, resultadoE, resultadoD, resultadoand, resultadoor, resultadoxor, resultadonot;

    somador u1 (.A(A), .B(B), .soma(soma));
    subtrador u2 (.A(A), .B(B), .sub(sub));
    ESQUERDA u3 (.A(A), .B(B), .resultadoE(resultadoE));
    DIREITA u4 (.A(A), .B(B), .resultadoD(resultadoD));
    mod_and u5 (.A(A), .B(B), .mod_and(resultadoand));
    mod_or u6 (.A(A), .B(B), .mod_or(resultadoor));
    mod_xor u7 (.A(A), .B(B), .mod_xor(resultadoxor));
    mod_not u8 (.A(A), .mod_not(resultadonot));

    mux8x1 u9 (
        .op0(soma),
        .op1(sub),
        .op2(resultadoE),
        .op3(resultadoD),
        .op4(resultadoand),
        .op5(resultadoor),
        .op6(resultadoxor),
        .op7(resultadonot),
        .selecao(selecao),
        .saida(resultado)
    );
endmodule
