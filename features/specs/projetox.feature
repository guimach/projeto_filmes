#language:pt

@busca_diretor
Funcionalidade: Busca de diretoes

Uma empresa de filmes, contratou um sistema da sua empresa.
Considerando que existe a necessidade de cadastrar diretor (nome, nascimento) e filmes (nome, ano de lançamento).
Construa um sistema utilizando arraylist para atender esta necessidade e no final construa um codigo de automação 
(utilizar selenium, Junit "RUBY" e chromeDriver que busque no google o diretor e o filme e retorne a quantidade 
aproximada de resultados para a busca. 

Esquema do Cenário: Buscar Diretor

Dado Que para atender o bom funcionamento do sistema de cadastro dos <nomes> diretores de cinema
Quando eu tenho os dados como data <nascimento>  dos mesmos com e a <categoria> do filme que eles costumam dirigir  
E se ele é <falecido?> ou não
Então eu irei cadastralos em minha base, assim como registrar seus portifolios e evidenciá-los  

Exemplos:

|nomes               |nascimento                |categoria |falecido?|
|"Woody Allen"       |"1 de dezembro de 1935"   |"comédia" |"NAO"    |
|"Stanley Kubrick"   |"26 de julho de 1928"     |"comédia" |"SIM"    |
|"David Fincher"     |"28 de agosto de 1962"    |"suspense"|"NAO"    |
|"Steven Spielberg"  |"18 de dezembro de 1946"  |"suspense"|"NAO"    |
|"Christopher Nolan" |"30 de julho de 1970"     |"suspense"|"NAO"    |
|"Quentin Tarantino" |"27 de março de 1963"     |"suspense"|"NAO"    |
|"Martin Scorsese"   |"17 de novembro de 1942"  |"suspense"|"NAO"    |
|"Alfred Hitchcock"  |"13 de agosto de 1899"    |"suspense"|"SIM"    |
|"Tim Burton"        |"25 de agosto de 1958"    |"suspense"|"NAO"    |
|"Fede Alvarez"      |"9 de fevereiro de 1978"  |"terror"  |"NAO"    |
|"Robert Eggers"     |"7 de julho de 1983"      |"terror"  |"NAO"    |
|"Spike Lee"         |"20 de março de 1957"     |"drama"   |"NAO"    |
|"Barry Jenkins"     |"19 de novembro de 1979"  |"drama"   |"NAO"    |
|"Kasi Lemmons"      |"24 de fevereiro de 1961" |"drama"   |"NAO"    |
|"Doug Liman"        |"24 de julho de 1965"     |"ação"    |"NAO"    |
|"Neill Blomkamp"    |"17 de setembro de 1979"  |"ação"    |"NAO"    |
|"John McTiernan"    |"8 de janeiro de 1951"    |"ação"    |"NAO"    |
|"Matthew Vaughn"    |"7 de março de 1971"      |"ação"    |"NAO"    |

@api-test
Cenário: Api-teste

Construa uma chamada de api em java usando jayway rest assured e 
valide a mensagem da url: https://jsonplaceholder.typicode.com/todos/1 

Dado que eu como Q.A preciso Validar a api solicitada
Quando eu tenho o contrato correto para mesma 
Então eu validarei se ela me retornará os campo userId "1" 
E o campo id "1" 
E o campo Tile "delectus aut autem"
E o campo Completed "false"

