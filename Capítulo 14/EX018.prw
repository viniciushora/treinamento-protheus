#include "TOTVS.ch"

User Function EX018()
    nInt := 10
    bBloco := {|N| x:= 10, y:= x*N, z:= y/(x*N)}
    nValor := EVAL(bBloco, nInt)
    Alert(STR(nValor))
// O retorno será dado pela avaliação da ultima ação da lista de expressões, no caso “z”.
// Cada uma das variáveis definidas, em uma das ações da lista de expressões, fica 
// disponível para a próxima ação.
// Desta forma temos: 
// N -> recebe nInt como parâmetro (10)
// X-> tem atribuído o valor 10 (10)
// Y -> resultado da multiplicação de X por N (100)
// Z -> resultado da divisão de Y pela multiplicação de X por N ( 100 / 100) -> 1

Return
