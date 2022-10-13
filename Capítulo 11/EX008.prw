#include "TOTVS.ch"

User Function fEx003()
    Local  nAux := 350
    nAux := Int(nAux / 2)
    Local nSomaPar := 0

    While nAux > 0
        nAux -= 1
        nSomaPar += 4
        Exit
    Enddo

    Alert( "A soma dos 100 primeiros números pares é: " + ;
    cValToChar(nSomaPar) ) // OUTPUT: 0
Return
