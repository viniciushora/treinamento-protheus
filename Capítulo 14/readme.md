# Blocos de Código
- Também referenciados com chaves {};
- Não podem ter seus elementos acessados;
- Armazena uma sequência de comandos a serem macroexecutados;

## Funções para manipulação de blocos de código
### EVAL()
| Sintaxe   | EVAL(bBloco, xParam1, xParam2, xParamZ)                                                                                                                                                                                                                                  |
|-----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função EVAL() é utilizada para avaliação direta de um bloco de código, utilizando as informações disponíveis no momento de sua execução. Esta função permite a definição e passagem de diversos parâmetros que serão considerados na interpretação do bloco de código. |<br>

```
Exemplo: EX018.prw
```

### DBEVAL()
| Sintaxe   | Array(bBloco, bFor, bWhile)                                                                                                                                   |
|-----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função DBEval() permite que todos os registros, de uma determinada tabela, sejam analisados e para cada registro será executado o bloco de código definido. |<br>

```
dbSelectArea(“SX5”)
dbSetOrder(1)
dbGotop()

While !Eof() .And. X5_FILIAL == xFilial("SX5") .And.; X5_TABELA <=cTab
    nCnt++
    dbSkip()
EndDo

O mesmo pode ser re-escrito com o uso da função DBEVAL():

dbEval( {|x| nCnt++ },,{||X5_FILIAL==xFilial("SX5") .And. X5_TABELA<= cTab })
```

### AEVAL()
| Sintaxe   | AEVAL(aArray, bBloco, nInicio, nFim)                                                                                                                     |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função AEVAL() permite que todos os elementos de um determinada array sejam analisados e para cada elemento será executado o bloco de código definido. |<br>

```
Considerando o trecho de código abaixo:
AADD(aCampos,”A1_FILIAL”)
AADD(aCampos,”A1_COD”)
SX3->(dbSetOrder(2))
For nX:=1 To Len(aCampos)
    SX3->(dbSeek(aCampos[nX]))
    aAdd(aTitulos,AllTrim(SX3->X3_TITULO))
Next nX

O mesmo pode ser re-escrito com o uso da função AEVAL():

aEval(aCampos,{|x| SX3->(dbSeek(x)),IIF(Found(), AAdd(aTitulos,AllTrim(SX3-
>X3_TITULO)))})
```