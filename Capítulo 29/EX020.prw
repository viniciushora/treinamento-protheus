#include "TOTVS.ch"

User Function XCadSA2()
    Local cAlias := "SA2"
    Local cTitulo := "Cadastro de Fornecedores"
    Local cVldExc := ".T."
    Local cVldAlt := ".T."

    dbSelectArea(cAlias)
    dbSetOrder(1)
    AxCadastro(cAlias,cTitulo,cVldExc,cVldAlt)
    
Return
