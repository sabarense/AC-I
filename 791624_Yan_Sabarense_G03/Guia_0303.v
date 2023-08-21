module Guia_0303;

  reg [4:0] a = 5'b10101;
  reg [5:0] b = 6'b110011;
  reg [5:0] c = 6'b100111;
  reg [6:0] d = 7'b1011011;
  reg [6:0] e = 7'b1010001;

  reg [4:0] a_positive;
  reg [5:0] b_positive;
  reg [5:0] c_positive;
  reg [6:0] d_positive;
  reg [6:0] e_positive;

  // Calculate positive values
  initial begin
    // a
    a_positive = (~a + 1);
    $display("a = %5b -> Positive(a) = %d", a, a_positive);

    // b
    b_positive = (~b + 1);
    $display("b = %6b -> Positive(b) = %d", b, b_positive);

    // c
    c_positive = (~c + 1);
    $display("c = %6b -> Positive(c) = %d", c, c_positive);

    // d
    d_positive = (~d + 1);
    $display("d = %7b -> Positive(d) = %d", d, d_positive);

    // e
    e_positive = (~e + 1);
    $display("e = %7b -> Positive(e) = %d", e, e_positive);
  end

endmodule
