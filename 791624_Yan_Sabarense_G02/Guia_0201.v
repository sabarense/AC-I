/*
 Guia_0201.v
 999999 - Xxx Yyy Zzz
*/
module Guia_0201;
  // define data
  real x = 0;  // decimal
  real power2 = 1.0;  // power of 2
  integer y = 7;  // counter
  reg [7:0] a = 8'b01101000;  // binary (only fraction part, Big Endian)
  reg [7:0] b = 8'b10011000;
  reg [7:0] c = 8'b10101000;
  reg [7:0] d = 8'b11001000;
  reg [7:0] e = 8'b11011000;

  reg [1:0] d1 = 2'b01;
  reg [1:0] e1 = 2'b11;

  integer z = 0;
  // actions
  initial begin : main
    $display("Guia_0201 - Tests");
    $display("a = 0.%8b", a);

    while (y >= 0) begin
      power2 = power2 / 2.0;

      if (a[y] == 1) begin
        x = x + power2;
      end

      $display("a = %f", x);
      y = y - 1;
    end  // end while

    x = 0;
    y = 7;
    power2 = 1;

    $display("b = 0.%8b", b);

    while (y >= 0) begin
      power2 = power2 / 2.0;

      if (b[y] == 1) begin
        x = x + power2;
      end

      $display("b = %f", x);
      y = y - 1;
    end  // end while

    x = 0;
    y = 7;
    power2 = 1;

    $display("c = 0.%8b", c);

    while (y >= 0) begin
      power2 = power2 / 2.0;

      if (c[y] == 1) begin
        x = x + power2;
      end

      $display("c = %f", x);
      y = y - 1;
    end  // end while

    x = 0;
    y = 7;
    power2 = 1;
    z = d1;

    $display("d = 1.%8b", d);

    while (y >= 0) begin
      power2 = power2 / 2.0;

      if (d[y] == 1) begin
        x = x + power2;
      end

      $display("d = %d.%f", z, x);
      y = y - 1;
    end  // end while

    x = 0;
    y = 7;
    power2 = 1;
    z = e1;

    $display("e = 11.%8b", e);

    while (y >= 0) begin
      power2 = power2 / 2.0;

      if (e[y] == 1) begin
        x = x + power2;
      end

      $display("e = %d.%f", z, x);
      y = y - 1;
    end  // end while

  end  // main
endmodule  // Guia_0201
