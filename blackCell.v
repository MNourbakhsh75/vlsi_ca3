module blackCell(
    input [1:0] pg_ik, pg_kj,
    output [1:0] pg_ij
);


assign pg_ij[0] = (pg_kj[0] & pg_ik[1]) | pg_ik[0];
assign pg_ij[1] = pg_ik[1] & pg_kj[1];


endmodule


