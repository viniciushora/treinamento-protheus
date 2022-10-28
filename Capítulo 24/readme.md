# Diferenciação entre variáveis e nomes de campos
- Variável pode ter o mesmo nome do campo da tabela;
- AdvPl privilegia o campo;
- Identifica ambos;
- Deve se usar o -> e um dos dois identificadores de referência, MEMVAR ou FIELD.

**Variável de Memória**
```
cRes := MEMVAR->NOME
```

**Campo**
```
cRes := FIELD->NOME
```

- FIELD pode ser substituído pelo apelido do arquivo ou tabela abertos:

```
cRes := CLIENTES->NOME
```

```
cRes := SA1->A1_NOME // SA1 – Cadastro de Clientes
```