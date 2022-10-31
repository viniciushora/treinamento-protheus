#include "TOTVS.ch"

User Function EXER1()

    RpcSetEnv(;
        /* cRpcEmp  */ "99",; // Grupo
        /* cRpcFil  */ "01",; // Empresa + Filial + Unidade de Neg�cio
        /* cEnvUser */,;
        /* cEnvPass */,;
        /* cEnvMod  */ "COM",; // M�dulo (sem o SIGA na string)
        /* cFunName */ "Teste",; // Nome da Fun��o
        /* aTables  */ {"SB1"} ; // Tabelas que ser�o carregas
    )

    Local cAlias := "SB1"
    Private cCadastro := "Produtos"
    Private aRotina := {}

    dbSelectArea(cAlias)
    dbSetOrder(1)

    DEFINE MSDIALOG oDlg TITLE "Produtos" FROM 0,0 TO 600, 800 PIXEL

    oBrowse := FWMBrowse():New()
    oBrowse:SetAlias(cAlias)
    oBrowse:SetOwner( oDlg )
    oBrowse:SetDescription(cCadastro)
    oBrowse:DisableDetails()

    oBrowse:Activate()

    //AADD(aRotina,{"Pesquisar" ,"AxPesqui" ,0,1})
    // AADD(aRotina,{"Visualizar" ,"AxVisual" ,0,2})
    //AADD(aRotina,{"Incluir" ,"U_BInclui",0,3})
    //AADD(aRotina,{"Alterar" ,"AxAltera" ,0,4})
    //AADD(aRotina,{"Excluir" ,"AxDeleta" ,0,5})

    RpcClearEnv()

Return
