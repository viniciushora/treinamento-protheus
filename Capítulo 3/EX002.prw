#include "TOTVS.ch"

//COMEÇO AREA DE IDENTIFICAÇÃO

/*/ {Protheus.doc} Exemplo 2 cap 3
@type function
@version  12.1.33
@author Vinicius Corte
@since 12/10/2022
@return variant, return_description
/*/

// FIM AREA DE IDENTIFICAÇÃO

User Function fFatorial()

    // COMEÇO ÁREA DE AJUSTES INICIAIS

    Local nCnt
    Local nResultado := 1 // Resultado do fatorial
    Local nFator := 5 // Número para o cálculo

    // FIM ÁREA DE AJUSTES INICIAIS

    // COMEÇO DO CORPO DO PROGRAMA

    // Cálculo do fatorial
    For nCnt := nFator To 1 Step -1
        nResultado *= nCnt // *= multiplicação
    Next nCnt

    // FIM CORPO DO PROGRAMA

    // COMEÇO DA ÁREA DE ENCERRAMENTO

    // Exibe o resultado na tela, através da função alert
    MsgAlert("O fatorial de " + cValToChar(nFator) + ;
    " é " + cValToChar(nResultado))
Return

// FIM DA ÁREA DE ENCERRAMENTO
