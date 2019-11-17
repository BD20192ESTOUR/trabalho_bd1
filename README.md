# TRABALHO DE BANCO DE DADOS : ESTOUR
Trabalho apresentado à disciplina de Banco de Dados I do curso de Bacharelado em Sistemas de Informação do Ifes Campus Serra para avaliação.<br>
Professor: Moises Savedra Omena.<br>


# Sumário

### 1. COMPONENTES<br>
Alexandre Jastrow: alexandre.jastrow@gmail.com<br>
Carolina de Souza Viana: carolina.wuu@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto ESTOUR e motivação da escolha realizada. <br>

> O EsTour é uma aplicação web com design responsivo que tem objetivo de auxiliar o turista a encontrar o melhor lugar para se visitar e que esteja de acordo com  o que ele está buscando no local. A aplicação mostrará aos usuários lugares para estar com a família, amigos ou mesmo estar sozinho, lugares para relaxar, conhecer o agroturismo ou se divertir na noite. Além disso, apresentará ao turista as linhas de ônibus municipais que trafegam próximo ao local visitado.<br>
 

### 3.MINI-MUNDO<br>

> Turistas visitam diferentes lugares ao longo do ano, no momento de escolher o local a ser visitado muitos recorrem ao auxílio da web para obter informações relacionadas ao turismo do local. Contudo, há poucos dados que estejam de acordo com as expectativas do turista, o que contribui para uma experiência frustrante ao visitar o lugar.<br>
A plataforma EsTour tem o objetivo de auxiliar o turista na escolha de locais a visitar, a plataforma receberá o cadastro de empreendimentos como bares, danceterias, shoppings, agroturismo, restaurantes, além de disponibilizar os pontos turísticos públicos da cidade para compor a base de dados do sistema. <br>
Os turistas poderão por meio do EsTour publicar avaliações dos locais visitados e a partir desses dados, o algoritmo de busca da plataforma mostrará os  lugares que receberam boas avaliações no topo das pesquisas, assim auxiliará os usuários na escolha do lugar ideal para ele e atrairá novos visitantes aos locais.<br>
A plataforma também permitirá que os empreendimentos cadastrados possam divulgar fotos, mini vídeos e eventos da semana que poderão ser visualizados quando o turista estiver observando as informações do lugar, isso será um diferencial para atrair pessoas a esses lugares e tornar o uso da plataforma eficiente.<br>
O Turista não precisará ter uma conta de usuário na plataforma para acessar os lugares e pontos turísticos, mas ao criar uma conta, ele terá acesso a funcionalidades como: visualização de um mapa animado com todos os lugares que foram visitados por ele; ver eventos do dia ou da semana de um determinado empreendimento; compartilhar no facebook uma publicação sobre o local onde ele está no momento.<br>
A plataforma EsTour inicialmente funcionará apenas o módulo de buscas para pontos turísticos do estado do Espírito Santo, podendo futuramente expandir para outros estados do Brasil.<br>


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/tela_principal.png "Página principal EsTour")
![Arquivo PDF do Protótipo Balsamiq feito para o EsTour](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/TELAS_DO_SISTEMA_EsTour.pdf "ESTour")


#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

> A plataforma EsTour disponibilizará as seguintes informações/relatórios:
* Relatório que informe quais são os 5 pontos turisticos cujo a média de avaliação são as mais altas, incluindo: nome do ponto turistico, a média das notas recebidas.
* Relatório que informe quais os 5 pontos turisticos que obteveram as menores médias de e avaliação, incluindo: nome do ponto turistico, a média das notas recebidas.
* Relatório que informe a quantidade de pontos turisticos privados agrupados por município, incluindo: a quantidade de pontos turisticos privados e nome do município.
* Relatório que informe a quantidade de pontos turisticos públicos agrupados por município, incluindo: a quantidade de pontos turisticos públicos e nome do município.
* Relatório que informe a quantidade de onibus que trafegam próximo aos pontos turisticos, agrupados por bairros, incluindo: o nome do bairro, municipio e a quantidade de onibus.
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
![Tabela de dados do EsTour](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/Tabela_Dados_atual.xlsx?raw=true "Tabela - Dados EsTour")
    
### 5.MODELO CONCEITUAL<br>    
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/conceitual_atual.png "Modelo Conceitual")

#### 5.1 Validação do Modelo Conceitual
    Grupo: Vinicius, Juliano e Gabriel
    Nome do aplicativo: AppDoações
    Feedback : Bem organizado, válido. Poderia utilizar coordenadas latitude e longitude para endereço.
    Grupo: Kaio, Renato, Maikysuel
    Nome do aplicativo : Bora Jogar
    Feedback : Precisa separar usuários em tipos, endereço precisa de uma tabela própria,contato tem relação 0,n com tipocontato.

#### 5.2 Descrição dos dados 
    
    TIPOUSUARIO: Tabela que identifica o tipo de usuario a ser cadastro no sistema.
    - idtipousuario: campo que identifica o tipo de usuario no sistema;
    - tipo_usuario: campo que descreve o tipo de usuario.
    
    USUARIO: Tabela que armazena as informações do usuario cadastrado no EsTour.
    - idusuario: campo que identifica um usuario no sistema;
    - nome: campo que possui o nome do usuario;
    - email: campo que identifica o usuário ao fazer login no sistema;
    - senha: campo que autentica o usuário ao fazer login no sistema.
    
    EMPREENDIMENTO: Tabela que armazena informações sobre o empreendimento que é um ponto turistico privado.
    - idempreendimento: campo que é reponsavel por identificar o empreendimento;
    - nome_empreendimento: campo que descreve o nome do empreendimento;
    - cnpj: campo que informa o cadastro de pessoa juridica do empreendimento.
    
    TURISTA: Tabela que armazena informações sobre o turista.
    - idturista: campo que é responsável por identificar o turista;
    - dt_nacimento: campo que informa a data de nascimento do turista.
    
    SEXO: Tabela que guarda informações sobre genero sexual dos usuarios turistas.
    - idsexo: campo que identifica o tipo de sexo no sistema;
    - sexo: campo de descreve o gênero sexual.
    
    PONTOTURISTICOAVALIACAO: Tabela que armazena as avaliações dos turistas em relação aos pontos turisticos visitados.
    - idpontoturisticoavaliacao: campo que identifica a avaliação do usuário turista no sistema;
    - comentario: campo que descreve a experiencia do usuário turista no local visitado;
    - nota: campo que guarda a nota dada ao ponto turistico;
    - dt_avaliacao: campo que guarda a data que foi feita a avaliação;
    - dt_visita: campo que guarda a data que foi feita a visita no ponto turistico.
    
    PONTOTURISTICO: Tabela que armazena informações dos pontos turisticos publicos e privados(empreendimentos).
    - idpontoturistico: campo que identifica o ponto turistico;
    - nome_pontoturistico: campo que armazena o nome do ponto turisrico;
    - descricao: campo que descreve o ponto turistico.
    
    TIPOPONTOTURISTICO: Tabela que identifica o tipo do ponto turistico.
    - idtipopontoturistico: campo que identifica o tipo no sistema;
    - tipo_pontoturistico: campo que descreve o tipo de ponto turistico (publico, privado).
    
    PUBLICOALVO: Tabela que identifica o publico alvo do ponto turistico.
    - idpublicoalvo: campo que identifica o tipo de publico alvo;
    - publico_alvo: campo que descreve o tipo de publico (jovens,crianças, adultos...).
    
    AMBIENTEPONTOTURISTICO: Tabela que guarda as caracteristicas do ambiente do ponto turistico.
    - idpontoturistico: campo que identifica o ponto turistico;
    - idtipoambiente: campo que identifica o tipo de ambiente;
    
    TIPOAMBIENTE: tabela que identifica os tipos de ambientes.
    - idtipoambiente: campo que identifica o tipo de ambiente no sistema;
    - tipo_ambiente: campo que descreve o tipo de ambiente (praia, bar, movimentado...).
    
    ENDEREÇO: Tabela que guarda informações sobre endereço do ponto turistico.
    - idendereco: campo que identifica o endereço no sistema;
    - logradouro: campo que descreve o nome da rua;
    - numero: campo que informa o numero do endereco;
    - cep: campo que informa o cep do endereco.
    
    TIPOLOGRADOURO: Tabela que identifica qual tipo de logradouro o endereço é.
    - idtipologradouro: campo que identifica o tipo de logradouro no sistema;
    - tipo_logradouro: campo que descreve o tipo logradouro. (av, rua...).
    
    BAIRRO: Tabela que guarda informações sobre os bairros do municipio.
    - idbairro: campo que identifica o bairro no sistema;
    - bairro: campo que descreve o nome do bairro.
    
    MUNICIPIO: Tabela que guarda informações sobre os municipios do estado.
    - idmunicipio: campo que identifica o municipio no sistema;
    - municipio: campo que descreve o nome do municipio.
    
    CONTATO: Tabela que guarda o contato do ponto turistico.
    - idcontato: campo que identifica o contato no sistema;
    - contato: campo que descreve o contato.
    
    TIPOCONTATO: Tabela que identifica o tipo de contato cadastrado no sistema.
    - idtipocontato: campo que identifica o tipo de contato no sistema;
    - tipo: campo que descreve o tipo (email, facebook, telefone, celular...).
    
    EVENTO: Tabela que armazena informações dos eventos de um determinado ponto turistico.
    - idevento: campo que identifica o evento;
    - descricao_evento: campo que descreve o evento e suas caracteristicas;
    - dt_evento: campo que informa a data do evento;
    - link_evento: campo que armazena o link para um site externo do evento do ponto turistico.
    
    ONIBUSPONTOTURISTICO: Tabela que armazena os onibus municípais que trafegam próximo ao ponto turistico.
    
    ONIBUS: Tabela que armazena os dados dos onibus municipais públicos.
    - idonibus: campo que identifica o onibus;
    - numero_linha: campo que informa o numero da linha do onibus;
    - nome_linha: campo que descreve o nome da linha do onibus;
    
    SISTEMATRANSPORTE: Tabela que identifica qual o tipo de classificação do transporte publico.
    - idsistematransporte: campo que identifica o tipo no sistema;
    - sistema_transporte: campo que descreve o tipo (transcol, seletivo, grande vitoria...).
    
    ARQUIVO: Tabela que armazena os arquivos dos usuarios.
    - idarquivo: campo que identifica o arquivo;
    - endereco_arquivo: campo que identifica o endereço do arquivo no servidor;
    - dt_envio: campo que informa a data de envio do arquivo.
    
    TIPOARQUIVO: Tabela que identifica o tipo de arquivo que vai ser guardado no sistema.
    - idtipoarquivo: campo que identifica o tipo de arquivo no sistema;
    - tipo_arquivo: campo que descreve o tipo de arquivo (mp4,mp3,jpg...).


#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3):
    
    - O principal fluxo de dados no sistema é o que disponibilizará os dados de uma busca para o usuário.
    Quando um Ponto Turístico é buscado ele está relacionado com as principais tabelas: 
    PontoTuristico, Endereço, Evento, OnibusPontoTuristico, PontoTuristicoAvaliacao,
    Arquivos (onde conterá as fotos e videos do lugar), Contato.
    Essas são informações que montarão a estrutura da busca e mostrará a informação completa sobre o Ponto Turistico.
    
    
    - Outro fluxo importante é o Cadastro de Usuário. 
    Neste fluxo de dados, os dados são disponibilizados de acordo com  tipo de usuário do sistema
    que poderá ser Turista ou Empreendimento e apartir disso o sistema direcionará o usuario às
    páginas corretas.
    
    
    - Outro fluxo importante é as avaliações dos pontos turisticos, pois os pontos turisticos
    que obtiveram maiores médias de nota de avaliação, aparecerão no topo das pesquisas.
    
    
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3):
    
    As tabelas que vão conter mais dados são : USUARIO, PONTOTURISTICO, PONTOTURISTICOAVALIACAO, EVENTO, ONIBUSPONTOTURISTICO,
    ENDERECO, ARQUIVO, AMBIENTEPONTOTURISTICO.
    
    
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    
    As tabelas mais importantes para cumprir o objetivo do sistema são ao total 7 tabelas: 
    USUARIO,TURISTA,PONTOTURISTICO,PONTOTURISTICOAVALIACAO, EVENTO, ONIBUSPONTOTURISTICO, ONIBUS.
    

### 6.	MODELO LÓGICO <br> 
#### Para a realização do trabalho da disciplina de BD1, optamos por trabalhar apenas com as principais tabelas do sistema.<br>

#### Obs: O modelo lógico segue o modelo conceitual.

![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/LOGICO_REDUZIDO_ATUAL.png "Modelo Lógico")


### 7.	MODELO FÍSICO<br>
#### Para a realização do trabalho da disciplina de BD1, optamos por trabalhar apenas com as principais tabelas do sistema.<br>
#### O modelo físico está representando apenas o objetivo principal do trabalho, onde foi limitado a 7 principais tabelas e não está seguindo a estrutura do modelo lógico.
#### Há campos de tabelas não pricipais que foram encapsuladas dentro de algumas tabelas principais por questão de necessidade para realizar as consultas. Essa foi a maneira escolhida por questão de limitação da quantidade de tabelas no banco e foi aceita pelo professor da disciplina por motivos de tempo de realização do trabalho.<br>

![ Modelo Fisico ](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/MODELO_FISICO.sql?raw=true " Modelo Fisico do EsTour ")
<br><br>

>## Marco de Entrega 01 em: 07/10/2019

<br><br>
 
### 8.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS <br>

![Inserts com os Dados do EsTour - (DROP + CREATE + INSERT INTO)](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/INSERCAO_DADOS_DROP_CREAT_INSERT.sql?raw=true " Inserts Modelo Fisico do EsTour ")

### 9.	TABELAS E PRINCIPAIS CONSULTAS <br>

#### As consultas foram feitas mostrando no máximo cinco registros como resultado.

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

![Código SQL 1- Tabela Usuario](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_1_USUARIO.SQL?raw=true "Código Consulta 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_1.PNG "Código Consulta 1")
<br>

![Código SQL 2- Tabela Turista](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_2_TURISTA.SQL?raw=true "Código Consulta 2")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_2.PNG "Código Consulta 2")
<br>
 
![Código SQL 3- Tabela Ponto Turistico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_3_PONTOTURISTICO.SQL?raw=true "Código Consulta 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_3.PNG "Código Consulta 3")
<br>

![Código SQL 4- Tabela Ponto Turistico Avaliação](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_4_PONTOTURISTICOAVALIACAO.SQL?raw=true "Código Consulta 4")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_4.PNG "Código Consulta 4")
<br>

![Código SQL 5- Tabela Evento](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_5_EVENTO.SQL?raw=true "Código Consulta 5")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_5.PNG "Código Consulta 5")
<br>

![Código SQL 6- Tabela Onibus](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_6_ONIBUS.SQL?raw=true "Código Consulta 6")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_6.PNG "Código Consulta 6")
<br>

![Código SQL 7- Tabela Onibus Ponto Turistico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9_1_7_ONIBUSPONTOTURISTICO.SQL?raw=true "Código Consulta 7")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9_1_7.PNG "Código Consulta 7")
<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

	a) 4 consultas com filtro where.
![Código SQL 1- Avaliação do ponto turistico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_where_9_2_1.sql?raw=true " Código filtro where 1")
 <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_where_9_2_1.png " Consulta filtro where 1")
 <br>
![Código SQL 2- Ponto turísticos de Vila Velha](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_where_9_2_2.sql?raw=true " Código filtro where 2")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_where_9_2_2.png " Consulta filtro where 1")
 <br>
![Código SQL 3- Ponto turísticos da Serra que sejam praias publicas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_where_9_2_3.sql?raw=true " Código filtro where 3")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_where_9_2_3.png " Consulta filtro where 1")
 <br>
![Código SQL 4- Linhas de ônibus que passam no Convento da Penha](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_where_9_2_4.sql?raw=true " Código filtro where 4")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_where_9_2_4.png " Consulta filtro where 1")
<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)<br>
    a) 5 consultas que envolvam os operadores lógicos AND, OR e Not
![Código SQL 1- Pontos Turisticos onde o publico alvo seja adultos ou amigos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_1.sql?raw=true "Código OPERADORES LÓGICOS 1")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_1.PNG "Consulta OPERADORES LÓGICOS 1")
 <br>
![Código SQL 2- Pontos Turisticos onde o tipo de ambiente não seja praia, nem shopping e nem igreja](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_2.sql?raw=true "Código OPERADORES LÓGICOS 2")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_2.PNG "Consulta OPERADORES LÓGICOS 2")
<br>
![Código SQL 3- Pontos Turisticos onde o municipio seja Guarapari ou Serra, e tipo de ambiente seja praia e o publico alvo não seja amigos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_3.sql?raw=true "Codigo OPERADORES LÓGICOS 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_3.PNG "Consulta OPERADORES LÓGICOS 3")
<br>
![Código SQL 4- Pontos Turisticos onde média de nota de avaliação é maior que 6, e o público alvo seja amigos ou adultos, e o municipio não seja Serra](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_4.sql?raw=true "Codigo OPERADORES LÓGICOS 4")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_4.PNG "Consulta OPERADORES LÓGICOS 4")
<br>
![Código SQL 5- Pontos Turisticos que não receberam nenhuma avaliação, e publico alvo seja amigos ou o municipio não seja serra](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_5.sql?raw=true "Codigo OPERADORES LÓGICOS 5")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_5.PNG "Consulta OPERADORES LÓGICOS 5")
<br><br>

	b) 3 consultas com operadores aritméticos

![Código SQL 1- Seleciona os pontos turisticos que recebem avaliações consistentemente positivas(>8)](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_aritmetica_1.sql "codigo avaliacao positiva")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_operadores_aritimeticos_1.png " Consulta avaliações positivas")
<br>
![Código SQL 2- Seleciona os pontos turisticos mais visitados ou avaliados por usuários do sexo feminino nas ultimas duas semanas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_aritmetica_2.sql "codigo avaliacao positiva")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_operadores_aritimeticos_2.png "consulta popular feminino")
<br>
![Código SQL 3- Seleciona os 5 pontos turisticos mais populares ou com mais eventos que podem ser visitados a partir do terminal de Vila Velha, São Torquato ou Jardim América](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_aritmetica_3.sql "codigo avaliacao positiva")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_operadores_aritimeticos_3.png "consulta popular Vila velha, São Torquato, Jardim América")
<br>
<br><br>

	c) 3 consultas com operação de renomear nomes de campos ou tabelas
![Código SQL 1- Alterar o campo nome_ponto turistico para nome na tabela PontoTuristico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_6.sql?raw=true "Código Renomear nomes 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_6.PNG "Consulta Renomear nomes 1")
<br>
![Código SQL 2- Alterar o nome do campo comentario para avaliacao na tabela PontoTuristicoAvaliacao](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_7.sql?raw=true "Código Renomear nomes 2")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_7.PNG "Consulta Renomear nomes 2")
<br>
![Código SQL 3- Alterar o nome da tabela PontoTuristicoAvaliacao para avaliacao](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_3_8.sql?raw=true "Código Renomear nomes 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_3_8.PNG "Consulta Renomear nomes 3")

<br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

    a) 5 consultas que envolvam like ou ilike
 
![Código SQL 1- Exemplo de busca que ocorre quando o usuário pesquisa por "Vila Velha" na página principal](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_like_1.sql "Codigo consulta Vila Velha")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_like_1.png "Consulta Vila Velha")
<br>
![Código SQL 2- Busca por pCódigo SQL 5-ontos turísticos naturais de Vitória, e mostra eventos que ocorrem nesses locais (Se esses existirem)](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_like_2.sql "Codigo consulta pontos naturais Vitória")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_like_2.png "Consulta pontos naturais Vitória")
<br>
![Código SQL 3- Busca avaliacões feitas por nome da pessoa](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_like_3.sql "Codigo consulta por nome")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_like_3.png "Consulta por nome")
<br>
![Código SQL 4- Busca locais pra praticar esportes](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_like_4.sql "Codigo Consulta por esportes")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_like_4.png "Consulta por esportes")
<br>
![Código SQL 5- Mostra quantidade de pontos turísticos e eventos para cada cidade na Grande Vitória, assim como sua média de notas.](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_like_5.sql "Codigo consulta Eventos e notas da Grande Vitória")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_like_5.png "Consulta Eventos e notas da Grande Vitória")
<br>
<br><br>

    b) Criar uma consulta para cada tipo de função data apresentada em aula (7 consultas)

![Código SQL 1- Lista dos próximos eventos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_1.sql?raw=true "Código função data 1")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_1.png "Consulta função data 1")
 <br>
 ![Código SQL 2- Avaliação dos últimos 10 dias](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_2.sql?raw=true "Código função data 2")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_2.png "Consulta função data 2")
 <br>
 ![Código SQL 3- Idade dos turistas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_3.sql?raw=true "Código função data 3")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_3.png "Consulta função data 3")
 <br>
 ![Código SQL 4- Tempo restante para o próximo evento](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_4.sql?raw=true "Código função data 4")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_4.png "Consulta função data 4")
 <br>
![Código SQL 5- Ano de nascimento dos turistas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_5.sql?raw=true "Código função data 5")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_5.png "Consulta função data 5")
 <br>
 ![Código SQL 6- Histórico de visitas ordenados pelo mais recente](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_6.sql?raw=true "Código função data 6")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_6.png "Consulta função data 6")
 <br>
 ![Código SQL 7- Evento do dia e a quantidade de horas até o evento](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_data_9_4_7.sql?raw=true "Código função data 7")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_data_9_4_7.png "Consulta função data 7")

<br><br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

![Código SQL 1- Altera local do evento Corrida Maluca de um ponto turístico para outro](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_alteracao_1.sql "Codigo altera local")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_alteracao_1.png "consulta altera local")
<br>
![Código SQL 2- Altera senha do usuario de nome Willian Joao Daniel para '54321'](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_alteracao_2.sql "Codigo altera senha")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_alteracao_2.png " Consulta altera senha")
<br>
![Código SQL 3- Exclui o vigésimo segundo registo da tabela ONIBUS](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_alteracao_3.sql "Codigo deleta registro")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_alteracao_3.png " Consulta deleta registro")
<br>
![Código SQL 4- Altera a página do evento Eletromusic](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_alteracao_4.sql "Codigo altera página")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_alteracao_4.png " Consulta altera página")
<br>
![Código SQL 5- Altera a data de nascimento de um usuário](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_alteracao_5.sql "Codigo altera data de nascimento")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_alteracao_5.png " Consulta data de nascimento")
<br>
 ![Código SQL 6- Altera e-mail de usuário](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_alteracao_6.sql "Codigo altera e-mail")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_alteracao_6.png " Consulta altera e-mail")
<br>
<br><br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
![Código SQL 1- Consulta envolvendo dados de todas as tabelas - Historico de visita dos turistas nos pontos turisticos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_9_6.SQL?raw=true "Código JOIN 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_9_6.PNG "Consulta JOIN 1")
<br>

        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho (5 consultas)
	
![Código SQL 1- Pontos turísticos visitados recentemente](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_join_9_6_1.sql?raw=true " Código join/orderby 1")
 <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_join_9_6_1.png " Consulta join/orderby 1")
 <br>
![Código SQL 2- Ponto turísticos com melhor media de notas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_join_9_6_2.sql?raw=true " Código join/orderby 2")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_join_9_6_2.png " Consulta join/orderby 2")
 <br>
![Código SQL 3- Proxímos eventos dos pontos turísticos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_join_9_6_3.sql "join/orderby 3")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_join_9_6_3.png " Consulta join/orderby 3")
 <br>

<br>

>## Marco de Entrega 02 em: 21/10/2019<br>

<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

![Código SQL 1- Agrupamento por sexo](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_group_by_9_7_1.sql?raw=true "Código group by 1")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_group_by_9_7_1.png "Consulta group by 1")
   <br>
![Código SQL 2- Média das notas dadas pelos usuários](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_group_by_9_7_2.sql?raw=true "Código group by 2")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_group_by_9_7_2.png "Consulta group by 2")
   <br>
![Código SQL 3- Desvio padrão das notas dadas pelos usuários](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_group_by_9_7_3.sql?raw=true "Código group by 3")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_group_by_9_7_3.png "Consulta group by 3")
   <br>
![Código SQL 4- Quantidade de eventos nos pontos turísticos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_group_by_9_7_4.sql?raw=true "Código group by 4")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_group_b_9_7_4.png "Consulta group by 4")
   <br>
![Código SQL 5- Maior nota dada a um ponto turístico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_group_by_9_7_5.sql?raw=true "Código group by 5")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_group_by_9_7_5.png "Consulta group by 5")
   <br>
![Código SQL 6-  Menor nota dada a um ponto turístico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_group_by_9_7_6.sql?raw=true "Código group by 6")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_group_by_9_7_6.png "Consulta group by 6")
   <br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

![Código SQL 1- Consulta que envolve pontos turisticos e a média de nota de avaliação, mostrando também os pontos turisticos que não possuíram nota de avaliação](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-8_1.sql?raw=true "Código Left,Right Outer Join 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-8_1.PNG "Código Left,Right Outer Join 1")
<br>
![Código SQL 2- Consulta que envolve os pontos turisticos que tiveram eventos no ano de 2019, mostrando o nome dos pontos turisticos, o nome do evento e o mês do evento](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-8_2.sql?raw=true "Código Left,Right Outer Join 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-8_2.PNG "Código Left,Right Outer Join 2")
<br>
![Código SQL 3- Consulta que envolve os pontos turisticos de vitoria que possuem linha de onibus que trafegam próximo, mostrando o numero das linhas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-8_3.sql?raw=true "Código Left,Right Outer Join 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-8_3.PNG "Código Left,Right Outer Join 3")
<br>
![Código SQL 4- Consulta que envolve os pontos turisticos de de vila velha que possuem nota de avaliacao, mostrando a média das notas](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-8_4.sql?raw=true "Código Left,Right Outer Join 4")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-8_4.PNG "Código Left,Right Outer Join 4")
<br>

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
	Não existe tabela com auto referência no trabalho.
<br>

        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
        
![Código SQL 1- View criada com busca por pontos turísticos para amigos e adultos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_view_9_9_2.sql?raw=true "Código view 2")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_view_9_9_2.png "Consulta view 2")
   <br>
![Código SQL 2- View criada com pontos turísticos populares de Vila Velha](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_view_9_9_3.sql?raw=true "Código view 3")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_view_9_9_3.png "Consulta view 3")
   <br>
![Código SQL 3- View criada com avaliação positiva consistente dos pontos turísticos e desvio padrão](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_view_9_9_4.sql?raw=true "Código view 4")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_view_9_9_4.png "Consulta view 4")
   <br>
![Código SQL 4- View criada com lista dos próximos eventos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_view_9_9_5.sql?raw=true "Código view 5")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_view_9_9_5.png "Consulta view 5")
   <br>
![Código SQL 5- View criada com lista das melhores medias de notas dos pontos turísticos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_view_9_9_6.sql?raw=true "Código view 6")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_view_9_9_6.png "Consulta view 6")
   <br>
![Código SQL 6- View criada com lista dos pontos turísticos com esportes](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_view_9_9_7.sql?raw=true "Código view 7")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_view_9_9_7.png "Consulta view 7")
   <br>

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

![Código SQL 1- Consulta que envolve os turistas, mostrando o nome e idade somente para os que nasceram após 1990](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-10_1.sql?raw=true "Código SubConsulta 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-10_1.PNG "Código SubConsulta 1")
<br>
![Código SQL 2- Consulta que envolve os turistas, mostrando o nome do turista e os pontos turisticos que já foram visitados no minimo 2 lugares distintos](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-10_2.sql?raw=true "Código SubConsulta 2")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-10_2.PNG "Código SubConsulta 2")
<br>
![Código SQL 3- Consulta que envolve os pontos turisticos, mostrando os pontos turisticos e seus eventos do mes de dezembro de 2019, mostrando apenas os eventos com data após o dia 5](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/CAROLINA_CONSULTA_TOPICO_9-10_3.sql?raw=true "Código SubConsulta 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/CAROLINA_CONSULTA_TOPICO_9-10_3.PNG "Código SubConsulta 3")
<br>

#### 9.11 Relatórios e Gráficos 
### Relatório 1
#### Objetivo: Os 5 pontos turisticos cujo a média de avaliação são as mais altas
![Código SQL 1 - Codigo do Relatório 1](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/RELATORIO_1_CODIGO.SQL?raw=true "Código 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_1_IMAGEM.PNG "Consulta 1")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_1_GRAFICO.PNG "Grafico 1")
<br>
### Relatório 2
#### Objetivo: Os 5 pontos turisticos que obteveram as menores médias de avaliação
![Código SQL 2 - Codigo do Relatório 2](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/RELATORIO_2_CODIGO.SQL?raw=true "Código 2")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_2_IMAGEM.PNG "Consulta 2")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_2_GRAFICO.PNG "Grafico 2")
<br>
### Relatório 3
#### Objetivo: A quantidade de pontos turisticos privados agrupados por município
![Código SQL 3 - Codigo do Relatório 3](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/RELATORIO_3_CODIGO.SQL?raw=true "Código 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_3_IMAGEM.PNG "Consulta 3")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_3_GRAFICO.PNG "Grafico 3")
<br>
### Relatório 4
#### Objetivo: A quantidade de pontos turisticos públicos agrupados por município
![Código SQL 4 - Codigo do Relatório 4](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/RELATORIO_4_CODIGO.SQL?raw=true "Código 4")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_4_IMAGEM.PNG "Consulta 4")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_4_GRAFICO.PNG "Grafico 4")
<br>
### Relatório 5
#### Objetivo: A quantidade de onibus que trafegam próximo aos pontos turisticos agrupados por bairros
![Código SQL 5 - Codigo do Relatório 5](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/RELATORIO_5_CODIGO.SQL?raw=true "Código 5")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_5_IMAGEM.PNG "Consulta 5")
<br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/RELATORIO_5_GRAFICO.PNG "Grafico 5")
<br>
>## Marco de Entrega 03 em: 04/11/2019<br>
<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
#### a) Pontos Chave do MINI-MUNDO
#### b) 5 principais tabelas/fluxos do sistema
#### c) Perguntas que podem ser respondidads com o sistema proposto
#### d) Modelo Conceitual
#### e) Modelo Lógico
#### f) Relatórios e Gráficos mais importantes para o sistema (mínimo 5) 
#### --> Tempo de apresentação 6 min : 40s.


### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)


![Arquivo de Backup do banco Estour](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/ESTOUR.backup?raw=true "Backup")

<br>

    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

##### Maikysuel Simões Braga - Grupo de Trabalho - Bora Jogar.<br>
##### Vinicius Hora Corte - Grupo de Trabalho - App Doações.
<br>

>## Marco de Entrega 04 em: 18/11/2019<br>

<br><br><br>
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


