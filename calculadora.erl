%Define o nome do módulo (tem que ser igual ao nome do arquivo)
-module(calculadora).

%Expõe a função soma com 2 argumentos
-export([soma/2]).

soma(A, B) ->
    A + B.