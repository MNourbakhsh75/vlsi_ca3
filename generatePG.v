module generatePG (
    input [15:0] A,B,
    output [1:0] pg0, pg1, pg2, pg3, pg4, pg5, pg6, pg7, pg8, pg9, pg10, pg11, pg12, pg13, pg14, pg15
);

assign pg0 = {(A[0] ^ B[0]), (A[0] & B[0])};
assign pg1 = {(A[1] ^ B[1]), (A[1] & B[1])};
assign pg2 = {(A[2] ^ B[2]), (A[2] & B[2])};
assign pg3 = {(A[3] ^ B[3]), (A[3] & B[3])};
assign pg4 = {(A[4] ^ B[4]), (A[4] & B[4])};
assign pg5 = {(A[5] ^ B[5]), (A[5] & B[5])};
assign pg6 = {(A[6] ^ B[6]), (A[6] & B[6])};
assign pg7 = {(A[7] ^ B[7]), (A[7] & B[7])};
assign pg8 = {(A[8] ^ B[8]), (A[8] & B[8])};
assign pg9 = {(A[9] ^ B[9]), (A[9] & B[9])};
assign pg10 = {(A[10] ^ B[10]), (A[10] & B[10])};
assign pg11 = {(A[11] ^ B[11]), (A[11] & B[11])};
assign pg12 = {(A[12] ^ B[12]), (A[12] & B[12])};
assign pg13 = {(A[13] ^ B[13]), (A[13] & B[13])};
assign pg14 = {(A[14] ^ B[14]), (A[14] & B[14])};
assign pg15 = {(A[15] ^ B[15]), (A[15] & B[15])};

endmodule
