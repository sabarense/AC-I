module Guia_0404 (
    output [4:0] f,
    input x,
    y,
    z,
    w
);
  // Expressão a: F(X,Y,Z) = πM(1, 3, 6, 7)
  assign f[0] = (x | y | ~z) & (~x | y | z) & (x | ~y | z) & (x | ~y | ~z);

  // Expressão b: F(X,Y,Z) = πM(0, 4, 3, 5, 7)
  assign f[1] = (~x | ~y | z) & (x | ~y | ~z) & (~x | y | ~z) & (x | ~y | ~z) & (x | y | z);

  // Expressão c: F(X,Y,W,Z) = πM(0, 1, 2, 4, 6, 8, 11, 13)
  assign f[2] = (~x | ~y | ~w) & (~x | ~y | ~z) & (~x | y | w) & (~x | y | ~z) & (x | ~y | w) & (~x | y | ~w) & (x | y | w) & (~x | y | w);

  // Expressão d: F(X,Y,W,Z) = πM(1, 2, 4, 6, 8, 9, 11)
  assign f[3] = (x | ~y | ~w) & (x | ~y | ~z) & (~x | y | w) & (~x | y | ~z) & (~x | y | ~w) & (x | y | w) & (x | y | w);

  // Expressão e: F(X,Y,W,Z) = πM(0, 1, 2, 3, 5, 11, 15)
  assign f[4] = (~x | ~y | ~w) & (~x | ~y | ~z) & (~x | y | ~w) & (~x | y | ~z) & (~x | y | w) & (x | y | w) & (x | y | z);
endmodule
