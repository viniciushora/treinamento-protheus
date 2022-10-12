# AdvPL
- Início em 1994;
- Veio do Clipper, Visual Objects e FiveWin;
- Criado para dar manutenção no sistema ERP Siga Advanced;
- Nome: Advanced Protheus Language;
- Linguagem orientada a objetos e eventos;
- Arquivos compilados se tornam APOs;
- APOs mantidos e carregados dinamicamente pelo Servidor Protheus para a execução.

## Programação Com Interface Própria com o Usuário
- Categoria;
- Terminal Remoto do Protheus: aplicação carregada da interface e interação com usuário;
- Backend = Protheus Server;
- Principal meio de acesso a execução de rotinas;
- Permite executar qualquer tipo de código;
- Apenas programas com interface remota, com protocolo de comunicação do Protheus;
- Todo código do ERP Microsiga Protheus é em AdvPl.

## Programação Sem Interface Própria com o Usuário
- Categoria;
- Rotinas para utilização mais específica;
- Não tem interface com usuário através do Protheus Remote;
- São apenas processos ou jobs, executados no Protheus Server;
- Programação por Processos:
  - Rotinas em AdvPl podem ser iniciadas como processos individuais (sem interface);
  - StartJob() ou CallProc();
  - Iniciadas automaticamente na inicialização do Protheus Server.
- Programação de RPC:
  - Remote Procedure Call ou Chamada de Procedimentos Remota;
  -Executar rotinas escritas em AdvPl através de de uma biblioteca de funções disponível no Protheus ou aplicações escritas ou outras linguagens;
  - Um servidor pode executar uma rotina AdvPl em outros servidores Protheus, através da conexão TCP/IP direta e vice-versa.
- Programação Web:
  - Protheus Server na Web através de requisições HTTP;
  - Recebe uma requisição, executa a rotina e devolve a resposta pelo HTTP;
     Protheus permite a compilação de arquivos HTML, contendo código ADVPL embutido (AdvPl ASP).
  - Programação TelNet:-
  - Conexão a um servidor remoto;
  - Protheus Server pode emular um terminal;
  - Pode-se escrever rotinas ADVPL cuja interface final será um terminal TelNet ou um coletor de dados móvel.