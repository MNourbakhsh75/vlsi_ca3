module  Brent_Kung (
    input [15:0] A,B,
    input cin,
    output [15:0] sum,
    output cout
);

//***********************generate p and g***********************
wire [1:0] pg1, pg2, pg3, pg4, pg5, pg6, pg7, pg8, pg9, pg10, pg11, pg12, pg13, pg14, pg15,pg16;
generatePG gpg(.A(A),.B(B),.pg0(pg1),.pg1(pg2),.pg2(pg3),.pg3(pg4),.pg4(pg5),.pg5(pg6),.pg6(pg7),.pg7(pg8),.pg8(pg9),.pg9(pg10),.pg10(pg11),.pg11(pg12),.pg12(pg13),.pg13(pg14),.pg14(pg15),.pg15(pg16));

//***********************first stage***********************
wire g1;
wire [1:0] b3,b5,b7,b9,b11,b13,b15;
grayCell gray1 (.pg_ik(pg1),.g_kj(cin),.g_ij(g1));
blackCell black1 (.pg_ik(pg3),.pg_kj(pg2),.pg_ij(b3));
blackCell black2 (.pg_ik(pg5),.pg_kj(pg4),.pg_ij(b5));
blackCell black3 (.pg_ik(pg7),.pg_kj(pg6),.pg_ij(b7));
blackCell black4 (.pg_ik(pg9),.pg_kj(pg8),.pg_ij(b9));
blackCell black5 (.pg_ik(pg11),.pg_kj(pg10),.pg_ij(b11));
blackCell black6 (.pg_ik(pg13),.pg_kj(pg12),.pg_ij(b13));
blackCell black7 (.pg_ik(pg15),.pg_kj(pg14),.pg_ij(b15));

//***********************second stage***********************
wire g3;
wire [1:0] b74,b118,b1512;
grayCell gray2 (.pg_ik(b3),.g_kj(g1),.g_ij(g3));
blackCell black8 (.pg_ik(b7),.pg_kj(b5),.pg_ij(b74));
blackCell black9 (.pg_ik(b11),.pg_kj(b9),.pg_ij(b118));
blackCell black10 (.pg_ik(b15),.pg_kj(b13),.pg_ij(b1512));

//***********************third stage***********************
wire g70;
wire [1:0] b158;
grayCell gray3 (.pg_ik(b74),.g_kj(g3),.g_ij(g70));
blackCell black11 (.pg_ik(b1512),.pg_kj(b118),.pg_ij(b158));

//***********************fourth stage***********************
wire g158;
grayCell gray4 (.pg_ik(b158),.g_kj(g70),.g_ij(g158));
//***********************fifth stage***********************
wire g110;
grayCell gray5 (.pg_ik(b118),.g_kj(g70),.g_ij(g110));
//***********************sixth stage***********************
wire g50,g90,g130;
grayCell gray6 (.pg_ik(b5),.g_kj(g3),.g_ij(g50));
grayCell gray7 (.pg_ik(b9),.g_kj(g70),.g_ij(g90));
grayCell gray8 (.pg_ik(b13),.g_kj(g110),.g_ij(g130));

//***********************seventh stage***********************
wire g20,g40,g60,g80,g100,g120,g140;
grayCell gray9 (.pg_ik(pg2),.g_kj(g1),.g_ij(g20));
grayCell gray10 (.pg_ik(pg4),.g_kj(g3),.g_ij(g40));
grayCell gray11 (.pg_ik(pg6),.g_kj(g50),.g_ij(g60));
grayCell gray12 (.pg_ik(pg8),.g_kj(g70),.g_ij(g80));
grayCell gray13 (.pg_ik(pg10),.g_kj(g90),.g_ij(g100));
grayCell gray14 (.pg_ik(pg12),.g_kj(g110),.g_ij(g120));
grayCell gray15 (.pg_ik(pg14),.g_kj(g130),.g_ij(g140));

//***********************generate sum***********************
generateSum gs (.A({g158,g140,g130,g120,g110,g100,g90,g80,g70,g60,g50,g40,g3,g20,g1,cin}),
.B({pg16[1],pg15[1],pg14[1],pg13[1],pg12[1],pg11[1],pg10[1],pg9[1],pg8[1],pg7[1],pg6[1],pg5[1],pg4[1],pg3[1],pg2[1],pg1[1]})
,.sum(sum));

//***********************generate cout***********************
grayCell gray16 (.pg_ik(pg16),.g_kj(g158),.g_ij(cout));
endmodule
