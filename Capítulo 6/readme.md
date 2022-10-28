# Operadores da linguagem ADVPL

## Operadores comuns
```
Local nSalario := 1000
```

## Operadores Matemáticos
| Operador | Função                    |
|----------|---------------------------|
| +        | Adição                    |
| -        | Subtração                 |
| *        | Multiplicação             |
| /        | Divisão                   |
| ** ou ^  | Exponenciação             |
| %        | Módulo (Resto da Divisão) |

## Operadores de String
| Operador | Função                                                                                |
|----------|---------------------------------------------------------------------------------------|
| +        | Concatenação de strings (união)                                                       |
| -        | Concatenação de strings com eliminação dos brancos finais das strings intermediárias. |
| $        | Comparação de Substrings (contido em).                                                |

## Operadores Relacionais
| Operador | Função           |
|----------|------------------|
| <        | Menor            |
| >        | Maior            |
| =        | igual            |
| ==       | exatamente igual |
| <=       | Menor ou igual   |
| >=       | Maior ou igual   |
| <> ou != | Diferente        |

## Operadores lógicos
| Operador   | Função     |
|------------|------------|
| .And.      | E lógico   |
| .Or.       | OU lógico  |
| .Not. ou ! | NÃO lógico |

## Operadores de atribuição
| Operador  | Função                                          |
|-----------|-------------------------------------------------|
| :=        | Atribuição Simples                              |
| +=        | Adição e Atribuição em Linha                    |
| -=        | Subtração e Atribuição em Linha                 |
| *=        | Multiplicação e Atribuição em Linha             |
| /=        | Divisão e Atribuição em Linha                   |
| **= ou ^= | Exponenciação e Atribuição em Linha             |
| %=        | Módulo (resto da divisão) e Atribuição em Linha |

## Atribuição em linha
```
nVar1 := nVar2 := nVar3 := 0
```
- A atribuição começa da direita pra esquerda

## Operadores em Incrmento/Decremento
| Operador | Função                       |
|----------|------------------------------|
| ++       | Incremento Pós ou Pré-fixado |
| --       | Decremento Pós ou Pré-fixado |<br>

```
Local nA := 10
Local nB := nA++ + nA
// Resultado: 21
```
```
Local nA := 10
Local nB := ++nA + nA
// Resultado: 22
```

## Operadores Especiais
| Operador | Função                                            |
|----------|---------------------------------------------------|
| ()       | Agrupamento ou Função                             |
| []       | Elemento de Matriz                                |
| {}       | Definição de Matriz, Constante ou Bloco de Código |
| ->       | Identificador de Apelido                          |
| &        | Macro substituição                                |
| @        | Passagem de parâmetro por referência              |
| \|\|     | Passagem de parâmetro por valor                   |<br>

- Os colchetes [] são utilizados para especificar um elemento específico de uma matriz. Por exemplo, A[3,2] refere-se ao 
elemento da matriz A na linha 3, coluna 2;
- O símbolo -> identifica um campo de um arquivo, diferenciando-o de uma variável. Por exemplo, FUNC->nome refere-se ao campo nome do arquivo FUNC. Mesmo que exista uma variável chamada nome, é o campo nome que será 
acessado;
- O símbolo @ é utilizado para indicar que durante a passagem de uma variável para uma função ou procedimento ela 
seja tomada como uma referência e não como valor;
- O símbolo || é utilizado para indicar que durante a passagem de uma variável para uma função ou procedimento, ela 
seja tomada como um e valor não como referência.

## Ordem de Precedência dos Operadores
- Execução:
  - Operadores de Incremento/Decremento pré-fixado;
  - Operadores de String;
  - Operadores Matemáticos;
  - Operadores Relacionais;
  - Operadores Lógicos;
  - Operadores de Atribuição;
  - Operadores de Incremento/Decremento pós-fixado.
- Expressões complexas:
  - Exponenciação;
  - Multiplicação e Divisão;
  - Adição e Subtração.

- Parênteses adicionam prioridade para a expressão envolvida.