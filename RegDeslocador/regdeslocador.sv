module regdeslocador (
    input logic [3:0] d,
    input logic clr, ld, esq, dir, clk,
    output logic [3:0] q
);
    
    always_ff @(posedge clk) begin 
        casex ({clr, ld, esq, dir})
            4'b1xxx: q = 4'b0000; 
            4'b01xx: q = d;
            4'b001x: q = q << 1 ;
            4'b0001: q = q >> 1; 
        endcase
        
    end

endmodule