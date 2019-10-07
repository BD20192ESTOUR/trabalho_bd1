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
![Alt text](https://github.com/BD20192ESTOUR/trabalho_bd1/blob/master/tela_principal_estour.png "Página principal EsTour")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa EsTour](https://github.com/BD20192ESTOUR/trabalho_bd1/blob/master/TELAS_DO_SISTEMA_EsTour.pdf "ESTour")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

> A plataforma EsTour disponibilizará as seguintes informações/relatórios:
* Relatório que informe quais são os pontos turisticos mais bem avaliados pelos usuários da plataforma incluindo: nome do ponto turistico, a média das notas recebidas, nome do bairro e nome do município.
* Relatório que informe a quantidade de pontos turisticos públicos e privados agrupados por município incluindo: a quantidade de pontos turisticos públicos, quantidade de pontos turisticos privados e nome do município.
* Relatório que informe o histórico de visita  de um usuario agrupado por município incluindo: o nome do ponto turistico, a data da visita, a hora da visita e o nome do município.
* Relatório que informe os eventos dos pontos turisticos que irão ocorrer agrupados por município incluindo: descrição do evento, data, hora, nome do ponto turistico e município.
* Relatório que informe os usuários do tipo empreendimento cadastrados na plataforma agrupados por município incluindo: nome do usuário, descricao do empreendimento, email, município e tipo usuário.
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
### 5.MODELO CONCEITUAL<br>    
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/MODELO_CONCEITUA_ATUAL.png?raw=true "Modelo Conceitual")

#### 5.1 Validação do Modelo Conceitual
    Grupo: Vinicius, Juliano e Gabriel
    Nome do aplicativo: AppDoações
    Feedback : Bem organizado, válido. Poderia utilizar coordenadas latitude e longitude para endereço.
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    USUARIO: Tabela que armazena as informações do usuário cadastrado no EsTour
    - idusuario: campo que identifica um usuario no sistema
    - nome: campo que possui o nome completo do usuario turista ou empreendimento
    - tipo_usuario: campo que identifica qual tipo de usuário usa o sistema, usuário pode ser do tipo Turista ou Empreendimento
    - dt_nascimento: campo que possui a data de nascimento do usuário, não é obrigatorio informar
    - sexo: campo que identifica o sexo do usuário,  não é obrigatorio informar
    - email: campo que identifica o usuário ao fazer login no sistema
    - senha: campo que autentica o usuário ao fazer login no sistema
    
    PONTOTURISTICOAVALIACAO: Tabela que armazena as avaliações dos usuarios turistas em relação aos pontos turisticos visitados
    - idpontoturisticoavaliacao: campo que identifica a avalição do usuário turista no sistema
    - comentario: campo que descreve as expectativas do usuário turista
    - nota: campo que guarda a nota dada ao ponto turistico
    - dt_avaliacao: campo que guarda a data que foi feita a avaliação
    - hr_avaliacao: campo que guarda a hora que foi feita a avaliação
    
    HISTORICOVISITA: Tabela que armazena dados sobre os pontos turisticos visitados pelos usuários turistas
    - idhistoricovisita: campo que identifica o histórico de visita de um ponto turistico de um usuario turista
    - dt_visita: campo que guarda a data que foi feita a visita no ponto turistico
    - hr_visita: campo que guarda a hora que foi feita a visita no ponto turistico
    
    PONTOTURISTICO: Tabela que armazena informações dos pontos turisticos publicos e privados(empreendimentos)
    - idpontoturistico: campo que identifica o ponto turistico
    - cnpj: campo que identifica o cadastro de pessoa juridica de um ponto turistico do tipo privado
    - tipo_pontoturistico: campo que identifica se o ponto turistico é do tipo publico ou privado
    - descricao: campo que descreve o ponto turistico e suas caracteristicas
    - publico_alvo: campo que informa o tipo de público do ponto turistico
    - tipo_ambiente: campo que informa as caracteristica do ambiente do ponto turistico
    - endereco: campo que descreve a localização do ponto turistico
    - telefone: campo que descreve o contato do ponto turistico
    
    EVENTO: Tabela que armazena informações dos eventos de um determinado ponto turistico
    - idevento: campo que identifica o evento
    - descricao_evento: campo que descreve o evento e suas caracteristicas
    - dt_evento: campo que informa a data do evento
    - hr_evento: campo que informa a hora do evento
    - link_evento: campo que armazena o link para um site externo do evento do ponto turistico
    
    REDESOCIAL: Tabela que armazena dados das redes sociais do ponto turistico
    - idredesocial: campo que identifica a rede social
    - redesocial_usuario: campo que informa nome do ponto turistico na rede social informada
    - tipo_redesocial: campo que identifica qual é a rede social usada
    - link_redesocial: campo que armazena o link para a pagina web da redesocial do ponto turistico
    
    ONIBUSPONTOTURISTICO: Tabela que armazena os onibus municípais que trafegam próximo ao ponto turistico
    - idonibuspontoturistico: campo que identifica o onibus que trafega próximo ao ponto turistico
    
    ONIBUS: Tabela que armazena os dados dos onibus municipais públicos
    - idonibus: campo que identifica o onibus
    - numero_linha: campo que informa o numero da linha do onibus
    - nome_linha: campo que descreve o nome da linha do onibus
    - sistema_transporte: campo que informa qual o tipo de sistema do transporte público (transcol, grande vitoria, seletivo)
    
    ARQUIVO: Tabela que armazena os arquivos do ponto turistico do tipo imagem, video, texto inseridos pelo usuario empreendimento
    - idarquivo: campo que identifica o arquivo
    - tipo_arquivo: campo que informa o tipo de arquivo a ser armazenado(imagem, video, txt)
    - endereco_arquivo: campo que identifica o endereço do arquivo no servidor
    - dt_envio: campo que informa a data de envio do arquivo

#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    O principal fluxo de dados no sistema é o que disponibiliza os dados de um determinado local para o usuário. Neste fluxo quando um Ponto Turístico é buscado ele está relacionado com  dados da tabela Onibus e Evento onde contém informações de qual o transporte publico pegar para chegar ao local, e quais os eventos esse local tera em determinadas datas.
    outro fluxo importante é o cadastro de usuário. Neste fluxo de dados, o usuário entra com os dados através da interface gráfica e estes dados serão inseridos na tabela USUARIO.
    Por fim o fluxo de de avaliação onde cada ponto turistico é pontuado com notas disponibilizadas pelos usuaios.
    
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    As tabelas que vão conter mais dados são : USUARIO, PONTOTURISTICO, AVALIACAO, EVENTO.
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    As tabelas mais importantes para o sistema são : USUARIO, PONTOTURISTICO, AVALIACAOPONTOTURISTICO, HISTORICOVISITA e EVENTO.

### 6.	MODELO LÓGICO <br> 

![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/MODELO_LOGICO_ATUAL.png?raw=true "Modelo Lógico")


### 7.	MODELO FÍSICO<br>

https://github.com/ESTour/trabalho_bd1/blob/master/MODELO_FISICO.sql

![Estrutura do Banco de Dados da EsTour](https://github.com/discipbd1/trab01/blob/master/arquivos/MODELO_FISICO2.sql?raw=true "Estrutura do Banco de Dados - EsTour")

>## Marco de Entrega 01 em: 07/10/2019<br>
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
	
	Inserts das tabelas:
https://github.com/ESTour/trabalho_bd1/blob/master/INSERTS
	
	Destruição e recriação das tabelas:
https://github.com/ESTour/trabalho_bd1/blob/master/drop_create_insert

        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

>## Marco de Entrega 02 em:<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>


#### 9.11 Relatórios e Gráficos 
    a)análises e resultados provenientes do banco de dados

>## Marco de Entrega 03 em:<br>

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

>## Marco de Entrega 04 em:<br>


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


