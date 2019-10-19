# TRABALHO DE BANCO DE DADOS : ESTOUR
Trabalho apresentado à disciplina de Banco de Dados I do curso de Bacharelado em Sistemas de Informação do Ifes Campus Serra para avaliação.<br>
Professor: Moises Savedra Omena.<br>


# Sumário

### 1. COMPONENTES<br>
Alexandre Jastrow: alexandre.jastrow@gmail.com<br>
Carolina de Souza: carolina.wuu@gmail.com<br>
Willian João Daniel: willianirl639@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados ESTOUR e motivação da escolha realizada. <br>

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
* Relatório que informe quais são os pontos turisticos mais bem avaliados pelos usuários da plataforma incluindo: nome do ponto turistico, a média das notas recebidas, nome do bairro e nome do município.
* Relatório que informe a quantidade de pontos turisticos públicos e privados agrupados por município incluindo: a quantidade de pontos turisticos públicos, quantidade de pontos turisticos privados e nome do município.
* Relatório que informe o histórico de visita  de um usuario agrupado por município incluindo: o nome do ponto turistico, a data da visita, a hora da visita e o nome do município.
* Relatório que informe os eventos dos pontos turisticos que irão ocorrer agrupados por município incluindo: descrição do evento, data, hora, nome do ponto turistico e município.
* Relatório que informe os onibus que trafegam próximo a um ponto turistico da plataforma ordenado por numero da linha do onibus, incluindo: nome do ponto turistico, o numero da linha, o nome da linha do onibus.
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
![Tabela de dados do EsTour](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/Tabela_Dados.xlsx?raw=true "Tabela - Dados EsTour")
    
### 5.MODELO CONCEITUAL<br>    
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/Conceitual_Atual.png "Modelo Conceitual")

#### 5.1 Validação do Modelo Conceitual
    Grupo: Vinicius, Juliano e Gabriel
    Nome do aplicativo: AppDoações
    Feedback : Bem organizado, válido. Poderia utilizar coordenadas latitude e longitude para endereço.
    Grupo: Kaio, Renato, Maikysuel
    Nome do aplicativo : Bora Jogar
    Feedback : Precisa separar usuários em tipos, endereço precisa de uma tabela própria,contato tem relação 0,n com tipocontato.

#### 5.2 Descrição dos dados 
    USUARIO: Tabela que armazena as informações do usuário cadastrado no EsTour
    - idusuario: campo que identifica um usuario no sistema
    - tipo_usuario: campo que identifica qual tipo de usuário usa o sistema, usuário pode ser do tipo Turista ou Empreendimento
    - nome: campo que possui o nome do usuario turista ou empreendimento
    - email: campo que identifica o usuário ao fazer login no sistema
    - senha: campo que autentica o usuário ao fazer login no sistema
    
    EMPREENDIMENTO: Tabela que armazena informações sobre o empreendimento que é ponto turistico privado
    - idempreendimento: campo que é reponsavel por identificar o empreendimento
    - nome_empreendimento: campo que descreve o nome do empreendimento
    - cnpj: campo que informa o cadastro de pessoa juridica do empreendimento
    
    TURISTA: Tabela que armazena informações sobre o turista
    - idturista: campo que é responsável por identificar o turista
    - dt_nacimento: campo que informa a data de nascimento do turista
    - sexo: campo que informa o sexo do turista
    
    PONTOTURISTICOAVALIACAO: Tabela que armazena as avaliações dos turistas em relação aos pontos turisticos visitados
    - idpontoturisticoavaliacao: campo que identifica a avalição do usuário turista no sistema
    - comentario: campo que descreve as expectativas do usuário turista
    - nota: campo que guarda a nota dada ao ponto turistico
    - dt_avaliacao: campo que guarda a data que foi feita a avaliação
    
    HISTORICOVISITA: Tabela que armazena dados sobre os pontos turisticos visitados pelos turistas
    - idhistoricovisita: campo que identifica o histórico de visita de um turista em um ponto turistico
    - dt_visita: campo que guarda a data que foi feita a visita no ponto turistico
    
    PONTOTURISTICO: Tabela que armazena informações dos pontos turisticos publicos e privados(empreendimentos)
    - idpontoturistico: campo que identifica o ponto turistico
    - tipo_pontoturistico: campo que identifica se o ponto turistico é do tipo publico ou privado
    - nome_pontoturistico: campo que armazena o nome do ponto turisrico
    - descricao: campo que descreve o ponto turistico e suas caracteristicas
    - publico_alvo: campo que informa o tipo de público do ponto turistico
    - tipo_ambiente: campo que informa as caracteristica do ambiente do ponto turistico
    - endereco: campo que descreve a localização do ponto turistico(poisui, tipologradouro, logradouro, numero, bairro, cep, muncipio)
    
    CONTATO: Tabela que armazena as informações de contato do ponto turistico
    - idcontato: campo que é responsável por identifica o contato.
    - contato: campo que descreve o contato
    
    TIPOCONTATO: Tabela que armazena as informações do tipo(meio) de contato do ponto turistico
    - idtipocontato: campo que identifica o tipo de contato
    - tipo: campo que descreve o tipo de contato. Ex (Facebook, Telefone, Celular, Instagram,Email)

    EVENTO: Tabela que armazena informações dos eventos de um determinado ponto turistico
    - idevento: campo que identifica o evento
    - descricao_evento: campo que descreve o evento e suas caracteristicas
    - dt_evento: campo que informa a data do evento
    - link_evento: campo que armazena o link para um site externo do evento do ponto turistico
    
    ONIBUSPONTOTURISTICO: Tabela que armazena os onibus municípais que trafegam próximo ao ponto turistico
    
    ONIBUS: Tabela que armazena os dados dos onibus municipais públicos
    - idonibus: campo que identifica o onibus
    - numero_linha: campo que informa o numero da linha do onibus
    - nome_linha: campo que descreve o nome da linha do onibus
    - sistema_transporte: campo que informa qual o tipo de sistema do transporte público (transcol, grande vitoria, seletivo)
    
    ARQUIVO: Tabela que armazena os arquivos dos pontos turisticos do tipo imagem, video, texto inseridos pelos usuarios do sistema
    - idarquivo: campo que identifica o arquivo
    - tipo_arquivo: campo que informa o tipo de arquivo a ser armazenado(imagem, video, txt)
    - endereco_arquivo: campo que identifica o endereço do arquivo no servidor
    - dt_envio: campo que informa a data de envio do arquivo

#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3):
    
    O principal fluxo de dados no sistema é o que disponibiliza os dados de um determinado local para o usuário. Neste fluxo quando um Ponto Turístico é buscado ele está relacionado com  dados da tabela PontoTuristico, Evento, OnibusPontoTuristico, PontoTuristicoAvaliacao, Onibus e Arquivos onde contém um conjuntos de informação que são responsaveis por montar a informação completa sobre o Ponto Turistico.
    Outro fluxo importante é o cadastro de Usuário. Neste fluxo de dados, os dados são especificados de acordo com  tipo de usuário do sistema que poderá ser Turista ou Empreendimento e assim o fluxo de dado terá ação de acordo com o tipo de usuário logado no sistema.
    
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3):
    
    As tabelas que vão conter mais dados são : USUARIO, PONTOTURISTICO, PONTOTURISTICOAVALIACAO, EVENTO, ONIBUSPONTOTURISTICO,ARQUIVO,HISTORICOVISITA.
    
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    
    As tabelas mais importantes para o sistema são : USUARIO,TURISTA,PONTOTURISTICO,PONTOTURISTICOAVALIACAO,HISTORICOVISITA.

### 6.	MODELO LÓGICO <br> 

![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/L%C3%B3gicoReduzido_Atual.png "Modelo Lógico")


### 7.	MODELO FÍSICO<br>

![ Modelo Fisico ](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/MODELO_FISICO.sql?raw=true " Modelo Fisico do EsTour ")
<br>

>## Marco de Entrega 01 em: 07/10/2019<br>
<br><br> 

### 8.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

![Inserts com os Dados do EsTour - (DROP + CREATE + INSERT INTO)](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/INSERCAO_DADOS_DROP_CREAT_INSERT.sql?raw=true " Inserts Modelo Fisico do EsTour ")

<br>

### 9.	TABELAS E PRINCIPAIS CONSULTAS<br>
<br>

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

>## CONSULTAS WILLIAN


<br><br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

a) 4 consultas com filtro where.
![Código SQL 1- Avaliação do ponto turistico](https://github.com/ESTour/trabalho_bd1/blob/master/arquivos/alexandre_where_9_2_1.sql?raw=true "Código OPERADORES LÓGICOS 1")
   <br>
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/alexandre_where_9_2_1.png"Consulta filtro where 1")
 <br>


<br><br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
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

>## CONSULTAS WILLIAN



	
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

<br><br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

    a) 5 consultas que envolvam like ou ilike
 
>## CONSULTAS WILLIAN


<br><br>

    b) Criar uma consulta para cada tipo de função data apresentada em aula (7 consultas)

>## CONSULTAS ALEXANDRE


<br><br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## CONSULTAS WILLIAN


<br><br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado (3 consultas)

>## CONSULTAS CAROLINA


<br><br>

        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho (3 consultas)

>## CONSULTAS ALEXANDRE



<br><br>

>## Marco de Entrega 02 em: 21/10/2019<br>
<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>


#### 9.11 Relatórios e Gráficos 
    a)análises e resultados provenientes do banco de dados

>## Marco de Entrega 03 em: 04/11/2019<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
#### a) Pontos Chave do MINI-MUNDO
#### b) 5 principais tabelas/fluxos do sistema
#### c) Perguntas que podem ser respondidads com o sistema proposto
#### d) Modelo Conceitual
#### e) Modelo Lógico
#### f) Relatórios e Gráficos mais importantes para o sistema (mínimo 5) 
#### --> Tempo de apresentação 10 minutos


### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

>## Marco de Entrega 04 em: 18/11/2019<br>


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


