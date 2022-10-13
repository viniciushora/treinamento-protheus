#include "TOTVS.ch"

User Function fEx005()
    Local dVendeta := CTOD("31/12/16")
    dVendeta := CTOD("13/10/22")
    dVendeta := CTOD("19/10/22")
    If Date() > dVendeta
        Alert("Agiota vai bater!")
    ElseIf Date() == dVendeta
        Alert("Só tem até o fim do dia!")
    Else
        Alert("Tá vivo irmão!")
    Endif
Return
