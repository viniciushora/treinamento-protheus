#include "TOTVS.ch"

User Function EX011()
    Local xVariavel // Declara a variável inicialmente com valor nulo
    xVariavel := "Agora a variável é caractere..."
    Alert("Valor do Texto: " + xVariavel)

    xVariavel := 22 // Agora a variável é numérica
    Alert(cValToChar(xVariavel))

    xVariavel := .T. // Agora a variável é lógica
    If xVariavel
        Alert("A variável tem valor verdadeiro...")
    Else
        Alert("A variável tem valor falso...")
    Endif

    xVariavel := Date() // Agora a variável é data
    Alert("Hoje é: " + DtoC(xVariavel))

    xVariavel := nil // Nulo novamente
    Alert("Valor nulo: " + xVariavel) // Erro: Operação com tipos diferentes

Return
