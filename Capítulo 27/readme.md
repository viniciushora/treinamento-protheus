#  Customizações Para A Aplicação Erp
- Validações de campos e perguntas do Sistema e de usuários.
- Inclusão de gatilhos em campos de Sistemas e de usuários.
- Inclusão de regras em parâmetros de Sistemas e de usuários.
- Desenvolvimento de pontos de entrada para interagir com funções padrões do Sistema.

## Customização de campos – Dicionário de Dados
- Validações de campos e perguntas
  - As funções de validação têm como característica fundamental um retorno do tipo lógico;
  - Deve focar sempre na utilização de funções ou expressões que resultem em um retorno lógico.

### EXISTCHAV()
| Sintaxe   | ExistChav(cAlias, cConteudo, nIndice)                                                                                    |
|-----------|--------------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna se existe um alias no sistema. Se existir, será exibido um help de Sistema com um aviso informado de ocorrência. |

### EXISTCPO()
| Sintaxe   | ExistCpo(cAlias, cConteudo, nIndice)                                                                                        |
|-----------|-----------------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna se não existe um alias no sistema. Se existir, será exibido um help de Sistema com um aviso informado de ocorrência |

### NAOVAZIO()
| Sintaxe   | NaoVazio()                                                                       |
|-----------|----------------------------------------------------------------------------------|
| Descrição | Retorna .T. ou .F. se o conteúdo do campo posicionado no momento não está vazio. |

### NEGATIVO()
| Sintaxe   | Negativo()                                                         |
|-----------|--------------------------------------------------------------------|
| Descrição | Retorna .T. ou .F. se o conteúdo digitado para o campo é negativo. |

### PERTENCE()
| Sintaxe   | Pertence(cString)                                                                                                |
|-----------|------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna .T. ou .F. se o conteúdo digitado para o campo está contido na string, definida como parâmetro da função |

### POSITIVO()
| Sintaxe   | Positivo()                                                         |
|-----------|--------------------------------------------------------------------|
| Descrição | Retorna .T. ou .F. se o conteúdo digitado para o campo é positivo. |

### TEXTO()
| Sintaxe   | Texto()                                                                                       |
|-----------|-----------------------------------------------------------------------------------------------|
| Descrição | Retorna .T. ou .F. se o conteúdo digitado para o campo contém apenas números ou alfanuméricos |

### VAZIO()
| Sintaxe   | Texto()                                                                     |
|-----------|-----------------------------------------------------------------------------|
| Descrição | Retorna .T. ou .F. se o conteúdo do campo posicionado no momento está vazio |

## Pictures de formação disponíveis
### Dicionário de Dados (SX3) e GET
#### **Funções**
| Conteúdo | Funcionalidade                                                                                                  |
|----------|-----------------------------------------------------------------------------------------------------------------|
| A        | Permite apenas caracteres alfabéticos                                                                           |
| C        | Exibe CR depois de números positivos                                                                            |
| E        | Exibe numérico com o ponto e vírgula invertidos (formato Europeu)                                               |
| R        | Insere caracteres diferentes dos caracteres de template na exibição, mas não os insere na variável do GET       |
| S<n>     | Permite rolamento horizontal do texto dentro do GET, <n> é um número inteiro que identifica o tamanho da região |
| X        | Exibe DB depois de números negativos                                                                            |
| Z        | Exibe zeros como brancos                                                                                        |
| (        | Exibe números negativos entre parênteses com os espaços em branco iniciais                                      |
| )        | Exibe números negativos entre parênteses sem os espaços em branco iniciais                                      |
| !        | Converte caracteres alfabéticos para maiúsculo                                                                  |

#### **Templates**
| Conteúdo | Funcionalidade                                                                      |
|----------|-------------------------------------------------------------------------------------|
| X        | Permite qualquer caractere                                                          |
| 9        | Permite apenas dígitos para qualquer tipo de dado, incluindo o sinal para numéricos |
| #        | Permite dígitos, sinais e espaços em branco para qualquer tipo de dado              |
| !        | Converte caracteres alfabéticos para maiúsculo                                      |
| *        | Exibe um asterisco no lugar dos espaços em branco iniciais em números               |
| .        | Exibe o ponto decimal                                                               |
| ,        | Exibe a posição do milhar                                                           |

**Exemplo 01 – Picture campo numérico**
```
CT2_VALOR – Numérico – 17,2
Picture: @E 99,999,999,999,999.99
```

**Exemplo 02 – Picture campo texto, com digitação apenas em caixa alta**
```
A1_NOME – Caracter - 40
Picture: @!
```

### SAY e PSAY
**Funções**
| Conteúdo | Funcionalidade                                                      |
|----------|---------------------------------------------------------------------|
| C        | Exibe CR depois de números positivos                                |
| E        | Exibe numérico com o ponto e a vírgula invertidos (formato Europeu) |
| R        | Insere caracteres diferentes dos caracteres de template             |
| X        | Exibe DB depois de números negativos                                |
| Z        | Exibe zeros como brancos                                            |
| (        | Envolve números negativos entre parênteses                          |
| !        | Converte todos os caracteres alfabéticos para maiúsculo             |

**Templates**
| Conteúdo | Funcionalidade                                                     |
|----------|--------------------------------------------------------------------|
| X        | Exibe dígitos para qualquer tipo de dado                           |
| 9        | Exibe dígitos para qualquer tipo de dado                           |
| #        | Exibe dígitos para qualquer tipo de dado                           |
| !        | Converte caracteres alfabéticos para maiúsculo                     |
| *        | Exibe asterisco no lugar de espaços em branco e inicias em números |
| .        | Exibe a posição do ponto decimal                                   |
| ,        | Exibe a posição do milhar                                          |

**Exemplo 01 – Picture campo numérico**
```
CT2_VALOR – Numérico – 17,2
Picture: @E 99,999,999,999,999.99
```

## Customização de gatilhos – Configurador
- Aplicação ERP usa o recurso de gatilhos para auxiliar no preenchimento de informações, durante a digitação das mesmas;
- Funções utilizadas nos gatilhos estão diretamente relacionadas ao retorno;
- Regras de montagem de gatilho e definição de retorno:
  - Na definição da chave de busca do gatilho será passado como parte da chave: a filial da tabela de origem ou consultada;
  -  O que normalmente determina a filial que será utilizada, como parte da chave, é justamente a informação que será consultada, aonde:
     -  Consultas de informações, entre tabelas com estrutura de cabeçalho e itens, devem utilizar a filial da tabela de origem, pois ambas as tabelas devem possuir o mesmo tratamento de filial

Exemplos:
```
Pedido de vendas -> SC5 x SC6
Nota fiscal de entrada -> SF1 x SD1
Ficha de imobilizado -> SN1 x SN3
Orçamento contábil -> CV1 x CV2
```

- Consulta de informações de tabelas de cadastros devem utilizar a filial da tabela a ser consultada;

Exemplos:
```
Cadastro de clientes -> SA1 (compartilhado)
Cadastro de fornecedores -> SA2 (compartilhado)
Cadastro de vendedores -> SA3 (exclusivo)
Cadastro de transportadoras -> SA4 (exclusivo)
```

- Consulta as informações de tabelas de movimentos que devem utilizar a filial da tabela a ser consultada;

Exemplos

```
Contas a pagar -> SE2 (compartilhado)
Movimentos contábeis -> CT2 (exclusivo)
Pedidos de compras -> SC7 (compartilhado)
Itens da nota fiscal de entrada -> SD1 (exclusivo
```

-Na definição da regra de retorno deve ser considerado o tipo do campo que será atualizado, pois é este campo que 
determina qual tipo do retorno será considerado válido para o gatilho.

## Customização de parâmetros – Configurador
- Os parâmetros de sistema utilizados pela aplicação ERP e definidos através do módulo configurador possuem as seguintes características fundamentais:
  - Tipo do parâmetro: de forma similar a uma variável, um parâmetro terá um tipo de conteúdo pré-definido em seu cadastro.
    - Usada na interpretação do conteúdo do parâmetro e retorno dessa informação à rotina que consultou;
  - Interpretação do conteúdo do parâmetro: Tratamento e retorno de funções. Usadas essas funções:
    - GETMV()
    - SUPERGETMV()
    - GETNEWPAR()
  - Retorno macro executado é determinado através do uso do operador “&” ou de uma das funções de execução de blocos de código, em conjunto com uma das funções citadas anteriormente.

### GETMV()
| Sintaxe   | GETMV(cParametro)                                                                                                                                                                                 |
|-----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Retorna o conteúdo do parâmetro especificado no arquivo SX6, considerando a filial parametrizada na conexão. Caso o parâmetro não exista, será exibido um help do sistema informando a ocorrência |

### GETNEWPAR()
| Sintaxe   | GETNEWPAR(cParametro, cPadrao, cFilial)                                                                                                                                       |
|-----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Mesma coisa do SuperGetMV(), porém difere pois considera que o parâmetro pode não existir na versão atual do Sistema, e por conseqüência não será exibida a mensagem de help. |

### PUTMV()
| Sintaxe   | PUTMV(cParametro, cConteudo)                                                                               |
|-----------|------------------------------------------------------------------------------------------------------------|
| Descrição | Atualiza o conteúdo do parâmetro especificado no arquivo SX6, de acordo com as parametrizações informadas. |

### SUPERGETMV()
| Sintaxe   | SUPERGETMV(cParametro , lHelp , cPadrao , cFilial)                                                                                                                                                                    |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Descrição | Mesma coisa do GetMv(), porém difere pois os parâmetros consultados são adicionados em uma área de memória, que permite que em uma nova consulta não seja necessário acessar e pesquisar o parâmetro na base de dados |

## Cuidados na utilização de um parâmetro
- Parâmetros de sistema tem objetivo de dar um retorno válido;
- É expressamente proibido o uso de funções em parâmetros para manipular informações da base de dados do Sistema;
- Caso haja a necessidade de ser implementado um tratamento adicional a um processo padrão do Sistema, o mesmo deverá utilizar o recurso de ponto de entrada;
- As rotinas da aplicação ERP não protegem a consulta de conteúdos de parâmetros, quanto a gravações realizadas dentro ou fora de uma transação;
- Alteração na base por rotina pode ocasionar perda de integridade das informações.
