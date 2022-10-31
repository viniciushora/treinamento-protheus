# Índice
## Capítulos
### 2. AdvPL
- Programação Com Interface Própria com o Usuário;
- Programação Sem Interface Própria com o Usuário;
### 3. Estrutura de um programa AdvPl
- Áreas de um programa AdvPl
### 4. Declaração e atribuição de variáveis
- Númerico
- Lógico
- Caractere
- Data
- Array
- Bloco de código
- Declaração de variáveis
### 5. Escopo de Variáveis
- Contexto de variáveis dentro de um programa
- Variáveis de Escopo Local
- Variáveis de Escopo Static
- Variáveis de Escopo Private
- Variáveis de Escopo Public
- Entendendo a influência do escopo das variáveis
### 6. Operadores da linguagem ADVPL
- Operadores comuns
- Operadores Matemáticos
- Operadores de String
- Operadores Relacionais
- Operadores lógicos
- Operadores de atribuição
- Atribuição em linha
- Operadores em Incrmento/Decremento
- Operadores Especiais
- Ordem de Precedência dos Operadores
### 7. Operação de Macro Substituição
### 8. Funções de manipulação de variáveis
### 9. Conversões entre tipos de variáveis
- CTOD()
- DTOC()
- DTOS()
- STOD()
- CVALTOCHAR()
- STR()
- STRZERO()
- VAL()
- Manipulação de strings
  - ALLTRIM()
  - ASC()
  - AT()
  - RAT()
  - CHR()
  - LEN()
  - LOWER()
  - STUFF()
  - SUBSTR()
  - UPPER()
  - PadR()
  - PadC()
  - PadL()
  - Replicate()
  - StrTran()
- Manipulação de variáveis númericas
  - ABS()
  - INT()
  - NOROUND()
  - ROUND()
- Verificação de tipos de variáveis
  - TYPE()
  - VALTYPE()
### 10. Estruturas de repetição
### 11. Estruturas de repetição
- For...Next
- While...EndDo
  - Influenciando o fluxo de repetição
### 12. Estruturas de decisão
- IF...ELSE...ENDIF
- IF...ELSEIF...ELSE...ENDIF
### 13. Arrays E Blocos De Código
- Arrays
- Arrays como estuturas
- Funções de manipulação de Array
  -  ARRAY()
  -  AADD()
  -  ACLONE()
  -  ADEL()
  -  ASIZE()
  -  AINS()
  -  ASORT()
  -  ASCAN()
- Cópia de arrays
### 14. Blocos de Código
- Funções para manipulação de blocos de código
  - EVAL()
  - DBEVAL()
  - AEVAL()
### 15. Funções
- Tipos e escopos de funções
  - Function()
  - User Function()
  - Static Function()
  - Main Function()
### 16. Passagem de parâmetros entre funções
- Passagem de parâmetros por conteúdo
  - Passagem de conteúdo direto
  - Passagem de variáveis como conteúdos
- Passagem de parâmetros por referência
  - Tratamento de conteúdos padrões para parâmetros de funções
### 18. Diretivas De Compilação
### 19. Diretiva: #INCLUDE
### 20. Diretiva: #DEFINE
### 21. Diretivas: #IFDEF, IFNDEF, #ELSE e #ENDIF
- Tipos de Diretiva
  - IDIOMA
  - Banco de dados
### 22. Diretiva: #COMMAND
### 23. Desenvolvimento de Pequenas Customizações
  - Funções de manipulação de dados genéricos
  - Funções de manipulação de dados para Ambientes TOPCONNECT / DBACCESS
  - Acesso a dados e índices
  - Estrutura dos Registros (Informações)
- Funções de acesso e manipulação de dados
  - DBRLOCK()
  - DBCLOSEAREA()
  - DBCOMMIT()
  - DBCOMMITALL()
  - DBDELETE()
  - DBGOTO()
  - DBGOTOP()
  - DBGOBOTTON()
  - DBLOCKLIST()
  - DBSEEK()
  - MSSEEK()
  - MSSKIP()
  - DBSELECTAREA()
  - DBSETFILTER()
  - DBSETORDER()
  - DBORDERNICKNAME()
  - DBUNLOCK()
  - DBUNLOCKALL()
  - DBUSEAREA()
  - MSUNLOCK()
  - RECLOCK()
  - RLOCK()
  - SELECT()
  - SOFTLOCK()
  - UNLOCK()
### 24. Diferenciação entre variáveis e nomes de campos
### 25. Controle de numeração sequencial
### 26. Semáforos
- Funções de controle de semáforos e numeração sequencial
  - GETSXENUM()
  - CONFIRMSXE()
  - ROLLBACKSXE()
### 27. Customizações Para A Aplicação Erp
- Customização de campos – Dicionário de Dados
  - EXISTCHAV()
  - EXISTCPO()
  - NAOVAZIO()
  - NEGATIVO()
  - PERTENCE()
  - POSITIVO()
  - TEXTO()
  - VAZIO()
- Pictures de formação disponíveis
  - Dicionário de Dados (SX3) e GET
    - Funções
    - Templates
  - SAY e PSAY
  - Customização de gatilhos – Configurador
  - Customização de parâmetros – Configurador
  - GETMV()
  - GETNEWPAR()
  - PUTMV()
  - SUPERGETMV()
- Cuidados na utilização de um parâmetro
### 28. Pontos de Entrada – Conceitos, Premissas e Regras
- Premissas e regras
  - GETAREA()
  - RESTAREA()
### 29. Interfaces Visuais
- Sintaxe e componentes das interfaces visuais
  - BUTTON()
  - MSDIALOG()
  - MSGET()
  - SAY()
  - SBUTTON()
- Interface visual completa
  - MBrowse()
  - AxFunctions()
    - AXALTERA()
    - AXDELETA()
    - AXINCLUI()
    - AXPESQUI()
    - AXVISUAL()
### 30. Boas Práticas De Programação
- Identação
- Capitulação De Palavras-Chaves
- Palavras em maiúsculo
