# Estruturas de decisão
- If else stuff

## IF...ELSE...ENDIF
- Exemplo: EX009.prw
```
Local dVencto := CTOD("31/12/16")
If Date() > dVencto
    Alert("Agiota vai bater!")
Endif
```

## IF...ELSEIF...ELSE...ENDIF
- Exemplo: EX010.prw
```
Local dVendeta := CTOD("31/12/16")
// dVendeta := CTOD("13/10/22")
// dVendeta := CTOD("19/10/22")
If Date() > dVendeta
    Alert("Agiota vai bater!")
ElseIf Date() == dVendeta
    Alert("Só tem até o fim do dia!")
Else
    Alert("Tá vivo irmão!")
Endif
```