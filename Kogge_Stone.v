module  Kogge_Stone (
    input [15:0] A,B,
    input cin,
    output [15:0] sum,
    output cout
);

//***********************generate p and g***********************
wire [1:0] pg1, pg2, pg3, pg4, pg5, pg6, pg7, pg8, pg9, pg10, pg11, pg12, pg13, pg14, pg15,pg16;
generatePG gpg(.A(A),.B(B),.pg0(pg1),.pg1(pg2),.pg2(pg3),.pg3(pg4),.pg4(pg5),.pg5(pg6),.pg6(pg7),.pg7(pg8),.pg8(pg9),.pg9(pg10),.pg10(pg11),.pg11(pg12),.pg12(pg13),.pg13(pg14),.pg14(pg15),.pg15(pg16));

//***********************first stage***********************
wire g10;
wire [1:0] b21,b32,b43,b54,b65,b76,b87,b98,b109,b1110,b1211,b1312,b1413,b1514;
grayCell gray1 (.pg_ik(pg1),.g_kj(cin),.g_ij(g10));
blackCell black1 (.pg_ik(pg2),.pg_kj(pg1),.pg_ij(b21));
blackCell black2 (.pg_ik(pg3),.pg_kj(pg2),.pg_ij(b32));
blackCell black3 (.pg_ik(pg4),.pg_kj(pg3),.pg_ij(b43));
blackCell black4 (.pg_ik(pg5),.pg_kj(pg4),.pg_ij(b54));
blackCell black5 (.pg_ik(pg6),.pg_kj(pg5),.pg_ij(b65));
blackCell black6 (.pg_ik(pg7),.pg_kj(pg6),.pg_ij(b76));
blackCell black7 (.pg_ik(pg8),.pg_kj(pg7),.pg_ij(b87));
blackCell black8 (.pg_ik(pg9),.pg_kj(pg8),.pg_ij(b98));
blackCell black9 (.pg_ik(pg10),.pg_kj(pg9),.pg_ij(b109));
blackCell black10 (.pg_ik(pg11),.pg_kj(pg10),.pg_ij(b1110));
blackCell black11 (.pg_ik(pg12),.pg_kj(pg11),.pg_ij(b1211));
blackCell black12 (.pg_ik(pg13),.pg_kj(pg12),.pg_ij(b1312));
blackCell black13 (.pg_ik(pg14),.pg_kj(pg13),.pg_ij(b1413));
blackCell black14 (.pg_ik(pg15),.pg_kj(pg14),.pg_ij(b1514));

//***********************second stage***********************
wire g20,g30;
wire [1:0] b41,b52,b63,b74,b85,b96,b107,b118,b129,b1310,b1411,b1512;
grayCell gray2 (.pg_ik(b21),.g_kj(cin),.g_ij(g20));
grayCell gray3 (.pg_ik(b32),.g_kj(g10),.g_ij(g30));
blackCell black15 (.pg_ik(b43),.pg_kj(b21),.pg_ij(b41));
blackCell black16 (.pg_ik(b54),.pg_kj(b32),.pg_ij(b52));
blackCell black17 (.pg_ik(b65),.pg_kj(b43),.pg_ij(b63));
blackCell black18 (.pg_ik(b76),.pg_kj(b54),.pg_ij(b74));
blackCell black19 (.pg_ik(b87),.pg_kj(b65),.pg_ij(b85));
blackCell black20 (.pg_ik(b98),.pg_kj(b76),.pg_ij(b96));
blackCell black21 (.pg_ik(b109),.pg_kj(b87),.pg_ij(b107));
blackCell black22 (.pg_ik(b1110),.pg_kj(b98),.pg_ij(b118));
blackCell black23 (.pg_ik(b1211),.pg_kj(b109),.pg_ij(b129));
blackCell black24 (.pg_ik(b1312),.pg_kj(b1110),.pg_ij(b1310));
blackCell black25 (.pg_ik(b1413),.pg_kj(b1211),.pg_ij(b1411));
blackCell black26 (.pg_ik(b1514),.pg_kj(b1312),.pg_ij(b1512));

//***********************third stage***********************
wire g40,g50,g60,g70;
wire [1:0] b81,b92,b103,b114,b125,b136,b147,b158;
grayCell gray4 (.pg_ik(b41),.g_kj(cin),.g_ij(g40));
grayCell gray5 (.pg_ik(b52),.g_kj(g10),.g_ij(g50));
grayCell gray6 (.pg_ik(b63),.g_kj(g20),.g_ij(g60));
grayCell gray7 (.pg_ik(b74),.g_kj(g30),.g_ij(g70));
blackCell black27 (.pg_ik(b85),.pg_kj(b41),.pg_ij(b81));
blackCell black28 (.pg_ik(b96),.pg_kj(b52),.pg_ij(b92));
blackCell black29 (.pg_ik(b107),.pg_kj(b63),.pg_ij(b103));
blackCell black30 (.pg_ik(b118),.pg_kj(b74),.pg_ij(b114));
blackCell black31 (.pg_ik(b129),.pg_kj(b85),.pg_ij(b125));
blackCell black32 (.pg_ik(b1310),.pg_kj(b96),.pg_ij(b136));
blackCell black33 (.pg_ik(b1411),.pg_kj(b107),.pg_ij(b147));
blackCell black34 (.pg_ik(b1512),.pg_kj(b118),.pg_ij(b158));

//***********************fourth stage***********************
wire g80,g90,g100,g110,g120,g130,g140,g150;
grayCell gray8 (.pg_ik(b81),.g_kj(cin),.g_ij(g80));
grayCell gray9 (.pg_ik(b92),.g_kj(g10),.g_ij(g90));
grayCell gray10 (.pg_ik(b103),.g_kj(g20),.g_ij(g100));
grayCell gray11 (.pg_ik(b114),.g_kj(g30),.g_ij(g110));
grayCell gray12 (.pg_ik(b125),.g_kj(g40),.g_ij(g120));
grayCell gray13 (.pg_ik(b136),.g_kj(g50),.g_ij(g130));
grayCell gray14 (.pg_ik(b147),.g_kj(g60),.g_ij(g140));
grayCell gray15 (.pg_ik(b158),.g_kj(g70),.g_ij(g150));

//***********************generate sum***********************
generateSum gs (.A({g150,g140,g130,g120,g110,g100,g90,g80,g70,g60,g50,g40,g30,g20,g10,cin}),
.B({pg16[1],pg15[1],pg14[1],pg13[1],pg12[1],pg11[1],pg10[1],pg9[1],pg8[1],pg7[1],pg6[1],pg5[1],pg4[1],pg3[1],pg2[1],pg1[1]})
,.sum(sum));

//***********************generate cout***********************
grayCell gray16 (.pg_ik(pg16),.g_kj(g150),.g_ij(cout));

endmodule