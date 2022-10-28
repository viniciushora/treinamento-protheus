#include "TOTVS.ch"

User Function EX018()
    nInt := 10
    bBloco := {|N| x:= 10, y:= x*N, z:= y/(x*N)}
    nValor := EVAL(bBloco, nInt)
    Alert(STR(nValor))
// O retorno ser� dado pela avalia��o da ultima a��o da lista de express�es, no caso �z�.
// Cada uma das vari�veis definidas, em uma das a��es da lista de express�es, fica 
// dispon�vel para a pr�xima a��o.
// Desta forma temos: 
// N -> recebe nInt como par�metro (10)
// X-> tem atribu�do o valor 10 (10)
// Y -> resultado da multiplica��o de X por N (100)
// Z -> resultado da divis�o de Y pela multiplica��o de X por N ( 100 / 100) -> 1

Return
