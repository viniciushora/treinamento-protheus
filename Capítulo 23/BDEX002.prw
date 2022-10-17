#Include "TOTVS.ch"

/*/{Protheus.doc} Exemplo 5 do cap 23
Mexendo com BD
@type function
@author Vinicius Corte
@since 13/10/2022
@version 12.1.33
	@example
	u_zBanco()
/*/

User Function zBanco2()
	RpcSetEnv(;
		/* cRpcEmp  */ "99",; // Código de grupo de empresas
		/* cRpcFil  */ "01",; // Código da empresa/filial/unidade de negócio
		/* cEnvUser */ ,;
		/* cEnvPass */ ,;
		/* cEnvMod  */ "COM",; // Módulo: Compras (Sem o SIGA)
		/* cFunName */ "Teste",; // Nome da função
		/* aTables  */ {"SB1"} ;
	)
	DbSelectArea("SB1")
	SB1->(DbGoTop())
	//Alert("Hello World")
	MessageBox("Codigo ... "+fieldget(fieldpos("B1_COD")), "Teste", 0)
Return
