# Diretiva: #COMMAND
- Utilizada para efetuar a tradução de comandos em sintaxe CLIPPER, para as funções implementadas pela Tecnologia Microsiga
-  Permite que o desenvolvedor defina para o compilador como uma expressão deverá ser interpretada.

```
#xcommand @ <nRow>, <nCol> SAY [ <oSay> <label: PROMPT,VAR > ] <cText> ;
    [ PICTURE <cPict> ] ; [ <dlg: OF,WINDOW,DIALOG > <oWnd> ] ;
    #IFDEF SPANISH
    #DEFINE STR0001 “Hola !!!”
    #ELSE
    #IFDEF ENGLISH
    #DEFINE STR0001 “Hello !!!”
    #ELSE
    #DEFINE STR0001 “Olá !!!”
    #ENDIF
    #ENDIF

    [ FONT <oFont> ] ; [ <lCenter: CENTERED, CENTER > ] ;
    [ <lRight: RIGHT > ] ; [ <lBorder: BORDER > ] ;
    [ <lPixel: PIXEL, PIXELS > ] ; [ <color: COLOR,COLORS > <nClrText> [,<nClrBack> ] ] ;
    [ SIZE <nWidth>, <nHeight> ] ; [ <design: DESIGN > ] ;
    [ <update: UPDATE > ] ; [ <lShaded: SHADED, SHADOW > ] ;
    [ <lBox: BOX > ] ; [ <lRaised: RAISED > ] ;
 => ;
    [ <oSay> := ] TSay():New( <nRow>, <nCol>, <{cText}>,;
    [<oWnd>], [<cPict>], <oFont>, <.lCenter.>, <.lRight.>, <.lBorder.>,;
    <.lPixel.>, <nClrText>, <nClrBack>, <nWidth>, <nHeight>,;
    <.design.>, <.update.>, <.lShaded.>, <.lBox.>, <.lRaised.> )
```
- Através da diretiva #COMMAND, foram determinadas as regras para que a sintaxe tradicional da linguagem CLIPPER, para o comando SAY, fosse convertida na especificação de um objeto TSAY() do ADVPL.
