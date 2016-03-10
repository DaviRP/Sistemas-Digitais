module Led(
    input clk,
    output led


);

    assign led=clk;

endmodule

module exec;

    reg clk;
    wire led;


    Led L(clk,led);
    always #1 clk= ~clk;

    initial begin
        $dumpvars(0, L);

        clk <= 1'b0;
        #500;
        $finish;
    end
endmodule