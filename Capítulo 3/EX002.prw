#include "TOTVS.ch"

//COME�O AREA DE IDENTIFICA��O

/*/ {Protheus.doc} Exemplo 2 cap 3
@type function
@version  12.1.33
@author Vinicius Corte
@since 12/10/2022
@return variant, return_description
/*/

// FIM AREA DE IDENTIFICA��O

User Function fFatorial()

    // COME�O �REA DE AJUSTES INICIAIS

    Local nCnt
    Local nResultado := 1 // Resultado do fatorial
    Local nFator := 5 // N�mero para o c�lculo

    // FIM �REA DE AJUSTES INICIAIS

    // COME�O DO CORPO DO PROGRAMA

    // C�lculo do fatorial
    For nCnt := nFator To 1 Step -1
        nResultado *= nCnt // *= multiplica��o
    Next nCnt

    // FIM CORPO DO PROGRAMA

    // COME�O DA �REA DE ENCERRAMENTO

    // Exibe o resultado na tela, atrav�s da fun��o alert
    MsgAlert("O fatorial de " + cValToChar(nFator) + ;
    " � " + cValToChar(nResultado))
Return

// FIM DA �REA DE ENCERRAMENTO
