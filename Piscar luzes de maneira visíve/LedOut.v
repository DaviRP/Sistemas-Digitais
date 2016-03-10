

    module LedPulse(
        input in,
        output led
    );

        always@(posedge in)
            in= ~in;

    endmodule




    endmodule


    module count(

        output out,
        input clk,
        input reset,
        input enable


    );
    reg [31:0] aux;

    
    always@(posedge clk)

    if(reset)begin
        out<=32'b0;
    end else

        out<=out+1;
    end

    if(aux == )
        out<=1'b1;
        end else
        out<= 1'b0;
        end

    endmodule


    module Main;

        input clk, enable;
        wire reset, enable, out;

            count C(  out ,clk     ,  reset  ,   enable );

        LedPulse LP(   out ,led   );
        assing reset <= led;

        end
    endmodule















