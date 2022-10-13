#include "TOTVS.ch"
/*/ {Protheus.doc} Exemplo 3 cap 4
Limite de caracteres variaveis
@type function
@version  12.1.33
@author Vinicius Corte
@since 13/10/2022
@return variant, return_description
/*/
User Function fExemplo3()
    nTotalGeralMensal := 100
    nTotalGeralAnual := 300
    Alert("Valor mensal: " + cValToChar(nTotalGeralMensal)) // OUTPUT: 100 - Variáveis com mesmo nome até os 10 caracteres
Return
