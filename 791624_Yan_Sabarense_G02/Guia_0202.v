/*
 Guia_0202.v
 999999 - Xxx Yyy Zzz
*/
module Guia_0202;
  // define data
  real a = 0.75;  // decimal
  real b = 0.375;
  real c = 0.625;
  real d = 0.875;
  real e = 0.03125;

  integer b2 = 1;
  integer c2 = 2;
  integer d2 = 6;
  integer e2 = 11;

  reg [3:0] r = 0;

  integer y = 7;  // counter
  reg [7:0] a1 = 0;  // binary
  reg [7:0] b1 = 0;  // binary
  reg [7:0] c1 = 0;  // binary
  reg [7:0] d1 = 0;  // binary
  reg [7:0] e1 = 0;  // binary

  // actions
  initial begin : main
    $display("Guia_0202 - Tests");
    $display("a = %f", a);
    $display("a = 0.%8b", a1);

    while (a > 0 && y >= 0) begin
      if (a * 2 >= 1) begin
        a1[y] = 1;
        a = a * 2.0 - 1.0;
      end else begin
        a1[y] = 0;
        a = a * 2.0;
      end  // end if

      $display("a = 0.%8b", a1);
      y = y - 1;
    end  // end while

    y = 7;
    $display("b = %f", b);
    $display("b = 0.%8b", b1);
    r = b2;

    while (b > 0 && y >= 0) begin
      if (b * 2 >= 1) begin
        b1[y] = 1;
        b = b * 2.0 - 1.0;
      end else begin
        b1[y] = 0;
        b = b * 2.0;
      end  // end if

      $display("b = %8b.%8b", r, b1);
      y = y - 1;
    end  // end while

    y = 7;
    $display("c = %f", c);
    $display("c = 0.%8b", c1);
    r = c2;

    while (c > 0 && y >= 0) begin
      if (c * 2 >= 1) begin
        c1[y] = 1;
        c = c * 2.0 - 1.0;
      end else begin
        c1[y] = 0;
        c = c * 2.0;
      end  // end if

      $display("c = %8b.%8b", r, c1);
      y = y - 1;
    end  // end while

    y = 7;
    $display("d = %f", d);
    $display("d = 0.%8b", d1);
    r = d2;

    while (d > 0 && y >= 0) begin
      if (d * 2 >= 1) begin
        d1[y] = 1;
        d = d * 2.0 - 1.0;
      end else begin
        d1[y] = 0;
        d = d * 2.0;
      end  // end if

      $display("d = %8b.%8b", r, d1);
      y = y - 1;
    end  // end while

    y = 7;
    $display("e = %f", e);
    $display("e = 0.%8b", e1);
    r = e2;

    while (e > 0 && y >= 0) begin
      if (e * 2 >= 1) begin
        e1[y] = 1;
        e = e * 2.0 - 1.0;
      end else begin
        e1[y] = 0;
        e = e * 2.0;
      end  // end if

      $display("e = %8b.%8b", r, e1);
      y = y - 1;
    end  // end while

  end  // main
endmodule  // Guia_0202

