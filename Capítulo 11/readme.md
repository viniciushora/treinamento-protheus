# Estruturas de repetição

## For...Next
- EX005.prw
  ```
    Local nI
    Local nSoma := 0

    For nI := 0 To 100 Step 1
        nSoma += nI
    Next
  ```

## While...EndDo
- EX006.prw
```
    Local  nAux := 350
    nAux := Int(nAux / 2)
    Local nSomaPar := 0

    While nAux > 0
        nAux -= 1
        nSomaPar += 4
    Enddo
```

### Influenciando o fluxo de repetição
- LOOP: força o o loop a voltar para a checagem de condição.
  - Exemplo: EX007.prw
- EXIT: força o término do loop
  - - Exemplo: EX008.prw