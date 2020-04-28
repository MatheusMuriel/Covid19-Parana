<h2 align="center"> 🏗️ Em Construção 🏗️ </h2>

<p align="center">
  <sub>Desenvolvido com ❤︎ por
    <a href="https://github.com/MatheusMuriel">Matheus Muriel</a> e
    <a href="https://github.com/MatheusMuriel/Covid19-Parana/graphs/contributors"> contribuidores
    </a>
  </sub>  
</p>

# Covid19-Parana
O objetivo desse projeto é utilizar ferramentas de analise de dados para disponibilizar uma pagina web simples para consulta dos numeros de casos e graficos de crescimento.  
A principio serão paginas das cidades de Arapongas e Londrina, mas a ideia é automatizar o processamento de dados para atingir outras cidades do Parana.


## Como contribuir
Sinta se a vontade para criar uma issue. Conforme o andamento do projeto irei atualizando as informações.

## Informações tecnicas
Linguagens: Ruby, Python, R.
Frontend: Ainda decidindo... (Provavelmente Angular)

### Fonte de dados:
Os dados são extraidos dos boletins epidemiologicos da Secretaria da Saude do estado do Parana. [Link](http://www.saude.pr.gov.br/modules/conteudo/conteudo.php?conteudo=3507)

### Transformação de dados:
Os dados são extraidos dos pdfs oficiais e transformados em CSV pela biblioteca Camelot.  
Dados já processados podem ser arquivados em um sqlite.