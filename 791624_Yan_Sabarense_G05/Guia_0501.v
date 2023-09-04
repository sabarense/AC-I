
module Guia_0501 (
    output s,
    input  a,
    input  b
);

  //Portas

  nor NOR (s, a, b);


endmodule


module teste;

  //Dados para teste

  reg  y;
  reg  x;
  wire a;

  Guia_0501 moduloTeste (
      a,
      x,
      y
  );

  initial begin : main

    $display(" x - y - a ");
    // projetar testes do modulo

    /*
			Fazendo a tabela verdade para prever resultados
			
				| a | b |  ~(a|b)|
				|---|---|---------|
				| 0 | 0 |    1    |
				| 0 | 1 |    0    |
				| 1 | 0	|    0    |
				| 1 | 1 |    0    |
				
		*/

    $monitor("%4b %4b %4b", x, y, a);
    x = 1'b0;
    y = 1'b0;
    #1 x = 1'b0;
    y = 1'b1;
    #1 x = 1'b1;
    y = 1'b0;
    #1 x = 1'b1;
    y = 1'b1;
  end
endmodule
