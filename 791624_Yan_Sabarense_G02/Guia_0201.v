module BinaryToDecimalConversion;

reg [4:0] binary_a = 5'b01101; // Binary value for a
reg [4:0] binary_b = 5'b10011; // Binary value for b
reg [4:0] binary_c = 5'b10101; // Binary value for c
reg [5:0] binary_d = 6'b111001; // Binary value for d
reg [7:0] binary_e = 8'b1111011; // Binary value for e

real decimal_a, decimal_b, decimal_c, decimal_d, decimal_e;

initial begin
    decimal_a = binary_to_decimal(binary_a);
    decimal_b = binary_to_decimal(binary_b);
    decimal_c = binary_to_decimal(binary_c);
    decimal_d = binary_to_decimal(binary_d);
    decimal_e = binary_to_decimal(binary_e);

    $display("a.) Binary: %b = Decimal: %f", binary_a, decimal_a);
    $display("b.) Binary: %b = Decimal: %f", binary_b, decimal_b);
    $display("c.) Binary: %b = Decimal: %f", binary_c, decimal_c);
    $display("d.) Binary: %b = Decimal: %f", binary_d, decimal_d);
    $display("e.) Binary: %b = Decimal: %f", binary_e, decimal_e);
end

function real binary_to_decimal(input [4:0] binary);
    real decimal = 0.0;
    real power_of_2 = 1.0;
    integer i;
    
    for (i = 4; i >= 0; i = i - 1) begin
        if (binary[i] == 1) begin
            decimal = decimal + power_of_2;
        end
        power_of_2 = power_of_2 * 2.0;
    end
    
    return decimal;
endfunction

endmodule
