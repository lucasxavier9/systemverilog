module mux8x1(
    input logic [3:0] op0,
    input logic [3:0] op1,
    input logic [3:0] op2,
    input logic [3:0] op3,
    input logic [3:0] op4,
    input logic [3:0] op5,
    input logic [3:0] op6,
    input logic [3:0] op7,
    input logic [2:0] selecao,
    output logic [3:0] saida
);
    assign saida = (selecao == 3'b000) ? op0 :
                (selecao == 3'b001) ? op1 :
                (selecao == 3'b010) ? op2 :
                (selecao == 3'b011) ? op3 :
                (selecao == 3'b100) ? op4 :
                (selecao == 3'b101) ? op5 :
                (selecao == 3'b110) ? op6 :
                op7;
endmodule
