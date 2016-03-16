
module count(input clk, input reset, output out);

reg [31:0] aux;

    always@(posedge clk) begin

        if(reset)begin
            aux=0;

        end else if(aux == 50 000 000) begin
             


        end else begin
            aux=aux+1;
        end

    end





endmodule



module led(input clk,input In, output done, output led);

        
    always@(posedge in) begin
        led=~led;
        
        end






endmodule




/*module Main;

        input clk, enable;
        wire  in, reset,enable, out, led;

        always@(posedge clk);
            count C(  out ,clk     ,  reset  ,   enable );
        assign in =out
        LedPulse LP(   in ,led   );





  endmodule
*/














