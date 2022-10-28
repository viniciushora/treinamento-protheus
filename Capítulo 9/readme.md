# Conversões entre tipos de variáveis

## CTOD()
| Sintaxe   | CTOD(cData)                                                                                                     |
|-----------|-----------------------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo caractere no formato “DD/MM/AAAA”, para uma variável do tipo data |<br>

```
CtoD("01/12/16") + 5 -> 06/12/2016
```

## DTOC()
| Sintaxe   | DTOC(dData)                                                                                                      |
|-----------|------------------------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo data para em caractere, sendo o resultado no formato ""DD/MM/AAAA" |<br>

```
DtoC(Date()) -> "27/10/22".
```

## DTOS()
| Sintaxe   | DTOS(dData)                                                                                                 |
|-----------|-------------------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo data em um caractere, sendo o resultado no formato "AAAAMMDD" |<br>
```
DtoS ( Date() ) -> "20221027"
```

## STOD()
| Sintaxe   | STOD(sData)                                                                                         |
|-----------|-----------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo caractere “AAAAMMDD”, com conteúdo no formato em data |<br>

```
Stod (Date() ) -> ""AAAAMMDD"
```

## CVALTOCHAR()
| Sintaxe   | CVALTOCHAR(nValor)                                                                                         |
|-----------|------------------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo numérico em uma string, sem a adição de espaços a informação |<br>

```
cValTochar(50) -> “50”
```

## STR()
| Sintaxe   | STR(nNumero, nTamanho, nDecimal)                                                                    |
|-----------|-----------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo numérico em uma string, adicionando espaços à direita |<br>
```
Str(700, 8, 2) -> " 700.00"
```

## STRZERO()
| Sintaxe   | STRZERO(nNumero, nTamanho, nDecimal)                                                                                                                                                            |
|-----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo numérico em uma string, adicionando zeros à esquerda do número convertido, de forma que a string gerada tenho o tamanho especificado no parâmetro |<br>
```
StrZero(60, 10) -> "0000000060"
```

## VAL()
| Sintaxe   | VAL(cValor)                                                          |
|-----------|----------------------------------------------------------------------|
| Descrição | Realiza a conversão de uma informação do tipo caractere em numérica. |<br>

```
Val("1234") -> 1234
```

# Manipulação de strings
## ALLTRIM()
| Sintaxe   | ALLTRIM(cString)                                         |
|-----------|----------------------------------------------------------|
| Descrição | Retorna uma string sem os espaços à direita e à esquerda |<br>

```
AllTrim(" ADVPL ") -> "ADVPL
```

## ASC()
| Sintaxe   | ASC(cCaractere)                                                               |
|-----------|-------------------------------------------------------------------------------|
| Descrição | Converte uma informação caractere em seu valor, de acordo com a tabela ASCII. |<br>

```
Asc( "A" ) ) -> 65
```

## AT()
| Sintaxe   | AT(cProcura, cString, nApos)                                                              |
|-----------|-------------------------------------------------------------------------------------------|
| Descrição | Retorna a primeira posição de um caractere ou string, dentro de outra string especificada (0 = não tem) |<br>

```
At("a", "abcde") -> 1
At("f", "abcde") -> 0
```

## RAT()
| Sintaxe   | RAT(cCaractere, cString)                                                                |
|-----------|-----------------------------------------------------------------------------------------|
| Descrição | Retorna a última posição de um caractere ou string, dentro de outra string especificada |<br>

```
RAT("A", "MARIANO") -> 5
```

## CHR()
| Sintaxe   | CHR(nASCII)                                                                                                      |
|-----------|------------------------------------------------------------------------------------------------------------------|
| Descrição | Converte um valor número referente a uma informação da tabela ASCII, no caractere que esta informação representa |<br>

```
Chr( 65 )-> "A"
Chr( 13 )-> Tecla Enter
```

## LEN()
| Sintaxe   | LEN(cString)                                          |
|-----------|-------------------------------------------------------|
| Descrição | Retorna o tamanho da string ou estrutura especificada |<br>

```
Len(“ABCDEF”) -> 6
// Len( {"Jorge", 34, .T.} ) -> 3 Elementos
```

## LOWER()
| Sintaxe   | LOWER(cString)                                                                                         |
|-----------|--------------------------------------------------------------------------------------------------------|
| Descrição | Retorna uma string com todos os caracteres minúsculos, tendo como base a string passada como parâmetro |<br>

```
Lower("AbCdE") -> "abcde"
```

## STUFF()
| Sintaxe   | STUFF(cString, nPosInicial, nExcluir, cAdicao)                                                                                                                        |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Permite substituir um conteúdo caractere em uma string já existente, especificando a posição inicial para esta adição e o número de caracteres que serão substituídos |<br>

```
Stuff("ABCDE", 3, 2, "123") -> "AB123E" substitui "CD" por "123"
```

## SUBSTR()
| Sintaxe   | SUBSTR(cString, nPosInicial, nCaracteres)                                                                                                                                                                |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna parte do conteúdo de uma string especificada, de acordo com a posição inicial deste conteúdo na string e a quantidade de caracteres que deverá ser retornada a partir daquele ponto (inclusive). |<br>

```
Substr("ADVPL", 3, 2) -> "VL"
```

## UPPER()
| Sintaxe   | UPPER(cString)                                                                                          |
|-----------|---------------------------------------------------------------------------------------------------------|
| Descrição | Retorna uma string com todos os caracteres maiúsculos, tendo como base a string passada como parâmetro. |<br>

```
UPPER ("AbCdE") -> "ABCDE"
```

## PadR()
| Sintaxe   | Padr(cString)                                                               |
|-----------|-----------------------------------------------------------------------------|
| Descrição | Adiciona caracteres de preenchimento à direita do conteúdo de uma variável. |<br>

```
PadR("ABC", 10, "*") -> "ABC*******"
```

## PadC()
| Sintaxe   | PadC(cString)                                                                 |
|-----------|-------------------------------------------------------------------------------|
| Descrição | Adiciona caracteres de preenchimento centralizando o conteúdo de uma variável |<br>

```
PadC("ABC", 10, "*") -> " ***ABC****"
```

## PadL()
| Sintaxe   | PadL(cString)                                                                |
|-----------|------------------------------------------------------------------------------|
| Descrição | Adiciona caracteres de preenchimento a esquerda do conteúdo de uma variável. |<br>

```
PadL("ABC", 10, "*") -> "ABC******"
```

## Replicate()
| Sintaxe   | Replicate(cString, nCount)                  |
|-----------|---------------------------------------------|
| Descrição | Gera uma string repetida a partir de outra. |<br>

```
Replicate("*", 5) -> "*****"
```

## StrTran()
| Sintaxe   | StrTran( cString , cSearch, cReplace, nStart , nCount )      |
|-----------|--------------------------------------------------------------|
| Descrição | Pesquisa e substitui um conjunto de caracteres de uma string |<br>

```
StrTran( “ABCABC”, "B", "1" ) -> A1CA1C
```

# Manipulação de variáveis númericas
## ABS()
| Sintaxe   | ABS(nValor)                                                                                   |
|-----------|-----------------------------------------------------------------------------------------------|
| Descrição | Retorna um valor absoluto (independente do sinal) com base no valor especificado no parâmetro |<br>

```
ABS( 10 – 90) ) -> 80
```

## INT()
| Sintaxe   | INT(nValor)                                                  |
|-----------|--------------------------------------------------------------|
| Descrição | Retorna a parte inteira de um valor especifico no parâmetro. |<br>

```
INT(999.10) -> 999
```

## NOROUND()
| Sintaxe   | NOROUND(nValor, nCasas)                                                                                                                |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna um valor, truncando a parte decimal do valor especificado no parâmetro de acordo com a quantidade de casa decimais solicitadas |<br>

```
NOROUND(2.985, 2) -> 2.98
```

## ROUND()
| Sintaxe   | ROUND(nValor, nCasas)                                                                                                                                                            |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna um valor, arredondando a parte decimal do valor especificado no parâmetro, de acordo com as quantidades de casas decimais solicitadas, utilizando o critério matemático. |<br>

```
ROUND(2.986, 2) -> 2.99
```

# Verificação de tipos de variáveis
## TYPE()
| Sintaxe   | TYPE(“cVariavel”)                                                                            |
|-----------|----------------------------------------------------------------------------------------------|
| Descrição | Determina o tipo do conteúdo de uma variável, a qual não foi definida na função em execução. |<br>

```
TYPE(“DATE()”) -> “D”
```

## VALTYPE()
| Sintaxe   | VALTYPE(cVariável)                                                                       |
|-----------|------------------------------------------------------------------------------------------|
| Descrição | Determina o tipo do conteúdo de uma variável, a qual foi definida na função em execução. |<br>

```
VALTYPE(“nValor / 2”) -> “N”
```