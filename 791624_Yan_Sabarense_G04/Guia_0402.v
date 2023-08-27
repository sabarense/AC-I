module Guia_0402 (
    output a,
    output b,
    output c,
    output d,
    output e,
    input  x,
    y,
    z,
    w
);
  // Expressão a: x . ( y'+z' )'
  assign a = x & ~(y | z);

  // Expressão b: ( x' + y' ) + ( x . y' )
  assign b = (~x | ~y) | (x & ~y);

  // Expressão c: ( x' . y' )' . z'
  assign c = (x | y) & z;

  // Expressão d: ( x . y' )' . z
  assign d = (x | ~y) & z;

  // Expressão e: ( x' + y ) . ( y' + z')
  assign e = (~x & y) | (~y & ~z);
endmodule  // Guia_0402
