module contador4b (
    input logic clk,
    output logic [3:0] q
);

    initial begin
        q = 8'b0000;
    end

    always @(posedge clk) begin
        q = q + 4'd1;
    end

endmodule