#Include "TOTVS.ch"

/*/{Protheus.doc} Exemplo 4 do cap 23
Mexendo com BD
@type function
@author Vinicius Corte
@since 13/10/2022
@version 12.1.33
	@example
	u_zBanco()
/*/

User Function zBank()
	RpcSetEnv(;
        /* cRpcEmp  */ "99",; // Código de grupo de empresas
        /* cRpcFil  */ "01",; // Código da empresa/filial/unidade de negócio
        /* cEnvUser */ ,;
        /* cEnvPass */ ,;
        /* cEnvMod  */ "COM",; // Módulo: Compras (Sem o SIGA)
        /* cFunName */ "Teste",; // Nome da função
        /* aTables  */ {"SB1"} ;
	)
	
	Local aArea	:= GetArea() // pega a WorkArea
	Local aAreaB1	:= SB1->(GetArea())
	Local cMens := ""
	
	//Se a tabela já estiver posicionada
	If Select("SB1") > 0
		MsgStop("Tabela SB1 já está aberta!", "Atenção")
	EndIf
	
	//Selecionando a tabela de produtos
	DbSelectArea("SB1")
	SB1->(DbSetOrder(1)) // B1_FILIAL+B1_COD
	SB1->(DbGoTop())
	
	//Posicionando no produto de código F00002
	If SB1->(DbSeek(FWxFilial("SB1") + "F00002"))
		Alert(SB1->B1_DESC)
	EndIf
	
	//Agora, percorro todos os registros e adiciono a descrição em uma variável
	SB1->(DbGoTop())
	While !SB1->(EoF())
		cMens += Alltrim(SB1->B1_DESC)+";"+Chr(13)+Chr(10)
		SB1->(DbSkip())
	EndDo
	
	//Mostrando a mensagem
	Alert('Atenção', cMens, {'OK'}, 03)
	
	RestArea(aAreaB1)
	RestArea(aArea)
Return
