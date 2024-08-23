module adder4b (
    input logic [3:0] a,b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
);
    logic c1, c2, c3;
    somadorcompleto fa0 (.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
    somadorcompleto fa1 (.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
    somadorcompleto fa2 (.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
    somadorcompleto fa3 (.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));

endmodule