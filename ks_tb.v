module ks_tb();

reg [15:0] A, B;
reg Cin;
wire Cout;
wire [15:0] S;

Kogge_Stone ks(.A(A),.B(B),.cin(Cin),.sum(S),.cout(Cout));
initial begin
    #200
    A = 16'b0000000000011001;
    B = 16'b0000000000101000;
    Cin = 1'b0;
    #200
    $stop;
end

endmodule