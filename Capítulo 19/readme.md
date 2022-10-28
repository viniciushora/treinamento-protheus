# Diretiva: #INCLUDE
- Indica indica em que arquivo de extensão “CH” (padrão ADVPL) estão os UDCs a serem utilizados pelo pré-processador;
- Permitire a utilização de recursos adicionais definidos para a linguagem, implementados pela 
área de Tecnologia da Microsiga;
- Os includes mais utilizados nas aplicações ADVPL, desenvolvidas para o ERP são:
  - PROTHEUS.CH:
    -  Diretivas de compilação como padrões para a linguagem. Contém a especificação da maioria das 
sintaxes utilizadas nos fontes, inclusive permitindo a compatibilidade da sintaxe tradicional do Clipper para os novos 
recursos implementados no ADVPL
    - Contém referência a outros includes:
      - DIALOG.CH;
      - FONT.CH;
      - INI.CH;
      - PTMENU.CH;
      - PRINT.CH.
  - AP5MAIL.CH:
    - Permite a utilização da sintaxe tradicional na definição das seguintes funções de envio e recebimento de e-mail.
  - TOPCONN.CH:
    - Permite a utilização da sintaxe tradicional na definição das seguintes funções de integração com a ferramenta TOPCONNECT (MP10 – DbAcess)
  - TBICONN.CH:
    - Permite a utilização da sintaxe tradicional na definição de conexões, com a aplicação Server do ambiente ERP, através das seguintes sintaxes
  - XMLXFUN.CH:
    - Permite a utilização da sintaxe tradicional, na manipulação de arquivos e strings no padrão XML, através das seguintes sintaxes
