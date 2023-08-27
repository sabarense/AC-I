module Guia_0405 (
    output [4:0] sop_results,
    output [4:0] pos_results,
    input  [3:0] n,
    input  [3:0] x,
    input  [3:0] y,
    input  [3:0] z,
    input  [3:0] w
);

  // SoP expressions
  assign sop_results[0] = (n == 0) ? 1 : 0;
  assign sop_results[1] = (n == 1) ? 1 : 0;
  assign sop_results[2] = (n == 2) ? 1 : 0;
  assign sop_results[3] = (n == 3) ? 1 : 0;
  assign sop_results[4] = 0;  // Not used in this example

  // PoS expressions
  assign pos_results[0] = (~x[0] & ~x[1] & ~x[2] & ~x[3]) |
                            (~y[0] & ~y[1] & ~y[2] & ~y[3]) |
                            (~z[0] & ~z[1] & ~z[2] & ~z[3]) |
                            (~w[0] & ~w[1] & ~w[2] & ~w[3]);
  assign pos_results[1] = (~x[0] & ~x[1] & ~x[2] & x[3]) |
                            (~y[0] & ~y[1] & ~y[2] & ~y[3]) |
                            (~z[0] & ~z[1] & ~z[2] & ~z[3]) |
                            (~w[0] & ~w[1] & ~w[2] & ~w[3]);
  assign pos_results[2] = (x[0] & ~x[1] & ~x[2] & ~x[3]) |
                            (~y[0] & y[1] & ~y[2] & y[3]) |
                            (~z[0] & ~z[1] & ~z[2] & ~z[3]) |
                            (~w[0] & ~w[1] & ~w[2] & ~w[3]);
  assign pos_results[3] = (~x[0] & x[1] & ~x[2] & ~x[3]) |
                            (y[0] & ~y[1] & y[2] & ~y[3]) |
                            (~z[0] & ~z[1] & ~z[2] & ~z[3]) |
                            (~w[0] & ~w[1] & ~w[2] & ~w[3]);
  assign pos_results[4] = 0;

endmodule
