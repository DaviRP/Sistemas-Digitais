

    module LedPulse(
        input in,
        output led
    );

        always@(posedge in)
          assign in = ~in;

    endmodule



    module count(

        output out,
        input clk,
        input reset,
        input enable


    );
        reg [31:0] aux;


        always@(posedge clk) aux <= aux +1;

        assign out=aux[31];


    endmodule


    module Main;

        input clk, enable;
        wire  in, reset,enable, out, led;

        always@(posedge clk);
            count C(  out ,clk     ,  reset  ,   enable );
        assign in =out
        LedPulse LP(   in ,led   );



        //assign reset <= led;


    endmodule















