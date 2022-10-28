#include "TOTVS.ch"

User Function EX019()

Local oDlg
Local oBtn1, oSay1
 
DEFINE DIALOG oDlg TITLE "Exemplo" FROM 0,0 TO 150,300 COLOR CLR_BLACK,CLR_WHITE PIXEL

@ 25,05 SAY oSay1 PROMPT "Apenas uma mensagem" SIZE 60,12 OF oDlg PIXEL 
 
@ 50,05 BUTTON oBtn1 PROMPT 'Sair' ACTION ( oDlg:End() ) SIZE 40, 013 OF oDlg PIXEL

ACTIVATE DIALOG oDlg CENTER

Return
