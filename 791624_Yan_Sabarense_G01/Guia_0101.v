module Guia_0101;

    integer a = 26; // decimal
    reg [9:0] aInBinary = 0; // binary (bits - little endian)

    integer b = 53; 
    reg [9:0] bInBinary = 0;

    integer c = 723;
    reg[9:0] cInBinary = 0;

    integer d = 312;
    reg[9:0] dInBinary = 0;

    integer e = 365;
    reg[9:0] eInBinary = 0;

initial

    begin : main
    $display ( "a = %d" , a );
    aInBinary = a;
    $display ( "aInBinary = %b\n", aInBinary );

    $display ( "b = %d" , b );
    bInBinary = b;
    $display ( "bInBinary = %b\n", bInBinary );

    $display ( "c = %d" , c );
    cInBinary = c;
    $display ( "cInBinary = %b\n", cInBinary );

    $display ( "d = %d" , d );
    dInBinary = d;
    $display ( "dInBinary = %b\n", dInBinary );

    $display ( "e = %d" , e );
    eInBinary = e;
    $display ( "dInBinary = %b\n" , eInBinary );
    end 
    
endmodule 