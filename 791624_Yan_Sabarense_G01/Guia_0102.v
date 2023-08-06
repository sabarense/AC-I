module Guia_0102;

integer aInDecimal = 0; // decimal
reg [7:0] aInBinary = 8'b0010110; // binary (bits - little endian)

integer bInDecimal = 0; // decimal
reg [7:0] bInBinary = 8'b0011011; // binary (bits - little endian)

integer cInDecimal = 0; // decimal
reg [7:0] cInBinary = 8'b00100100; // binary (bits - little endian)

integer dInDecimal = 0; // decimal
reg [7:0] dInBinary = 8'b00101001; // binary (bits - little endian)

integer eInDecimal = 0; // decimal
reg [7:0] eInBinary = 8'b00110111; // binary (bits - little endian

initial

    begin : main
    $display ( "aInBinary = %8b", aInBinary );
    aInDecimal = aInBinary;
    $display ( "aInDecimal = %d\n", aInDecimal );

    $display ( "bInBinary = %8b", bInBinary );
    bInDecimal = bInBinary;
    $display ( "bInDecimal= %d\n", bInDecimal );

    $display ( "cInBinary = %8b", cInBinary );
    cInDecimal = cInBinary;
    $display ( "cInDecimal = %d\n", cInDecimal );

    $display( "dInBinary = %8b", dInBinary);
    dInDecimal = dInBinary;
    $display( "dInDecimal = %d\n", dInDecimal);

    $display("eInBinary = %8b", eInBinary);
    eInDecimal = eInBinary;
    $display("eInDecimal = %d", eInDecimal);
    end 

endmodule 