module ks_tb();

reg [15:0] A, B;
reg Cin;
wire Cout;
wire [15:0] S;
reg [16:0] ans;
reg [15:0] testv[1024:0];
integer i, j,f;

Kogge_Stone ks(.A(A),.B(B),.cin(Cin),.sum(S),.cout(Cout));
initial begin
    $readmemh("input.txt", testv);
    f = $fopen("outputks.txt","w");
    Cin = 1'b0;
    for (i = 0; i < 506; i = i + 1) begin
        for (j = 0; j < 506; j = j + 1) begin
            A = testv[i];
            B = testv[j];
            ans = A + B + Cin;
            $fwrite(f,"%h\n",   ans);
            #20
            $display("A = %h, B = %h, Cin = %b, Cout = %b, S = %h", A, B, Cin, Cout, S);
            if ({Cout,S} !== ans) $display("ERROR: Sum not %h!", ans);

        end
    end
    $fclose(f);
    $stop;
end

endmodule