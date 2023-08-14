/*
 Guia_0205.v
*/
module Guia_0205;
  // define data
  reg [2:0] a1 = 3'b101;  // binary
  reg [2:0] a2 = 3'b001;  // binary
  reg [2:0] a3 = 3'b011;  // binary
  reg [2:0] a4 = 3'b111;  // binary

  reg [3:0] b1 = 4'b1001;  // binary
  reg [2:0] b2 = 3'b111;  // binary
  reg [3:0] b3 = 4'b010;  // binary
  reg [2:0] b4 = 3'b011;  // binary

  reg [2:0] c1 = 3'b100;  // binary
  reg [2:0] c2 = 3'b101;  // binary
  reg [2:0] c3 = 3'b011;  // binary
  reg [2:0] c4 = 3'b011;  // binary

  reg [4:0] d1 = 5'b10110;  // binary
  reg [2:0] d2 = 3'b001;  // binary
  reg [4:0] d3 = 5'b00010;  // binary
  reg [2:0] d4 = 3'b011;  // binary

  reg [6:0] e1 = 7'b1101101;  // binary
  reg [3:0] e3 = 4'b1011;  // binary

  reg [3:0] i;
  reg [3:0] f;
  // actions
  initial begin : main
    $display("Guia_0205 - Tests");

    i = a1 + a3;
    f = a2 + a4;
    $display("a = %4b.%4b", i, f);

    i = b1 - b3;
    f = b2 - b4;
    $display("b = %4b.%4b", i, f);

    i = c1 * c3;
    f = c2 * c4;
    $display("c = %4b.%4b", i, f);

    i = d1 / d3;
    f = d2 / d4;
    $display("d = %4b.%4b", i, f);

    i = e1 % e3;
    $display("a = %4b", i);

  end  // main
endmodule  // Guia_0205




