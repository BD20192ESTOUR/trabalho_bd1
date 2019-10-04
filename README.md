# TRABALHO DE BANCO DE DADOS : ESTOUR
Trabalho apresentado à disciplina de Banco de Dados I do curso de Bacharelado em Sistemas de Informação do Ifes Campus Serra para avaliação.<br>
Professor: Moises Savedra Omena.<br>


# Sumário

### 1. COMPONENTES<br>
Alexandre Jastrow:alexandre.jastrow@gmail.com<br>
Carolina de Souza:carolina.wuu@gmail.com<br>
Willian João Daniel:willianirl639@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados ESTOUR
<br>e motivação da escolha realizada. <br>

> O EsTour é uma aplicação web com design responsivo que tem objetivo de auxiliar o turista a encontrar o melhor lugar para se visitar e que esteja de acordo com  o que ele está buscando no local. A aplicação mostrará aos usuários lugares para estar com a família, amigos ou mesmo estar sozinho, lugares para relaxar, conhecer o agroturismo ou se divertir na noite. Além disso, apresentará ao turista as linhas de ônibus municipais que trafegam próximo ao local visitado.<br>
 

### 3.MINI-MUNDO<br>

> Turistas visitam diferentes lugares ao longo do ano, no momento de escolher o local a ser visitado muitos recorrem ao auxílio da web para obter informações relacionadas ao turismo do local. Contudo, há poucos dados que estejam de acordo com as expectativas do turista, o que contribui para uma experiência frustrante ao visitar o lugar.<br>
A plataforma EsTour tem o objetivo de auxiliar o turista na escolha de locais a visitar, a plataforma receberá o cadastro de empreendimentos como bares, danceterias, shoppings, agroturismo, restaurantes, além de disponibilizar os pontos turísticos públicos da cidade para compor a base de dados do sistema. <br>
Os turistas poderão por meio do EsTour publicar avaliações dos locais visitados e a partir desses dados, o algoritmo de busca da plataforma mostrará os  lugares que receberam boas avaliações no topo das pesquisas, assim auxiliará os usuários na escolha do lugar ideal para ele e atrairá novos visitantes aos locais.<br>
A plataforma também permitirá que os empreendimentos cadastrados possam divulgar fotos, mini vídeos e eventos da semana que poderão ser visualizados quando o turista estiver observando as informações do lugar, isso será um diferencial para atrair pessoas a esses lugares e tornar o uso da plataforma eficiente.<br>
O Turista não precisará ter uma conta de usuário na plataforma para acessar os lugares e pontos turísticos, mas ao criar uma conta, ele terá acesso a funcionalidades como: visualização de um mapa animado com todos os lugares que foram visitados por ele; ver eventos do dia ou da semana de um determinado empreendimento; compartilhar no facebook uma publicação sobre o local onde ele está no momento.<br>
A plataforma EsTour inicialmente funcionará apenas o módulo de buscas para pontos turísticos do estado do Espírito Santo, podendo futuramente expandir para outros estados do Brasil.<br>


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/BD20192ESTOUR/trabalho_bd1/blob/master/tela_principal_estour.png "Página principal ESTour")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa ESTour](https://github.com/BD20192ESTOUR/trabalho_bd1/blob/master/TELAS_DO_SISTEMA_EsTour.pdf "ESTour")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/ESTour/trabalho_bd1/blob/master/images/modelo%20conceitual.jpg?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.

### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
   ![Modelo físico do Sistema](https://github.com/ESTour/trabalho_bd1/blob/master/modelo_fisico.sql"Modelo físico - ESTour")

>## Marco de Entrega 01 em:<br>
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
	
	https://github.com/ESTour/trabalho_bd1/blob/master/INSERTS.sql
	
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


