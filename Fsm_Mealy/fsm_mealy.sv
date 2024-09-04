module fsm_moore (
    input logic x, clk, rst,
    output logic y
);
    typedef enum  {A, B, C, D  } state;
    state pre_state;
    
    //INICIALIZAÇÃO
    initial begin
        pre_state <= A;
        y <= 1'b0;
    end

    //PROCEDIMENTO 1 - ANALISAR O ESTADO ATUAL, GERAR O ESTADO SEGUINTE
    always @(posedge clk, posedge rst) begin
        if(rst == 1'b1) begin
            pre_state = A;
        end
        else begin
            case(pre_state)
                A: begin
                    if(x == 1'b0) pre_state <= B;
                    else pre_state <= B;
                end
                B: begin
                    if (x == 1'b0) pre_state <= C;
                    else pre_state <= B;
                end
                C: begin
                    if (x == 1'b0) pre_state <= A;
                    else pre_state <= D;
                end
                D: begin
                    if (x == 1'b0) pre_state <= C;
                    else pre_state <= B;

                end
            endcase
        end
    end

    //PROCEDIMENTO 2 - ANALISAR O ESTADO ATUAL e ENTRADA PARA GERAR A SAIDA
    always @(pre_state, x) begin
        case(pre_state)
        A : y = 1'b0;
        B : y = 1'b0;
        C : y = 1'b0;
        D : begin
            if (x == 1'b0) y = 1'b1;
            else y = 1'b0;
        end
        endcase
    end

endmodule