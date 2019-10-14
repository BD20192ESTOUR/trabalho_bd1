DROP TABLE IF EXISTS USUARIO CASCADE;
DROP TABLE IF EXISTS PONTOTURISTICO CASCADE;
DROP TABLE IF EXISTS EVENTO CASCADE;
DROP TABLE IF EXISTS ONIBUS CASCADE;
DROP TABLE IF EXISTS TURISTA CASCADE;
DROP TABLE IF EXISTS PONTOTURISTICOAVALIACAO CASCADE;
DROP TABLE IF EXISTS HISTORICOVISITA CASCADE;
DROP TABLE IF EXISTS ONIBUSPONTOTURISTICO CASCADE;


CREATE TABLE USUARIO (
    idusuario SERIAL PRIMARY KEY,
    tipo_usuario VARCHAR(20),
    nome VARCHAR(300),
    email VARCHAR(100),
    senha VARCHAR(30)
);

CREATE TABLE PONTOTURISTICO (
    idpontoturistico SERIAL PRIMARY KEY,
    idusuario INT,
    tipo_pontoturistico VARCHAR(10),
    nome_pontoturistico VARCHAR(400),
    descricao TEXT,
    publico_alvo VARCHAR(100),
    tipo_ambiente VARCHAR(100),
    tipo_logradouro VARCHAR(10),
    logradouro VARCHAR(300),
    numero INT,
    bairro VARCHAR(300),
    municipio VARCHAR(200),
    cep VARCHAR(12)
);

CREATE TABLE EVENTO (
    idevento SERIAL PRIMARY KEY,
    idpontoturistico INT,
    descricao_evento TEXT,
    dt_evento TIMESTAMP,
    link_evento TEXT
);

CREATE TABLE ONIBUS (
    idonibus SERIAL PRIMARY KEY,
    numero_linha VARCHAR(15),
    nome_linha VARCHAR(200),
    sistema_transporte VARCHAR(40)
);

CREATE TABLE TURISTA (
    idturista SERIAL PRIMARY KEY,
    idusuario INT,
    dt_nascimento DATE,
    sexo VARCHAR(10)
);

CREATE TABLE PONTOTURISTICOAVALIACAO (
    idpontoturisticoavaliacao SERIAL PRIMARY KEY,
    idturista INT,
    idpontoturistico INT,
    comentario TEXT,
    nota NUMERIC,
    dt_avaliacao TIMESTAMP
);

CREATE TABLE HISTORICOVISITA (
    idhistoricovisita SERIAL PRIMARY KEY,
    idturista INT,
    idpontoturistico INT,
    dt_visita TIMESTAMP
);

CREATE TABLE ONIBUSPONTOTURISTICO (
    idonibus INT,
    idpontoturistico INT
);

ALTER TABLE PONTOTURISTICO ADD CONSTRAINT FK_PONTOTURISTICO_2
    FOREIGN KEY (idusuario)
    REFERENCES USUARIO (idusuario)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE EVENTO ADD CONSTRAINT FK_EVENTO_2
    FOREIGN KEY (idpontoturistico)
    REFERENCES PONTOTURISTICO (idpontoturistico)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE TURISTA ADD CONSTRAINT FK_TURISTA_2
    FOREIGN KEY (idusuario)
    REFERENCES USUARIO (idusuario)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE PONTOTURISTICOAVALIACAO ADD CONSTRAINT FK_PONTOTURISTICOAVALIACAO_2
    FOREIGN KEY (idturista)
    REFERENCES TURISTA (idturista)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE PONTOTURISTICOAVALIACAO ADD CONSTRAINT FK_PONTOTURISTICOAVALIACAO_3
    FOREIGN KEY (idpontoturistico)
    REFERENCES PONTOTURISTICO (idpontoturistico)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE HISTORICOVISITA ADD CONSTRAINT FK_HISTORICOVISITA_2
    FOREIGN KEY (idpontoturistico)
    REFERENCES PONTOTURISTICO (idpontoturistico)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE HISTORICOVISITA ADD CONSTRAINT FK_HISTORICOVISITA_3
    FOREIGN KEY (idturista)
    REFERENCES TURISTA (idturista)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONIBUSPONTOTURISTICO ADD CONSTRAINT FK_ONIBUSPONTOTURISTICO_1
    FOREIGN KEY (idonibus)
    REFERENCES ONIBUS (idonibus)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONIBUSPONTOTURISTICO ADD CONSTRAINT FK_ONIBUSPONTOTURISTICO_2
    FOREIGN KEY (idpontoturistico)
    REFERENCES PONTOTURISTICO (idpontoturistico)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;



INSERT INTO USUARIO VALUES
(DEFAULT,'Turista','Willian João Daniel','willianirl639@gmail.com','12345'),
(DEFAULT,'Turista','Alexandre Jastrow','jastrow@gmail.com','12345'),
(DEFAULT,'Turista','Carolina de Souza','carolina.wuu@gmail.com','12345'),
(DEFAULT,'Turista','Fernando Pessoa','ferpessoa@hotmail.com','12345'),
(DEFAULT,'Turista','Machado de Assis','assismachado@gmail.com','12345'),
(DEFAULT,'Empreendimento','Fluente','produtorfluente@gmail.com','12345'),
(DEFAULT,'Empreendimento','Sofá da Hebe','sofahebe@gmail.com','12345'),
(DEFAULT,'Empreendimento','Shopping Vitoria','shoppingvitoria@gmail.com','12345'),
(DEFAULT,'Empreendimento','Shopping MontSerrat','shoppingmontserrat@gmail.com','12345'),
(DEFAULT,'Empreendimento','Restaurante Enseada','enseada@gmail.com','12345'),
(DEFAULT,'Empreendimento','admin','estour@mail.com','6666'),
(DEFAULT,'Turista','Kaio Fabio','kfblol@gmail.com','12345'),
(DEFAULT,'Turista','Renato Lopes','renatim_bsi@gmail.com','12345'),
(DEFAULT,'Turista','Mayke Souza','m.souza@gmail.com','12345'),
(DEFAULT,'Empreendimento','Rota Eventos','rota@gmail.com','12345'),
(DEFAULT,'Turista','Moises Savedra Omena','moises.omena@ifes.br','12345'),
(DEFAULT,'Turista','Carlos Lins','carlos@ifes.br','12345'),
(DEFAULT,'Empreendimento','Máxima Eventos','contatomaxima@gmail.com','12345'),
(DEFAULT,'Empreendimento','Win eventos','winespsanto@gmail.com','12345');



INSERT INTO PONTOTURISTICO VALUES
(DEFAULT,6,'Privado','Fluente','As festas são muito criativas, o ambiente é maravilhoso e a galera é bem de boa. Um dos melhores lugares pra se divertir na Grande Vitória','Adultos','Danceteria','Avenida','Saturnino Rangel Mauro',505,'Jardim da Penha','Vitória','29060-770'),

(DEFAULT,7,'Privado','Sofá da Hebe','Sempre movimentado e convidativo para estar com amigos a qualquer dia da semana, melhor custo benefício sem frescuras da região','Amigos','Bar','Rua','Artur Czartorisk',661,'Jardim da Penha','Vitória','29060-500'),

(DEFAULT,8,'Privado','Shopping Vitoria','O Shopping Vitória alia beleza arquitetônica, valorização da paisagem natural e localização privilegiada, ao que há de mais moderno em produtos e serviços','Familia','Shopping',	'Avenida','Américo Buaiz',200,'Enseada do Suá','Vitória','29050-902'),

(DEFAULT,9,'Privado','Shopping MontSerrat','Um empreendimento moderno e completo, que agrega atividades comerciais e opções de entretenimento e lazer em um só lugar. Possui 14.000m² de Área Bruta Locável, além de estacionamento totalmente coberto com mais de 800 vagas. A Praça de alimentação conta com diversas opções e no coração do centro de compras há uma Praça de Eventos que sempre oferece uma atração diferente. Próximo ao maior terminal rodoviário do estado e de fácil acesso','Familia','Shopping','Avenida','Eldes Scherrer Souza',2162,'Colina de Laranjeiras','Serra','29167-080'),

(DEFAULT,10,'Privado','Restaurante Enseada','Um restaurante onde tanto a carne, quanto o peixe são maravilhosos. Com a  vista deliciosa para a praia de Manguinhos, local ideal para curtir um dia tranquilo','Familia','Restaurante','Avenida','Atapoã',3,'Manguinhos','Serra','29173-000'),

(DEFAULT,11,'Público','Convento da Penha','Num penhasco de 154 metros de altitude e localização privilegiada a 500 metros do mar  que ostenta no seu entorno imponente fragmento da mata atlântica  está edificado o Santuário de Nossa Senhora da Penha, fundado por Frei Pedro Palácios','Familia','Igreja','Rua','Vasco Coutinho',0,'Prainha','Vila Velha','29100-231'),

(DEFAULT,11,'Público','Praia da Costa','Com toda infraestrutura muito bem montada para o turismo, quem chega no local encontra hotéis e pousadas para todos os bolsos, bons restaurantes, bares com a deliciosa comida capixaba e cerveja sempre gelada e muita badalação quando a noite cai','Amigos','Praia','Avenida','Antônio Gil Veloso',0,'Praia da Costa','Vila Velha','29101-011'),

(DEFAULT,11,'Público','Praia do Morro',	'Praia calma de águas claras com uma boa infraestrutura de calçadão, comércio e estacionamento. No verão costuma ser difícil estacionar devido a grande procura no local','Familia','Praia','Avenida','Beira Mar',0,'Praia do Morro','Guarapari','29216-430'),

(DEFAULT,11,'Público','Praia dos Padres','Uma praia realmente bonita que ainda consegue preservar sua beleza natural! Por ficar quase escondida por rochedos e ter um único acesso, a Praia dos Padres conserva uma mata ao redor que fornece sombra e um lindo cenário exótico para seus visitantes','Amigos','Praia','Rua','Onze',0,'Meaípe','Guarapari','29206-500'),

(DEFAULT,11,'Público','Praia de Manguinhos','É um balneário bucólico, conhecido por sua pequena vila de pescadores,  situada a cerca de 20 km de Vitória, manguinhos também conta com vários restaurantes que atendem os turistas e nativos, tradicionalmente especializados na culinária capixaba (moquecas capixabas e outros pratos típicos)','Familia','Praia','Avenida','Atapoã',0,'Manguinhos','Serra','29173-000'),

(DEFAULT,11,'Público','Praia de Jacaraipe','Balneário de praia maravilhosa é jacaraipe, povo hospitaleiro e alegre, a praia é bem provida de restaurantes, lojinhas, bancos e supermercados, agua as vezes bem clara e faixa de areia bem definida, ótimo para bons mergulhos e aproveitar o sol, para quem gosta, a praia do solemar é otima para surf','Familia','Praia','Rua','C',0,'Parque Jacaraipe','Serra','29172-635'),

(DEFAULT,11,'Público','Praia de Bicanga','A Praia de Bicanga é bem tranquila,lugar bom para levar crianças ,pois sus ondas quebram serenamente nas areias.Tem vários quiosques ,barraquinhas que servem comidas a base de peixe e frutos do mar,inclusive a famosa casquinha de Siri, que é saborosíssima, mas outros delicias também são servidos com tempero bem caseiro','Familia','Praia','Avenida','Beira Mar',0,'Bicanga','Serra','29164-800'),

(DEFAULT,11,'Público','Praia Curva da Jurema','Possui uma estrutura de quiosques padronizados e com urbanismo trabalhado, que servem os tradicionais petiscos da culinária capixaba. O local também é muito procurado pelos adeptos do Jet ski, esportes à vela, barcos e lanchas.A Curva da Jurema é um ponto de encontro e lazer de Vitória. À noite a praia se transforma em um local de encontro de jovens, com uma programação diferente a cada dia da semana. Encontra-se também nesta praia uma escola de vela municipal, uma ciclovia e um calçadão',	'Amigos','Praia','Avenida','Américo Buaiz',0,'Enseada do Suá','Vitória','29050-902'),

(DEFAULT,11,'Público','Praia Secreta','A praia secreta tem este nome por que por anos o local ficou impedido de ser visitado devido um grande muro feito pela iniciativa privada, que ali iria fazer um resort. Após abrirem acesso à população a praia (que antes não havia acesso) passou a ser mais uma opção aos turistas.A praia tem águas calmas, boa temperatura, é curta e tem ambulantes vendendo bebidas e comidas','Amigos','Praia','Rua','Santa Luzia',0,'Praia da Costa','Vila Velha','29101-100'),

(DEFAULT,11,'Público','Farol de Santa Luzia','Área da marinha do Brasil, e residência de alguns oficiais da marinha, abriga um mini museu que conta a história do farol, mas a atração mesmo é o antigo farol','Familia','Farol','Rua','Santa Luzia',2,'Praia da Costa','Vila Velha','29101-100'),

(DEFAULT,11,'Público','Igreja Dos Reis Magos','A Igreja dos Reis Magos é um templo católico. É considerada um importante exemplo da arquitetura jesuítica, realizada no estilo chão, uma variante do Maneirismo português','Familia','Igreja','Trevo','Reis Magos II',0,'Nova Almeida','Serra','29182-528'),

(DEFAULT,11,'Público','Palácio Anchieta','Palácio Anchieta é a sede do poder executivo do estado do Espírito Santo. O palácio localiza-se exatamente a frente do Porto de Vitória, na entrada da Cidade Alta, um dos bairros mais antigos da cidade','Familia','Palácio','Rua','Nestor Gomes',0,'Centro','Vitória','29015-220'),

(DEFAULT,11,'Público','Parque da Fonte Grande','Lugar de beleza única e vista que não tem em nenhum lugar de Vitória, sendo possível ver de dois mirantes duas belas paisagens, ótimo para subir a pé, de bike ou de carro. Possui seguranças. Falta apenas algo para servir alimentação, mas acredito que seja proposital para conservar mais ainda a natureza','Familia','Parque','Rua','João Ferreira de Souza','62','Fradinhos','Vitória','29042-620'),

(DEFAULT,11,'Público','Praia de Camburi','Calçada maravilhosa para caminhadas em família. Quiosques para tomar uma cervejinha na praia acompanhado de um excelente petisco. Existem pontos onde ímproprios para banho, há a prática de vôlei e frescobol na areia da praia','Familia','Praia','Avenida','Dante Michelini',0,'Jardim Camburi','Vitória','29066-430'),

(DEFAULT,11,'Público','Praia da Bacutia','Praia linda e frequentada por jovens e gente bonita, água calma e gostosa com opcoes de estacionamento e ótimo local para uma boa caminhada','Amigos','Praia','Avenida','Viña del Mar',0,'Enseada Azul','Guarapari','29206-170');



INSERT INTO EVENTO VALUES 
(DEFAULT,1,'Hallowen frenético','2019-10-19 22:00:00','http://www.shoppingmoxuara.com.br/exposicao-projeto-tamar/'),
(DEFAULT,1,'To sofrendo mais to sarrando','2019-10-20 22:00:00','http://descubraoespiritosanto.es.gov.br/pt/evento/festival-maior-cafe-mundo.html'),
(DEFAULT,1,'Beyonce Queen Pop','2019-10-21 22:00:00','http://soues.com.br/plus/modulos/agenda/ver.php?id=100944&categoria=1'),
(DEFAULT,1,'Só 90','2019-10-22 22:00:00','http://www.multiplacemais.com.br/agenda/jorge-mateus/'),
(DEFAULT,1,'Eletromusic','2019-10-23 22:00:00','http://www.soues.com.br/plus/modulos/agenda/ver.php?categoria=1&id=100984'),
(DEFAULT,4,'Décimo Oitavo Espírito Santo Restaurante Week','2019-10-24 22:00:00','http://soues.com.br/plus/modulos/agenda/ver.php?id=101087&categoria=1'),
(DEFAULT,4,'Corrida maluca','2019-10-25	14:00:00','http://www.shoppingpraiadacosta.com.br/lazer/'),
(DEFAULT,3,'Expor pet','2019-10-26 10:00:00','https://site.blueticket.com.br/evento/27341'),
(DEFAULT,3,'Vitória Moda 2019','2019-10-27 09:00:00','https://clubealvarescabral.com.br/'),
(DEFAULT,5,'Caranguejada e musica ao vivo','2019-10-28 11:00:00','http://www.multiplacemais.com.br/agenda/bruno-marrone-e-raca-negra/'),
(DEFAULT,6,'Romaria das Mães','2020-04-29 07:00:00','https://aves.org.br/noticia/romaria-das-maes-ao-convento-da-penha-2'),	
(DEFAULT,8,'Jesus Vida Verão','2020-01-12 14:00:00','https://jesusvidaverao.com.br/'),
(DEFAULT,3,'Abertura da Subway','2019-11-03 09:00:00','http://www.shoppingvitoria.com.br/'),
(DEFAULT,2,'Palestra com Silvio Santos','2019-12-04 10:00:00','https://www.facebook.com/pages/Sofa-Da-Hebe/918243008201410'),
(DEFAULT,5,'Aniversário 10 anos Restaurante Enseada','2019-12-21 11:00:00','http://www.restauranteenseada.com.br/'),
(DEFAULT,4,'Artesanato Expo','2019-12-10 09:00:00','http://www.shoppingmontserrat.com.br/'),
(DEFAULT,11,'Campeonato Nacional de Surf','2019-12-05 09:00:00','https://globoesporte.globo.com/radicais/surfe/mundial-de-surfe/'),
(DEFAULT,16,'Vigília dos Solteiros','2019-12-13 07:00:00','https://aves.org.br/noticia/vigilia-eucaristica-com-os-jovens-na-festa-da-penha'),
(DEFAULT,13,'Campeonato Mundial de Pipa','2019-12-05 09:00:00','https://www.facebook.com/abraspepipa2015/posts/1749649908591767/'),
(DEFAULT,1,'Just Dance Reveillon','2019-12-31 20:00:00','http://www.shoppingmoxuara.com.br/exposicao-projeto-tamar/');


INSERT INTO ONIBUS VALUES 
(DEFAULT,'501','T.Vila Velha','Transcol'),
(DEFAULT,'504','T.Itacibá','Transcol'),
(DEFAULT,'507','T.Vila Velha','Transcol'),
(DEFAULT,'572','T.São Torquato','Transcol'),
(DEFAULT,'503','T.Vila Velha','Transcol'),
(DEFAULT,'523','T.Jardim America','Transcol'),
(DEFAULT,'508','T.Vila Velha','Transcol'),
(DEFAULT,'635','Prainha','Transcol'),
(DEFAULT,'1801','JACARAIPE,SAMBÃO DO POVO - VIA LARANJEIRAS','Seletivo'),
(DEFAULT,'1603','ITAPARICA  / SAMBÃO DO POVO - VIA  P.ITAPOÃ/ SHOPPING VITÓRIA','Seletivo'),
(DEFAULT,'651','T. VILA VELHA / PRAIA DA COSTA','Transcol'),
(DEFAULT,'848','BALNEÁRIO DE CARAPEBUS / T. CARAPINA VIA OCEANIA','Transcol'),
(DEFAULT,'662','T. VILA VELHA / PRAIA DA COSTA VIA CREFES - CIRCULAR','Transcol'),
(DEFAULT,'884','BICANGA / T. LARANJEIRAS VIA BALNEÁRIO CARAPEBUS/OCEANIA/LARANJEIRAS','Transcol'),
(DEFAULT,'561','T. JACARAIPE / T. CAMPO GRANDE VIA DANTE MICHELINI/BR 262','Transcol'),
(DEFAULT,'516','T. JACARAIPE / T. IBES VIA T. CARAPINA/MARUIPE/T. SÃO TORQUATO','Transcol'),
(DEFAULT,'505','T. LARANJEIRAS / T. ITACIBÁ VIA CAMBURI/BEIRA MAR','Transcol'),
(DEFAULT,'515','T. LARANJEIRAS / T. CAMPO GRANDE VIA BEIRA MAR','Transcol'),
(DEFAULT,'500','T. VILA VELHA / T. ITACIBÁ VIA 3ª PONTE','Transcol'),
(DEFAULT,'559','T. LARANJEIRAS / T. SÃO TORQUATO VIA T. CARAPINA/RETA DA PENHA','Transcol'),
(DEFAULT,'812','SERRA DOURADA 2','Transcol'),
(DEFAULT,'813','SERRA DOURADA 3','Transcol'),
(DEFAULT,'510','T.VILA VELHA / T. CARAPINA','Transcol'),
(DEFAULT,'820','T. JACARAIPE / T. CARAPINA','Transcol'),
(DEFAULT,'882','T. JACARAIPE / T. CARAPINA','Transcol'),
(DEFAULT,'854','PRAIA GRANDE / T. JACARAIPE','Transcol'),
(DEFAULT,'873','PARQUE RESIDENCIAL NOVA ALMEIDA / T. JACARAIPE','Transcol'),
(DEFAULT,'518','T. CARAPINA / T. IBES','Transcol'),
(DEFAULT,'535','T. CARAPINA / T. CAMPO GRANDE','Transcol'),
(DEFAULT,'7','PORTO GRANDE / MEAIPE','Seletivo');


INSERT INTO TURISTA VALUES 
(DEFAULT,1,'1995-08-22','Masculino'),
(DEFAULT,2,'1992-02-01','Masculino'),
(DEFAULT,3,'1994-03-24','Feminino'),
(DEFAULT,4,'1988-06-13','Masculino'),
(DEFAULT,5,'1989-06-21','Masculino'),
(DEFAULT,12,'2003-06-22','Masculino'),
(DEFAULT,13,'2004-06-23','Masculino'),
(DEFAULT,14,'2005-06-24','Masculino'),
(DEFAULT,17,'2009-06-25','Masculino'),
(DEFAULT,18,'2010-06-26','Masculino');


INSERT INTO PONTOTURISTICOAVALIACAO VALUES 
(DEFAULT,1,1,'Não gostei do atendimento',5,'2019-10-01 15:00:00'), 
(DEFAULT,4,1,'Local muito movimentado',6,'2019-10-02 15:00:00'),
(DEFAULT,2,10,'Pouca oferta de onibus',7,'2019-10-03 15:00:00'),
(DEFAULT,2,1,'Ambiente jovem e dançante',8,'2019-10-04 15:00:00'),
(DEFAULT,1,5,'Lugar muito tranquilo e natureza linda',9,'2019-10-05 15:00:00'),
(DEFAULT,3,5,'Otima praia',10,'2019-10-06 15:00:00'),
(DEFAULT,2,2,'Otimas bebidas e preço justo',9,'2019-10-07 15:00:00'),
(DEFAULT,3,2,'Ambiente agradavel',8,'2019-10-08 15:00:00'),
(DEFAULT,4,2,'Adorei o lugar, irei voltar',10,'2019-10-09 15:00:00'),
(DEFAULT,5,2,'Excelente para passear com amigos',10,'2019-10-10 15:00:00'),
(DEFAULT,6,20,'Praia com publico jovem e muito cheia nos finais de semana',6,'2019-09-11 15:00:00'),
(DEFAULT,7,20,'Praia ótima para passear com a galera da faculdade',10,'2019-10-01 15:00:00'),
(DEFAULT,8,19,'Praia poluída impropria pra banho',5,'2019-09-07 15:00:00'),
(DEFAULT,9,18,'Parque ótimo para caminhar e apreciar a natureza',9,'2019-09-04 15:00:00'),
(DEFAULT,10,17,'Palácio com arquitetura antiga e classica muito bonito para tirar fotos',10,'2019-09-30 15:00:00'),
(DEFAULT,10,15,'Farol antigo com vista para o mar, bom para apreciar a paisagem',7,'2019-09-25 15:00:00'),
(DEFAULT,5,16,'Igreja antiga com uma linda paisagem para o mar',8,'2019-10-06 15:00:00'),
(DEFAULT,6,14,'Praia boa para ir com amigos zuar, muito movimentada e a agua é tranquila e verde clara, muito bonita',9,'2019-10-12 15:00:00'),
(DEFAULT,7,12,'Praia de águas calma, bom para estar com a familia',10,'2019-10-13 14:00:00'),
(DEFAULT,8,13,'Lugar muito movimentado e quisques com variedades de produtos, mas a praia não é muito bonita',5,'2019-10-01 15:00:00');


INSERT INTO HISTORICOVISITA VALUES 
(DEFAULT,1,1,'2019-09-30 15:00:00'),
(DEFAULT,1,2,'2019-10-01 16:00:00'),
(DEFAULT,1,3,'2019-10-02 17:00:00'),
(DEFAULT,2,1,'2019-10-03 15:00:00'),
(DEFAULT,2,2,'2019-10-04 16:00:00'),
(DEFAULT,2,3,'2019-10-05 14:00:00'),
(DEFAULT,2,4,'2019-10-06 14:00:00'),
(DEFAULT,3,4,'2019-10-07 14:00:00'),
(DEFAULT,3,5,'2019-10-02 15:00:00'),
(DEFAULT,3,1,'2019-10-03 16:00:00'),
(DEFAULT,5,11,'2019-10-04 14:00:00'),
(DEFAULT,5,12,'2019-09-05 17:00:00'),
(DEFAULT,6,13,'2019-09-06 18:00:00'),
(DEFAULT,6,14,'2019-10-07 19:00:00'),
(DEFAULT,7,15,'2019-10-08 14:00:00'),
(DEFAULT,7,16,'2019-08-09 15:00:00'),
(DEFAULT,8,17,'2019-08-10 14:00:00'),
(DEFAULT,8,18,'2019-07-11 15:00:00'),
(DEFAULT,9,19,'2019-07-12 17:00:00'),
(DEFAULT,10,20,'2019-10-13 14:00:00'),
(DEFAULT,10,20,'2019-10-14 16:00:00');


INSERT INTO ONIBUSPONTOTURISTICO VALUES 
(1,4),
(1,6),
(1,7),
(2,1),
(2,2),
(2,3),
(2,9),
(3,10),
(3,7),
(3,6),
(3,4),
(4,3),
(6,8),
(6,7),
(6,3),
(6,5),
(10,1);












