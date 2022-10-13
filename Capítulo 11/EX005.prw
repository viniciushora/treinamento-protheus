#include "TOTVS.ch"

/*/ {Protheus.doc} Exemplo 2 cap 3
@type function
@version  12.1.33
@author Vinicius Corte
@since 12/10/2022
@return variant, return_description
/*/

User Function fExemplu()
    Local nI
    Local nSoma := 0
    For nI := 0 To 100 Step 1
        nSoma += nI
    Next
    Alert( "A soma dos 100 primeiros números é: " + ;
    cValToChar(nSoma) )
Return
