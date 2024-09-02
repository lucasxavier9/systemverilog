module fsm_moore (
    input logic x, clk,rst,
    output logic y
);
    typedef enum  {A, B, C, D  } state;
    state pre_state;

    //INICIALIZAÇÃO

    initial begin
        pre_state <= A;
        y <= 1'b1;
    end

    //PROCEDIMENTO 1 - ANALISAR O ESTADO ATUAL, GERAR O ESTADO SEGUINTE
    always @(posedge clk, posedge rst) begin
        if(rst == 1'b1) begin
            pre_state <= A;
        end
        else begin
            case(pre_state)
                A: begin
                    if(x == 1'b0) pre_state <= B;
                    else pre_state <= A;
                end
                B: begin
                    if (x == 1'b0) pre_state <= B;
                    else pre_state <= C;
                end
                C: begin
                    pre_state <= D;
                end
                D: begin
                    pre_state <= A;

                end
            endcase
        end
    end

    //PROCEDIMENTO 2 - ANALISAR O ESTADO ATUAL PARA GERAR A SAIDA
    always@(pre_state) begin
        case(pre_state)
        A : y = 1'b1;
        B : y = 1'b0;
        C : y = 1'b0;
        D : y = 1'b1;
        endcase
    end

endmodule