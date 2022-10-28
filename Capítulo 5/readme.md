# Escopo de Variáveis
- Não tem tipos rígidos para as variáveis;
- Deve ter um identificador de escopo antes das variáveis
  
## Contexto de variáveis dentro de um programa
- Variáveis são visíveis dentro do escopo em que são definidas;
- São:
  - Local;
  - Static;
  - Private;
  - Public.
- Não é necessária a inclusão de um identificador de escopo para a declaração, desde que um valor seja atribuído.

## Variáveis de Escopo Local
- Pertencem apenas à função em que foram declaradas.
```
Local nVar := 10, aMatriz := {0,1,2,3}
```

## Variáveis de Escopo Static
- Pertencem ao fonte inteiro em que estão declaradas.
```
Static nVar := 10
```

## Variáveis de Escopo Private
- Pertencem à cadeia de funções as quais são executadas.
```
Private nVar := 10
```

## Variáveis de Escopo Public
- Existem até o fim de execução da thread;
- Visíveis globalmente em todo programa que for declarada como Private;
```
Public nVar := 10
```
```
Private nVar := 10
```

## Entendendo a influência do escopo das variáveis
- Exemplo: EX011.prw
