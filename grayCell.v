module grayCell (
    input [1:0] g_ikj,
    input p_ik,
    output g_ij
);

assign g_ij = (p_ik & g_ikj[1]) | g_ikj[0];

endmodule