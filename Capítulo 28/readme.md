# Pontos de Entrada – Conceitos, Premissas e Regras
- Um ponto de entrada é uma User Function desenvolvida com a finalidade de interagir com uma rotina padrão da ERP;
- A User Function deve ter um nome pré-estabelecido no Protheus;
- Pode:
  - Substituir uma rotina;
  - Complementar uma rotina;
  - Implementar a atualização de tabelas específicas;
  - Executar uma ação sem processos de atualizações, mas que necessite utilizar as informações atuais do Ambiente, durante o processamento da rotina padrão para determinar as características do processo;

## Premissas e regras
- Um ponto de entrada deve ser usado apenas para o que foi projetado, pois há risco de perda de integridade dos dados;
-  Deve ser transparente para o processo padrão, de forma que todas as tabelas, acessadas pelo ponto de entrada e que sejam utilizadas pela rotina padrão, deverão ter sua situação imediatamente anterior à execução do ponto restaurado ao término do mesmo;

### GETAREA()
- Proteger o ambiente ativo no momento de algum processamento específico.
-  Para salvar uma outra área de trabalho (alias) que não o ativo, a função GetArea() deve ser executada dentro do alias: ALIAS->(GetArea());
-  Retorno: Array contendo {Alias(),IndexOrd(),Recno()}

### RESTAREA()
- Devolver a situação do ambiente salva,através do comando GETAREA();
-  Deve-se observar que a última área restaurada é a área que ficará ativa para a aplicação.
-  Sintaxe: RESTAREA(aArea)
-  Retorno: aArea Array contendo {cAlias, nOrdem, nRecno}, normalmente gerado pelo uso da função GetArea().
