#include "TOTVS.ch"

// tamanho do array conhecido
User Function EX016()

    Local nCnt
    Local aX[10]
    Local aY := Array(10)
    Local aZ := {0,0,0,0,0,0,0,0,0,0}

    For nCnt := 1 To 10
        aX[nCnt] := nCnt * nCnt
    Next nCnt

Return
