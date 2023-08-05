module Guia_0103;

 integer decimalA = 61; // decimal
 reg [9:0] convertedA = 0; // binary

 integer decimalB = 54; // decimal
 reg [9:0] convertedB = 0; // binary

 integer decimalC = 77; // decimal
 reg [9:0] convertedC = 0; // binary

 integer decimalD = 151; // decimal
 reg [9:0] convertedD = 0; // binary

 integer decimalE = 738; // decimal
 reg [9:0] convertedE = 0; // binary

 initial

    begin : main
    $display ( "decimalA = %d" , decimalA );
    convertedA = decimalA;
    $display ( "convertedA = %B (2) = %0d (4) = %o (8) = %x (16)\n", convertedA, convertedA, convertedA, convertedA );

    $display ( "decimalB = %d" , decimalB );
    convertedB = decimalB;
    $display ( "convertedB = %B (2) = %0d (4) = %o (8) = %x (16)\n", convertedB, convertedB, convertedB, convertedB );

    $display ( "decimalC = %d" , decimalC );
    convertedC = decimalC;
    $display ( "convertedC = %B (2) = %0d (4) = %o (8) = %x (16)\n", convertedC, convertedC, convertedC, convertedC );

    $display ( "decimalD = %d" , decimalD );
    convertedD = decimalD;
    $display ( "convertedD = %B (2) = %0d (4) = %o (8) = %x (16)\n", convertedD, convertedD, convertedD, convertedD );

    $display ( "decimalE = %d" , decimalE );
    convertedE = decimalE;
    $display ( "convertedE = %B (2) = %0d (4) = %o (8) = %x (16)\n", convertedE, convertedE, convertedE, convertedE );
    end 

endmodule 
