# Arrays E Blocos De Código
## Arrays
- Semelhante a listas;
- Acessa índice com colchetes [];
- Índice começa com 1;
- Exemplo: EX013.prw;<br>
  
**aADD()**
| Sintaxe   | AADD(aLetras,"D")   |
|-----------|---------------------|
| Descrição | É o append do Advpl |

## Arrays como estuturas
- Arrays armezenam todo tipo de variável junto;
- Exemplo 1: EX014.prw
- Exemplo 2: EX015.prw
- Cuidados:
  - Consome memória, não abusar.
- Inicializando arrays: Muitas vezes o tamanho do array é conhecido somente em execução;<br><br>

- Array com tamanho conhecido:
  - Exemplo: EX016.prw
- Array com tamanho desconhecido:
  - Exemplo: EX017.prw

## Funções de manipulação de Array
### ARRAY()
| Sintaxe   | ARRAY(nLinhas, nColunas)                                                                                                  |
|-----------|---------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função Array() é utilizada na definição de variáveis de tipo array, como uma opção a sintaxe, utilizando chaves (“{}”). |<br>

```
aVetor := Array(3) ->
    aVetor[1]
    aVetor[2]
    aVetor[3]
aMatriz := Array(3,2) ->
    aMatriz[1,1]
    aMatriz[1,2]
    aMatriz[2,1]
    aMatriz[2,2]
    aMatriz[3,1]
    aMatriz[3,2]
```

### AADD()
| Sintaxe   | AADD(aArray, xItem)                                                                                                                                |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função AADD() permite a inserção de um item em um array já existente, sendo que este item pode ser um elemento simples, um objeto ou outro array |<br>

```
Local aVetor := {}
AADD(aVetor, “Maria” ) // Adiciona um elemento no array 
AADD(aVetor, “Jose” ) // Adiciona um elemento no array
AADD(aVetor, “Marcio”) // Adiciona um elemento no array 

Local aMatriz := {}
AADD(aMatriz, { “Maria” ,29,”F”} ) // Adiciona um elemento no array 
AADD(aMatriz, { “Jose” ,42,”M”} ) // Adiciona um elemento no array
AADD(aMatriz, { “Marcio” ,53”M”} ) // Adiciona um elemento no array
```

### ACLONE()
| Sintaxe   | AADD(aArray)                                                                               |
|-----------|--------------------------------------------------------------------------------------------|
| Descrição | A função ACLONE() realiza a cópia dos elementos de um array para outro array integralmente |<br>

```
aItens := ACLONE(aDados)
```

### ADEL()
| Sintaxe   | ADEL(aArray, nPosição)                                                                                                                                                                                                                                               |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função ADEL() permite a exclusão de um elemento do array. Ao efetuar a exclusão de um elemento, todos os demais são reorganizados de forma que a ultima posição do array passará a ser nula, sendo necessário informar um novo valor pela função aSize() ou Ains() |<br>

```
Local aVetor := {“1”,”2”,”3”,”4”,”5”,”6”,”7”,”8”,”9”}
ADEL(aVetor,1) // Será removido o primeiro elemento do array. ->
aVetor{”2”,”3”,”4”,”5”,”6”,”7”,”8”,”9”,NIL}
```

### ASIZE()
| Sintaxe   | ASIZE(aArray, nTamanho)                                                                                              |
|-----------|----------------------------------------------------------------------------------------------------------------------|
| Descrição | A função ASIZE permite a redefinição da estrutura de um array pré-existente, adicionando ou removendo itens do mesmo |<br>

```
Local aVetor := {“1”,”2”,”3”,”4”,”5”,”6”,”7”,”8”,”9”}

aSize(aVetor,8) // Será restruturado o array com 8 elementos. ->

aVetor{“1”,”2”,”3”,”4”,”5”,”6”,”7”,”8” }
```

### AINS()
| Sintaxe   | AINS(aArray, nPosicao)                                                                                       |
|-----------|--------------------------------------------------------------------------------------------------------------|
| Descrição | Inclui um elemento nulo na posição definida e 'empurra' os demais para frente descartando o último elemento. |<br>

```
Local aVetor := {“1”,”2”,”3”,”4”,”5”,”6”,”7”,”8”,”9”}
aIns(aVetor,1)  ->
aVetor{Nil,“1”,”2”,”3”,”4”,”5”,”6”,”7”,”8” }
```

### ASORT()
| Sintaxe   | ASORT(aArray, nInicio, nItens, bOrdem)                                                                      |
|-----------|-------------------------------------------------------------------------------------------------------------|
| Descrição | A função ASORT() permite que os itens de um array sejam ordenados, a partir de um critério pré-estabelecido. |<br>

```
aArray := { 3, 5, 1, 2, 4 }

ASORT(aArray)

// Resultado: { 1, 2, 3, 4, 5 }

ASORT(aArray,,, { |x, y| x > y })

// Resultado: { 5, 4, 3, 2, 1 }
```

### ASCAN()
| Sintaxe   | ASCAN(aArray, bSeek)                                                                                                                                                         |
|-----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | A função ASCAN() permite que seja identificada a posição do array que contém uma determinada informação, através da análise de uma expressão descrita em um bloco de código. |<br>

```
LOCAL aVetor := { “Java”, “AdvPL”, “C++” }
nPos := ASCAN(aVetor, “AdvPL” } -> 2 posição no array

Local aMatriz := { { “Fipe”, 9.3 }, { “IPC”, 8.7 }, { “DIEESE”, 12.3 } }
nPos := ASCAN(aVetor,{ | x | x[1] == “AdvPL” } -> 3 posição no array
```

## Cópia de arrays
- Atribuição normal não funciona, use ACLONE();

```
aNovoArray := ACLONE(aAntigoArray)
```