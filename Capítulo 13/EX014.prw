#include "TOTVS.ch"

#define FUNCT_NOME 1
#define FUNCT_IDADE 2
#define FUNCT_CASADO 3

User Function EX014()

    aFunct2 := {"Maria" , 22, .T.}
    aFunct3 := {"Antônio", 42, .F.}
    aFunct1 := {"Pedro",32,.T.}

    MsgAlert(aFunct1[FUNCT_NOME])
    MsgAlert(aFunct2[FUNCT_NOME])
    MsgAlert(aFunct3[FUNCT_NOME])

Return
