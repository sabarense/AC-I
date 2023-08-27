module Guia_0403 (
    output [4:0] f,
    input x,
    y,
    z,
    w
);
  // Expressão a: f(x, y, z) = ∑m(2, 3, 6, 7)
  assign f[0] = x & ~y & ~z;

  // Expressão b: f(x, y, z) = ∑m(1, 3, 5, 7)
  assign f[1] = ~x & ~y & z | ~x & y & ~z | x & ~y & ~z | x & y & z;

  // Expressão c: f(x, y, w, z) = ∑m(1, 3, 4, 6, 9, 12, 13)
  assign f[2] = ~x & ~y & ~w & ~z | ~x & y & ~w & z | x & ~y & ~w & z | 
                 ~x & y & w & z | x & ~y & w & ~z | x & y & ~w & ~z | x & y & w & z;

  // Expressão d: f(x, y, w, z) = ∑m(1, 2, 5, 6, 8, 10, 12)
  assign f[3] = ~x & ~y & w & z | ~x & y & ~w & z | x & ~y & ~w & ~z | 
                 x & ~y & w & ~z | ~x & ~y & ~w & ~z | ~x & y & w & ~z | x & y & ~w & z;

  // Expressão e: f(x, y, w, z) = ∑m(0, 2, 3, 7, 9, 13)
  assign f[4] = ~x & y & ~w & ~z | x & ~y & ~w & z | ~x & ~y & ~w & ~z | 
                 ~x & y & w & z | x & ~y & w & ~z | x & y & ~w & z;
endmodule
