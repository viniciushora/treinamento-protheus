# Interfaces Visuais
- AdvPl tem a linguagem convencional e orientada a objetos.
- O Protheus tem funcionalidades pré-definidas, que realizam as operações básicas do Protheus e gerenciam a interação com o Banco da Dados e acesso ao sistema;

## Sintaxe e componentes das interfaces visuais
- Os componentes da interface visual que serão tratados neste tópico, utilizando a sintaxe ADVPL são:

### BUTTON()
| Sintaxe   | @ nLinha,nColuna BUTTON cTexto SIZE nLargura,nAltura UNIDADE OF oObjetoRef ACTION AÇÃO |
|-----------|----------------------------------------------------------------------------------------|
| Descrição | Define um botão com texto e ações                                                      |

### MSDIALOG()
| Sintaxe   | DEFINE MSDIALOG oObjetoDLG TITLE cTitulo FROM nLinIni,nColIni TO nLiFim,nColFim OF oObjetoRef UNIDADE |
|-----------|-------------------------------------------------------------------------------------------------------|
| Descrição | Define uma janela da aplicação                                                                        |

### MSGET()
| Sintaxe   | @ nLinha, nColuna MSGET VARIAVEL SIZE nLargura,nAltura UNIDADE OF oObjetoRef F3 cF3 VALID VALID WHEN WHEN PICTURE cPicture |
|-----------|----------------------------------------------------------------------------------------------------------------------------|
| Descrição | Define o componente visual MSGET, o qual é utilizado para captura de informações digitáveis na tela da interface.          |

### SAY()
| Sintaxe   | @ nLinha, nColuna SAY cTexto SIZE nLargura,nAltura UNIDADE OF oObjetoRef |
|-----------|--------------------------------------------------------------------------|
| Descrição | Define textos a serem exibidos na interface                              |

### SBUTTON()
| Sintaxe   | DEFINE SBUTTON FROM nLinha, nColuna TYPE N ACTION AÇÃO STATUS OF oObjetoRet |
|-----------|-----------------------------------------------------------------------------|
| Descrição | Botão que pode ter imagem nele                                              |

## Interface visual completa
- Exemplo: EX019.prw
- Interfaces que possibilitam visualização das informações emanipulação dos dados no sistema:
  - AxCadastro(): Funcionalidade de cadastro simples, com poucas opções de customização, composta de:
    - mBrowse padrão para visualização das informações da base de dados, de acordo com as configurações do SX3 – Dicionário de Dados (campo browse).
    - Funções de:
      - Pesquisa;
      - Visualização;
      - Inclusão;
      - Alteração;
      - Exclusão de padrões para visualização de registros simples, sem a opção de cabeçalho e itens.
    - Sintaxe: AxCadastro(cAlias, cTitulo, cVldExc, cVldAlt)

**Parâmetros**

| cAlias  | Alias padrão do sistema para utilização, o qual deve estar definido no dicionário de dados – SX3 |
|---------|--------------------------------------------------------------------------------------------------|
| cTitulo | Título da Janela                                                                                 |
| cVldExc | Validação para Exclusão                                                                          |
| VldAlt  | Validação para Alteração                                                                         |

- Exemplo: EX020.prw

## MBrowse()
- Funcionalidade de cadastro que permite a utilização de recursos mais aprimorados na visualização e manipulação das informações do Sistema;
- Possui:
  - Browse padrão para visualização das informações da base de dados, de acordo com as configurações do SX3 –Dicionário de Dados;
  - Parametrização para funções específicas para as ações de visualização, inclusão, alteração e exclusão de informações;
  - Recursos adicionais como identificadores de status de registros, legendas e filtros para as informações;

Sintaxe simplificada: MBrowse(nLin1, nCol1, nLin2, nCol2, cAlias)

**Parâmetros:**
| nLin1, nCol1, nLin2, nCol2 | Coordenadas dos cantos aonde o browse será exibido.                                        |
|----------------------------|--------------------------------------------------------------------------------------------|
| cAlias                     | Alias padrão do sistema para utilização, o qual deve estar definido no dicionário de dados |

**Variáveis private adicionais:**
| aRotina   | Array contendo as funções que serão executadas pela Mbrowse.Este array pode ser parametrizado com as funções básicas da AxCadastro conforme abaixo: |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
|           | AADD(aRotina,{"Pesquisar" ,"AxPesqui",0,1})                                                                                                         |
|           | AADD(aRotina,{"Visualizar" ,"AxVisual",0,2})                                                                                                        |
|           | AADD(aRotina,{"Incluir" ,"AxInclui" ,0,3})                                                                                                          |
|           | AADD(aRotina,{"Alterar" ,"AxAltera",0,4})                                                                                                           |
|           | AADD(aRotina,{"Excluir" ,"AxDeleta",0,5})                                                                                                           |
| cCadastro | Título do browse que será exibido.                                                                                                                  |

- Com parametrização simplificada se consegue o mesmo resultado que o AxCadastro();
- A ordem das funções no array define o conteúdo de uma variável que será repassada para asfunções chamadas a partir da Mbrowse, convencionada como nOpc;
- Ordem:
  - 1 – Pesquisar
  - 2 – Visualizar
  - 3 – Incluir
  - 4 – Alterar
  - 5 – Excluir
  - 6 – Livre

- Se no array aRotina o nome da função não for especificado com “()”, o  Mbrowse passará como parâmetros:
  - cAlias: Alias ativo definido para a Mbrowse;
  - nRecno: Record number (recno) do registro posicionado no alias ativo;
  - nOpc: Posição da opção utilizada na Mbrowse de acordo com a ordem da função no array a Rotina.

## AxFunctions()
- Existem funções que permitem a visualização, inclusão, alteração e exclusão de dados em formato simples;
  
### AXALTERA()
| Sintaxe   | AxAltera(cAlias, nReg, nOpc, aAcho, cFunc, aCpos, cTudoOk, lF3,; cTransact, aButtons, aParam, aAuto, lVirtual, lMaximized) |
|-----------|----------------------------------------------------------------------------------------------------------------------------|
| Descrição | Altera um registro                                                                                                         |

### AXDELETA()
| Sintaxe   | AXDELETA(cAlias, nReg, nOpc, cTransact, aCpos, aButtons, aParam,; aAuto, lMaximized) |
|-----------|--------------------------------------------------------------------------------------|
| Descrição | Remove um registro                                                                   |

### AXINCLUI()
| Sintaxe   | AxInclui(cAlias, nReg, nOpc, aAcho, cFunc, aCpos, cTudoOk, lF3,; cTransact, aButtons, aParam, |
|-----------|-----------------------------------------------------------------------------------------------|
| Descrição | Inclui um novo registro                                                                       |

### AXPESQUI()
| Sintaxe   | AXPESQUI()                                           |
|-----------|------------------------------------------------------|
| Descrição | Pesquisa e posiciona o browse no registro pesquisado |

### AXVISUAL()
| Sintaxe   | AXVISUAL(cAlias, nReg, nOpc, aAcho, nColMens, cMensagem, cFunc, aButtons, lMaximized ) |
|-----------|----------------------------------------------------------------------------------------|
| Descrição | Função de visualização padrão das informações do registro                              |

# Exercicios
- Exercício 1: EXER1.prw
- Exercício 2:
- Exercício 3: