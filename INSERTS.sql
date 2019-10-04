INSERT INTO PESSOA VALUES(default, 'Pessoa', 'Alexandre', '22-07-1992', 'M', 'alexandre@gmail.com', '123465');
INSERT INTO PESSOA VALUES(default, 'Pessoa', 'Carolina', '24-03-1994', 'F', 'carolina@hotmail.com', '123as5');
INSERT INTO PESSOA VALUES(default, 'Pessoa', 'Wilian', '17-07-1992', 'M', 'wilian@gmail.com', '123fdf5');
INSERT INTO PESSOA VALUES(default, 'Pessoa', 'jose', '30-07-1992', 'M', 'jose@yahoo.com.br', 'ss33dff');
INSERT INTO PESSOA VALUES(default, 'Pessoa', 'Rosa', '05-07-1992', 'F', 'Rosa@gmail.com', '22fssa22');
INSERT INTO PESSOA VALUES(default, 'Pessoa', 'maria', '01-07-1992', 'F', 'maria@outlook.com', 'sgsg58585');
INSERT INTO PESSOA VALUES(default, 'Pessoa', 'Predo', '11-07-1992', 'M', 'Predo@gmail.com', '244585vbff');
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Religioso','Igreja dos Reis Magos', 'Família', 'Quente', NULL, 'Concluída  em 1580, tombada pelo IPHAN e recentemente reconstruída, é um dos melhores exemplos da arquitetura jesuítica no Brasil.Localizada  em Nova Almeida, a Igreja e Residência Reis Magos situa-se em região estratégica', 'igrejadosreismagos@gmail.com', 'igreja123465', 'Rua','Nova Almeida Travessa Reis Magos', NULL, '29160-674');
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Parque','Parque da Cidade', 'Família', 'Quente', NULL,  'Centro de Estudo, Pesquisas e Conservação de Bromeliaceae e outras Herbáceas do Municipio da Serra. O projeto é destinado à Educação Ambiental, onde o visitante encontra o Bromeliário, o viveiro de plantas.', NULL, NULL, 'Avenida','Norte Sul', NULL, '29169-994');
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Parque','Parque Pedra da Cebola', 'Família', 'Quente', NULL, 'O Parque Pedra da Cebola possui exemplares de Mata de Restinga e de Mata Atlântica e vegetação rupestre nativa do local, que abrigam pequenos répteis e aves. Com área superior a 100.000 m², o parque também conta com jardim oriental e um mirante.', 'pedradacebola@gmail.com', 'cebolaf5', 'Rua','Entre as Ruas Ana Vieira Mafra, João Baptista Celestino', NULL, '29066-140');
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Parque','Parque Botânico Vale', 'Família', 'Quente', NULL, 'O Parque Botânico Vale tem 33 hectares de área  o equivalente a 33 campos de futebol. Parte do Cinturão Verde da Vale, é um espaço de lazer e, principalmente, uma unidade de conservação da Mata Atlântica, uma das mais importantes florestas do país.', 'parquebotanicovale@vale.com.br', 'vale36325');
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Praia','Curva da Jurema', 'Família', 'Quente', NULL, 'Curva da Jurema é uma praia da cidade de Vitória, Brasil. Está localizada na zona leste da Ilha de Vitória, entre a Ilha do Boi e a Praça dos Desejos. Dela é possível visualizar a Ilha do Frade.', NULL, NULL, 'Avenida','Avenida dos Expedicionários', NULL, '29090-490');
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Religioso','Convento da Penha', 'Família', 'Quente', NULL, 'O Convento da Penha é um dos santuários religiosos mais antigos do Brasil, localizado no município de Vila Velha, estado do Espírito Santo.', 'conventodapenha@outlook.com', 'dapenha0420', 'Avenida','Américo Buaiz', NULL, NULL);
INSERT INTO EMPREENDIMENTO VALUES(default, 'Empreendimento', 'Praia','Praia da Costa', 'Família', 'Quente', NULL, 'A praia da Costa é uma praia para toda a família, possui uma parte com águas tranquilas para a criançada, águas mais agitadas para os surfistas de plantão e uma orla bem cuidada e uma vasta faixa de areia. Suas águas são bem geladas mas limpa.', NULL, NULL, 'Avenida','Antônio Gil Veloso', NULL, NULL);
INSERT INTO AVALIACAOLOCAL VALUES(default, 5, 3,'local feio', 1,' 22-09-2019', '12:05:06');
INSERT INTO AVALIACAOLOCAL VALUES(default, 2, 5,'da hora ae manolo', 5,' 15-09-2019', '15:55:32');
INSERT INTO AVALIACAOLOCAL VALUES(default, 7, 1,'mais ou menos', 3, '05-09-2019', '12:33:17');
INSERT INTO HISTORICOVISITA VALUES(default, 5, 3,'22-09-2019', '10:11:06');
INSERT INTO HISTORICOVISITA VALUES(default, 2, 5,'15-09-2019', '12:10:32');
INSERT INTO HISTORICOVISITA VALUES(default, 7, 1,'05-09-2019', '09:20:17');
INSERT INTO EVENTO VALUES(default, 'Maior festa religiosa do estado do Espirito Santo', '21-04-2019', '06:00:00');
INSERT INTO EVENTO VALUES(default, 'melhor virada de ano do estado',' 31-12-2019', '20:00:00');
INSERT INTO EVENTO VALUES(default, 'melhor virada de ano do estado', '05-09-2019', '22:00:00');
INSERT INTO EMPREENDIMENTO_EVENTO VALUES (default, 6, 1);
INSERT INTO EMPREENDIMENTO_EVENTO VALUES (default, 5, 2);
INSERT INTO EMPREENDIMENTO_EVENTO VALUES (default, 7, 3);
INSERT INTO ONIBUS VALUES(default, '528', 'De Omni Towers, vitoria - 23 min', 'Transcol');
INSERT INTO ONIBUS VALUES(default, '830', 'De Chácara Parreiral, Carapina - 55 min', 'Transcol');
INSERT INTO ONIBUS VALUES(default, '523', 'De Praça de Alimentação, vitoria - 37 min', 'Transcol');
INSERT INTO EMPREENDIMENTO_ONIBUS VALUES (default, 5, 1);
INSERT INTO EMPREENDIMENTO_ONIBUS VALUES (default, 5, 2);
INSERT INTO EMPREENDIMENTO_ONIBUS VALUES (default, 5, 3);

