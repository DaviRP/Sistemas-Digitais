module Led(
    input clk,
    output led


);

    assign led=clk;

endmodule

module exec;

    reg clk;
    wire led;
    always #2 clk= ~clk;


    Led L(clk,led);

    initial begin
        $dumpvars(0, p);
        #0
        clk <= 1'b0;
        #500;
        $finish;
    end
endmodule