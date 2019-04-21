module grayCell (
    input [1:0] pg_ik,
    input g_kj,
    output g_ij
);

assign g_ij = (g_kj & pg_ik[1]) | pg_ik[0];

endmodule