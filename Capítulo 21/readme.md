# Diretivas: #IFDEF, IFNDEF, #ELSE e #ENDIF
- Permitem ao desenvolvedor criar fontes flexíveis e sensíveis a 
determinadas configurações da aplicação ERP;
- Permite informar o idioma;
- Possibilita um mesmo código ter mais de uma implementação;

## Tipos de Diretiva
### IDIOMA
- Verifica as variáveis SPANISH e ENGLISH, disponibilizadas pela aplicação.O idioma português é determinado pela exceção:

```
#IFDEF SPANISH
    #DEFINE STR0001 “Hola !!!”
#ELSE

    #IFDEF ENGLISH
        #DEFINE STR0001 “Hello !!!”
    #ELSE
        #DEFINE STR0001 “Olá !!!”
    #ENDIF

#ENDIF
```
- Não existe a diretiva de compilação #ELSEIF
  
### Banco de dados
- Verifica as variáveis AXS e TOP para determinar se o banco de dados em uso pela aplicação está no 
formado ISAM (DBF, ADS, CTREE, etc.) ou se está utilizando a ferramenta TOPCONNECT (DbAcess);

 ```
#IFDEF TOP

    cQuery := “SELECT * FROM ”+RETSQLNAME(“SA1”)
    dbUseArea(.T., "TOPCONN", TcGenQry(,,cQuery), “SA1QRY”,.T.,.T.)
    
#ELSE
    DbSelectArea(“SA1”)
#ENDIF 
```

