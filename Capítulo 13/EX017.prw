#include "TOTVS.ch"

// tamanho do array conhecido
User Function EX017()

     Local nCnt
    Local aX[0]
    Local aY := Array(0)
    Local aZ := {}
    Local nSize := Len(Ax)

    For nCnt := 1 To nSize
        AADD(aX, nCnt*nCnt)
    Next nCnt

Return
