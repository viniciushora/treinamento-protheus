#include "TOTVS.ch"

User Function fEx002()
    Local  nAux := 350
    nAux := Int(nAux / 2)
    Local nSomaPar := 0

    While nAux > 0
        nAux -= 1
        Loop
        nSomaPar += 4
    Enddo

    Alert( "A soma dos 100 primeiros n�meros pares �: " + ;
    cValToChar(nSomaPar) ) // OUTPUT: 0
Return
