# Declaração e atribuição de variáveis
- AdvPl = fracamente acoplado
- TL++ = fortemente acoplado

## Númerico
Pode conter números de até 18 digitos, podendo ser de ponto flutuante.<br>
**Convenção:** nome da variáveis começa com n.
```
// Fracamente acoplado
Local nNumero := 13.4

// Fortemente acoplado
Local nNumero := 13.4 as numeric
```

## Lógico
Verdadeiro a falso<br>
**Convenção:** nome da variáveis começa com l (L).
```
// Fracamente acoplado
Local lVerdadeiro := .T. // ou .Y.
Local lFalso := .F. // ou .N.

// Fortemente acoplado
Local lVerdadeiro := .T. as logical // ou .Y.
Local lFalso := .F. as logical // ou .N.
```

## Caractere
Texto. Usam aspas duplas ou simples.<br>
**Convenção:** nome da variáveis começa com c.
```
// Fracamente acoplado
Local cTexto := "Olá warudo!"

// Fortemente acoplado
Local cTexto := "Olá warudo!" as character
```

## Data
Usado para armazenar datas, utilizam funções para serem armazenadas.<br>
**Convenção:** nome da variáveis começa com d.
```
// Fracamente acoplado
Local dData := CTOD("22/07/2000")

// Fortemente acoplado
Local dData := CTOD("22/07/2000") as date
```

## Array
Conjunto de elementos armazenados em sequência. O índice inicia com 1.<br>
**Convenção:** nome da variáveis começa com a.
```
// Fracamente acoplado
Local aMatriz = {"Bottom text", 10, CTOD("01/01/1999")}

// Fortemente acoplado
Local aMatriz = {"Bottom text", 10, CTOD("01/01/1999")} as array
```

## Bloco de código
Grava uma coleção de comandos que podem ser macroexecutados.<br>
**Convenção:** nome da variáveis começa com b.
```
Local bBloco := {||10+1}
```

# Declaração de variáveis
- AdvPl: Compilador só considera as 10 primeiras letras dos nomes das variáveis.
- TL++: Limite aumentado para 255.
- Exemplo: EX003.prw