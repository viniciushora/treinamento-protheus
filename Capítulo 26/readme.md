# Semáforos
Controlador de execução simultânea de uma operação. Impede que duas operações sejam axecutadas ao mesmo tempo.

## Funções de controle de semáforos e numeração sequencial

### GETSXENUM()
```
GETSXENUM(cAlias, cCampo, cAliasSXE, nOrdem)

<!-- Obtém o número sequencial do alias. -->
```

### CONFIRMSXE()
```
CONFIRMXSE(lVerifica)

<!-- Confirma o número alocado através do último comando GETSXENUM(). -->
```

### ROLLBACKSXE()
```
ROLLBACKSXE()

<!-- Descarta o último número do GETSXENUM(). -->
```