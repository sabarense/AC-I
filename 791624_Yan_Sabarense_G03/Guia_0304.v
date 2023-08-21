module Guia_0304_operations;

  reg [4:0] a = 5'b11100;
  reg [3:0] b = 4'b1101;
  reg [7:0] c = 8'b1010111;
  reg [7:0] d = 8'b10011;
  reg [11:0] e = 12'b10011100;
  reg [11:0] f = 12'b11001111;

  wire [4:0] a_result;
  wire [7:0] b_result;
  wire [3:0] c_result;
  wire [7:0] d_result;
  wire [11:0] e_result;
  wire [11:0] f_result;

  assign a_result = a - (~b) - 1;
  assign b_result = c - (~d) - 1;
  assign c_result = a - b;
  assign d_result = c - d;
  assign e_result = e - f;

  initial begin
    $display("a = %5b - b = %4b -> Result(a) = %5b", a, b, a_result);
    $display("c = %8b - d = %4b -> Result(c) = %8b", c, d, b_result);
    $display("a = %5b - b = %4b -> Result(a) = %4b", a, b, c_result);
    $display("c = %8b - d = %4b -> Result(c) = %4b", c, d, d_result);
    $display("e = %12b - f = %12b -> Result(e) = %12b", e, f, e_result);
  end

endmodule
