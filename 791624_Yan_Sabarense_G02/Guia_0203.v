/*
 Guia_0203.v
 999999 - Xxx Yyy Zzz
*/
module Guia_0203;
  // define data

  reg [5:0] a = 6'b010010;
  reg [5:0] b = 6'b100101;
  reg [7:0] c = 8'b10101100;
  reg [5:0] d = 6'b110001;
  reg [3:0] e = 4'b1001;  // binary

  integer x = 0;

  reg [2:0] d1 = 3'b001;
  reg [3:0] e1 = 4'b1110;
  // actions
  initial begin : main
    $display("Guia_0203 - Tests");

    $display("a = 0.%d%d%d", a[5:4], a[3:2], a[1:0]);

    $display("b = 0.%o%o", b[5:3], b[2:0]);

    $display("c = 0.%x", c[7:4], c[3:0]);

    x = d1;
    $display("d = %o.%o%o", x, d[5:3], d[2:0]);

    x = e1;
    $display("e = %x.%x", x, e);

  end  // main
endmodule  // Guia_0203


