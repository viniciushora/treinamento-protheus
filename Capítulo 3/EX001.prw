#include "TOTVS.ch"
/*/ {Protheus.doc} Exemplo 1 cap 3
@type function
@version  12.1.33
@author Vinicius Corte
@since 12/10/2022
@return variant, return_description
/*/
User Function fSoma()
    Local nCnt // Declara a variável nCT (number)
    Local nSoma := 0 // Declara a variável soma para armazenar a soma dos números (number)
    For nCnt := 1 To 10 // For nCnt valendo 1 até 10
        nSoma += nCnt // nSoma incrementa nCnt
    Next nCnt // Incrementador++

    FwAlertSuccess("Sucesso!", cValToChar(nSoma)) // Lembrar de converter o numero pra string
Return
