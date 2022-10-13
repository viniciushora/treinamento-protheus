#include "TOTVS.ch"

User Function fEx004()
    Local dVencto := CTOD("31/12/16")
    If Date() > dVencto
        Alert("Agiota vai bater!")
    Endif
Return
