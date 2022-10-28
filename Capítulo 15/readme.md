# Funções
- É um conjunto de comandos
- Pode receber parâmetros

Sintaxe básica
```
User Function Calcula(x, y, z) // Escopo + nome + parâmetros
    ... Comandos da Função
Return ... // + retornos
```

##  Tipos e escopos de funções
### Function()
- Funções ADVPL convencionais, restritas ao desenvolvimento da área de Inteligência Protheus da 
Microsiga;
- Podem ser chamadas por qualquer fonte;
- Para serem compiladas tem que ser aberto um chamado para a TOTVS.

### User Function()
- Funções do usuário;
- Garantem que não sobreponham as funções nativas;

### Static Function()
- Restritas ao fonte onde são definidas.

### Main Function()
- Pode ser executada através da tela inicial de parâmetros do client do ERP;
- Precisam de autorização para compilação.