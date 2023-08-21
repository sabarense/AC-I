module Guia_0301;

  reg [3:0] a = 4'b1001;  // a.) Binary value
  reg [7:0] b = 8'b1100;  // b.) Binary value
  reg [5:0] c = 6'b101101;  // c.) Binary value
  reg [6:0] d = 7'b100111;  // d.) Binary value
  reg [7:0] e = 8'b110001;  // e.) Binary value

  reg [3:0] a_c1;
  reg [7:0] b_c1;
  reg [5:0] c_c2;
  reg [6:0] d_c2;
  reg [7:0] e_c2;


  initial begin
    a_c1 = ~a + 1;
    b_c1 = ~b + 1;
    c_c2 = ~c + 1;
    d_c2 = ~d + 1;
    e_c2 = ~e + 1;

    $display("a = %4b -> C1(a) = %4b", a, a_c1);
    $display("b = %8b -> C1(b) = %8b", b, b_c1);
    $display("c = %6b -> C2(c) = %6b", c, c_c2);
    $display("d = %7b -> C2(d) = %7b", d, d_c2);
    $display("e = %8b -> C2(e) = %8b", e, e_c2);
  end

endmodule
