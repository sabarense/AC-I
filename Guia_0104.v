module Guia_0104;

    integer x = 13; // decimal
    reg [7:0] b = 0; // binary

 initial

    begin : main
    $display ( "x = %d" , x );
    $display ( "b = %8b", b );
    b = x;
    $display ( "b = [%4b] [%4b] = %x %x", b[7:4], b[3:0], b[7:4], b[3:0] );
    end 

endmodule 