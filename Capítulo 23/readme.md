# Desenvolvimento de Pequenas Customizações
- Dois tipos de funções para atuar com o bando de dados:
  - Funções de manipulações de dados genéricos;
  - Funções de manipulações de dados específicas para ambientes TOPCONNECT / DBACCESS.

### Funções de manipulação de dados genéricos
- Conversão pro SQL.

### Funções de manipulação de dados para Ambientes TOPCONNECT / DBACCESS
- O SQL mesmo.

### Acesso a dados e índices
- ISAM: lidos registros inteiros;
- SQL: podem ser selecionados campos;
- Acesso direto: feito através dos índices que são tabelas paralelas às tabelas de dados e que ;contêm a chave e o endereço do registro.
  - Base de dados ISAM: dados armazenados em um arquivo único CDX;
  - Base de Dados SQL: cada índice é criado com uma numeração seqüencial, tendo como base o nome da tabela ao qual ele está relacionado.
- Índices atualizados a cada inclusão ou alteração;
- Necessidade de planejar os índices das tabelas;
- Índices temporários podem ser necessários, criados em tempo de execução.

### Estrutura dos Registros (Informações)
- ISAM: cada registro possui um identificador nativo ou ID sequencial e ascendente que funciona com endereço base da informação;
- ID = RECNO ou RECNUMBER;
- Gerado no momento de inclusão do registro na tabela e somente será alterado caso a estrutura dos dados desta tabela sofra alguma manutenção;
- Possíveis manutenções:
  - ISAM:
    - PACK: apaga fisicamente os registros deletados da tabela, forçando uma renumeração dos identificadores de todos os registros;
  - SQL:
    - No Protheus usa os conceitos do ISAM.
- Campos de controle específicos: R_E_C_N_O_D_E_L_E_T_ e R_E_C_D_E_L;
- Permitem que a aplicação gerencie as informações do BD como o ISAM;
- R_E_C_N_O_: identificador único do registro. ID ou RECNUMBER do ISAM, mas utilizando Chave Primária do BD relacional;
- No Protheus: R_E_C_N_O_ definido em todas as tabelas como chave primária.
- Campo D_E_L_E_T_: tratado internamente como "flag" ou marca de exclusão. Registros excluídos logicamente.
- PACK: Exclui os registros com campo D_E_L_E_T_ marcado, mas não causará o efeito de renumeração de RECNO.

## Funções de acesso e manipulação de dados
Utilizadas independentemente da base de dados para a qual a aplicação ERP está configurada.

- ALIAS: apelido designado a caminho de rede ou a uma tabela ou visão em um script ou “query” de banco de dados.
- WorkArea: Alias abertos no processo atual.

### DBRLOCK()
```
DBRLOCK(xIdentificador)

<!-- Trava o registro identificado pelo parâmetro. Parâmetro pode ser Recno() ou Chave Primária.
Se parâmetro não for passado, será bloqueado o registro corrente. -->
```

### DBCLOSEAREA()
```
DbCloseArea()

<!-- Fecha o alias ativo na conexão. -->
```

### DBCOMMIT()
```
DBCOMMIT()

<!-- Atualizações pendentes na WorkArea são efetuadas. -->
```

### DBCOMMITALL()
```
DBCOMMITALL()

<!-- Atualizações pendentes em todas as WorkAreas, em uso pela thread (conexão), são efetuadas. -->
```

### DBDELETE()
```
DbDelete()

<!-- Exclusão lógica do registro posicionado na WorkArea, deve ser utilizado com RecLock() e MsUnLock(). -->
```

### DBGOTO()
```
DbGoto(nRecno)

<!-- Move o cursor da WorkArea ativa para o record number (recno) especificado, sem necessidade de busca. -->
```

### DBGOTOP()
```
DbGoTop()

<!-- Move o cursor da WorkArea ativa para o primeiro registro lógico. -->
```

### DBGOBOTTON()
```
DbGoBotton()

<!-- Move o cursor da WorkArea ativa para o último registro lógico. -->
```

### DBLOCKLIST()
```
DBRLOCKLIST()

<!-- Retorna um array com o recno de todos os registros travados da WorkArea ativa. -->
```

### DBSEEK()
```
DbSeek(cChave, lSoftSeek, lLast)

<!-- Busca nos registros da WorkArea ativa o registro com as informações da chave da busca. Retorna uma variável lógica respondendo se a informação foi localizada. -->
```

### MSSEEK()
```
MsSeek(cChave, lSoftSeek, lLast)

<!-- Mesmas funcionalidades do DbSeek(), não necessita de acessar novamente a base de dados para localizar uma informação já utilizada pela thread. -->
```

### MSSKIP()
```
MsSkip(nRegistros)

<!-- Move o cursor para o próximo ou anterior, dependendo da entrada, em função da ordem ativa da WorkArea. -->
```

### DBSELECTAREA()
```
DbSelectArea(nArea | cArea)

<!-- A WorkArea especificada é definida como ativa. As operações subsequentes serão realizadas na área nova. -->
```

### DBSETFILTER()
```
DbSetFilter(bCondicao, cCondicao)

<!-- Define um filtro para a WorkArea ativa (bloco ou expressão). -->
```

### DBSETORDER()
```
DbSetOrder(nOrdem)

<!-- Define qual índice será utilizado pela WorkArea ativa. As ordens disponíveis no Ambiente Protheus são aquelas definidas no SINDEX/SIX, ou as ordens disponibilizadas por meio de índices temporários. -->
```

### DBORDERNICKNAME()
```
DbOrderNickName(NickName)

<!-- Define qual índice criado pelo usuário será utilizado. Usuário pode incluir seus prórpios indíces e dar nicknames para eles. -->
```

### DBUNLOCK()
```
DBUNLOCK()

<!-- Libera o registro posicionado na WorkArea ativa e confirma as atualizações no registro. Usado em ambientes compartilhados. -->
```

### DBUNLOCKALL()
```
DBUNLOCKALL()

<!-- Libera todos os registros na WorkArea ativa. -->
```

### DBUSEAREA()
```
DbUseArea(lNovo, cDriver, cArquivo, cAlias, lCompartilhado, lSoLeitura)

<!-- Define um arquivo de base de dados como uma área de trabalho disponível na aplicação. -->
```

### MSUNLOCK()
```
MsUnLock()

<!-- Libera o registro posicionado na WorkArea ativa e confirma as atualizações no registro. -->
```

### RECLOCK()
```
RecLock(cAlias, lInclui)

<!-- Trava o registro posicionado na WorkArea ativa, permitindo inclusão e alteração nele. -->
```

### RLOCK()
```
RLOCK() -> lSucesso

<!-- Trava o registro posicionado na WorkArea ativa. -->
```

### SELECT()
```
Select(cArea)

<!-- Determina o número de referência de um determinado alias em um ambiente de trabalho. Caso o alias especificado não esteja em uso no Ambiente, será retornado o valor 0 (zero). -->
```

### SOFTLOCK()
```
SoftLock(cAlias)

<!-- Reserva o registro desejado e as outras operações não podem utilizar o registro. Não gera obrigação de atualização. Comum em browsers pra lidar com concorrência múltipla. -->
```

### UNLOCK()
```
UNLOCK()

<!-- Libera o registro posicionado na WorkArea ativa e confirma as atualizações no registro. -->
```
