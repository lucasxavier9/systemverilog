module registrador4b (
    input logic [3:0] d,
    input logic clk, ld,
    output logic [3:0] q
);
    always_ff @( negedge clk ) begin
        if (ld == 1'b1) begin
            q = d;
        end
        
    end
    
endmodule