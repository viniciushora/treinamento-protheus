# Passagem de parâmetros entre funções
## Passagem de parâmetros por conteúdo
### Passagem de conteúdo direto
```
User Function DirFator()

    Local nResultado := 0

    nResultado := CalcFator(5)

Return
```

### Passagem de variáveis como conteúdos
```
User Function DirFator()
    Local nResultado := 0
    Local nFatorUser := 0

    nFatorUser := GetFator() // Função 
    ilustrativa na qual o usuário informa o fator a ser utilizado.
    nResultado := CalcFator(nFatorUser)

Return
```

## Passagem de parâmetros por referência
- @: A variável passada como parâmetros sofre alteração dependendo do funcionamento da função chamada.

```
U_FuncaoTal(@nParametro)
```

### Tratamento de conteúdos padrões para parâmetros de funções
- Identificador DEFAULT na variável como parâmetro para evitar a perda de parâmetros.

```
User Function CalcFator(nFator)
    Local nCnt
    Local nResultado := 0
    Default nFator := 1

    For nCnt := nFator To 1 Step -1
        nResultado *= nCnt
    Next nCnt
    
Return nResultado
```