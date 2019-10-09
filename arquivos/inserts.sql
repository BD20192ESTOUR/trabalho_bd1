
INSERT INTO USUARIO VALUES(default, 'Alexandre', 'Pessoa', 'alexandre@gmail.com', '123465');
INSERT INTO USUARIO VALUES(default, 'Carolina', 'Pessoa', 'carolina@hotmail.com', '123as5');
INSERT INTO USUARIO VALUES(default, 'Wilian', 'Pessoa', 'wilian@gmail.com', '123fdf5');
INSERT INTO USUARIO VALUES(default, 'jose', 'Pessoa', 'jose@yahoo.com.br', 'ss33dff');
INSERT INTO USUARIO VALUES(default, 'Rosa', 'Pessoa', 'Rosa@gmail.com', '22fssa22');
INSERT INTO USUARIO VALUES(default, 'maria', 'Pessoa', 'maria@outlook.com', 'sgsg58585');
INSERT INTO USUARIO VALUES(default, 'Predo', 'Pessoa', 'Predo@gmail.com', '244585vbff');

INSERT INTO TURISTA VALUES(default, 1, '22-07-1992', 'M');
INSERT INTO TURISTA VALUES(default, 2, '24-03-1994', 'F');
INSERT INTO TURISTA VALUES(default, 3, '17-07-1992', 'M');
INSERT INTO TURISTA VALUES(default, 4, '30-07-1992', 'M');
INSERT INTO TURISTA VALUES(default, 5, '05-07-1992', 'F');
INSERT INTO TURISTA VALUES(default, 6, '01-07-1992', 'F');
INSERT INTO TURISTA VALUES(default, 7, '11-07-1992', 'M');

INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia da Bugia', 'Simples e sem bares ao redor,
 a praia Bugia conta com vegetação de restinga em partes da areia. Ainda que não tenha grandes
 diferenciais paisagísticos, possui aquela indescritível atmosfera acolhedora de lugares distantes
 de centros urbanos.', 'Família', 'Quente', 'Alameda', 'Treze de Maio', NULL, 'Conceição da Barra', '29960-000', 'São Mateus');
 
INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia de Guriri', 'Situada na Ilha de Guriri, essa praia de águas mornas
 e cristalinas é uma das preferidas dos moradores do litoral norte do Espírito Santo.', 'Família', 'Quente', 'Rua', 'Horácio Barbosa Alves',
 NULL, 'Guriri Sul', NULL , 'São Mateus');
 
INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia Pontal do Ipiranga', 'A Praia Pontal do Ipiranga fica no município de Linhares e
 tem aproximadamente 25 quilômetros de extensão. Na região há muitas casas de veraneio, pousadas e hotéis. Portanto, o destino
 é recomendado para aquela temporada de férias de verão.', 'Família', 'Quente', 'Av', 'Saturno', NULL, 'Pontal do Ipiranga', NULL, 'Linhares');
 
INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia de Carapebus', 'A paradisíaca Praia de Carapebus fica localizada no município de Serra. Ela é
 contornada por vegetação de restinga e nas proximidades há locais de desova de tartaruga, ou seja, o contato com exemplares preservados da natureza
 é intenso.', 'Família', 'Quente', 'Av', 'Beira Mar', NULL,'Praia de Carapebus', '29164-880', 'Serra');
 
INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia de Camburi', 'Apesar de a Praia de Camburi ser imprópria para o banho,
 ela conta com ciclovia, pistas de caminhadas e alguns quiosques. É a típica praia urbana cheia de corredores, crianças
 brincando e casais de namorados passeando dia e noite.', 'Família', 'Quente', 'Av', 'Dante Michelini', NULL, 'Mata da Praia',
 '29066-430', 'Vitória');
 
INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia da Curva da Jurema', 'Esta concorrida praia de Vitória fica na região leste e agrada muitos visitantes
 pois o mar é morno e sem grandes ondas. Ela é muito procurada por quem gosta de fazer passeios de barco e andar de jet ski.', 'Família', 'Quente',
'Av', 'José Miranda Machado', NULL, 'Ilha do Boi', '29050-425', 'Vitória');

INSERT INTO PONTOTURISTICO VALUES(default, NULL, 'Praia', 'Praia da Costa', 'A Praia da Costa fica ao lado da Itapoã e é muito visitada pelos moradores de classe
 média alta de Vila Velha. Entre as mais conhecidas do Espírito Santo, a praia é cercada de hotéis e pousadas adequados a diferentes preferências e gostos.',
 'Família', 'Quente', 'Av', 'Antônio Gil Veloso', NULL, 'Praia da Costa', '29101-011', 'Vila Velha');

INSERT INTO EVENTO VALUES(default, 1, 'A melhor virada de ano do estado', '31-12-2019:22:00:00', NULL);
INSERT INTO EVENTO VALUES(default, 2, 'A melhor virada de ano do estado', '31-12-2018:20:00:00', NULL);
INSERT INTO EVENTO VALUES(default, 3, 'A melhor virada de ano do estado', '31-12-2017:17:00:00', NULL);
INSERT INTO EVENTO VALUES(default, 4, 'A melhor virada de ano do estado', '31-12-2016:21:00:00', NULL);
INSERT INTO EVENTO VALUES(default, 5, 'A melhor virada de ano do estado', '31-12-2015:20:30:00', NULL);
INSERT INTO EVENTO VALUES(default, 6, 'A melhor virada de ano do estado', '31-12-2019:19:30:00', NULL);
INSERT INTO EVENTO VALUES(default, 7, 'A melhor virada de ano do estado', '31-12-2018:18:30:00', NULL);

INSERT INTO ONIBUS VALUES(default, 572, 'T. LARANJEIRAS / T. SÃO TORQUATO VIA CAMBURI/BEIRA MAR', 'Transcol');
INSERT INTO ONIBUS VALUES(default, 523, 'T. JACARAIPE / T. JARDIM AMÉRICA VIA BEIRA MAR', 'Transcol');
INSERT INTO ONIBUS VALUES(default, 651, 'T. VILA VELHA / PRAIA DA COSTA', 'Transcol');
INSERT INTO ONIBUS VALUES(default, 848, 'BALNEÁRIO DE CARAPEBUS / T. CARAPINA VIA OCEANIA', 'Transcol');
INSERT INTO ONIBUS VALUES(default, 662, 'T. VILA VELHA / PRAIA DA COSTA VIA CREFES - CIRCULAR', 'Transcol');
INSERT INTO ONIBUS VALUES(default, 884, 'BICANGA / T. LARANJEIRAS VIA BALNEÁRIO CARAPEBUS/OCEANIA/LARANJEIRAS', 'Transcol');
INSERT INTO ONIBUS VALUES(default, 561, 'T. JACARAIPE / T. CAMPO GRANDE VIA DANTE MICHELINI/BR 262', 'Transcol');

INSERT INTO ONIBUSPONTOTURISTICO VALUES(1, 5);
INSERT INTO ONIBUSPONTOTURISTICO VALUES(2, 5);
INSERT INTO ONIBUSPONTOTURISTICO VALUES(3, 7);
INSERT INTO ONIBUSPONTOTURISTICO VALUES(4, 4);
INSERT INTO ONIBUSPONTOTURISTICO VALUES(5, 7);
INSERT INTO ONIBUSPONTOTURISTICO VALUES(6, 4);
INSERT INTO ONIBUSPONTOTURISTICO VALUES(7, 5);

INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 1, 5, 4, 'praia boa, so que impropria para o banho', '12-08-2019:12:00:00');
INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 1, 4, 5, 'excelente sem pontos negativos', '30-09-2019:09:00:00');
INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 2, 7, 3, 'bem mediano', '31-12-2018:11:35:52');
INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 3, 5, 2, 'prai bem ruim em', '20-10-2017:12:22:11');
INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 4, 7, 1, 'numca mais voltarei nessa praia #priopraiaquejafoi', '20-09-2019:08:55:05');
INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 5, 5, 5, 'melhor praia que ja foi na vida', '09-10-2019:15:35:16');
INSERT INTO PONTOTURISTICOAVALIACAO VALUES(default, 6, 4, 3, 'praia mediana', '07-10-2019:15:23:24');

INSERT INTO HISTORICOVISITA VALUES(default, 1, 5, '12-08-2019:12:00:00');
INSERT INTO HISTORICOVISITA VALUES(default, 1, 4, '30-09-2019:09:00:00');
INSERT INTO HISTORICOVISITA VALUES(default, 2, 7, '31-12-2018:11:35:52');
INSERT INTO HISTORICOVISITA VALUES(default, 3, 5, '20-10-2017:12:22:11');
INSERT INTO HISTORICOVISITA VALUES(default, 4, 7, '20-09-2019:08:55:05');
INSERT INTO HISTORICOVISITA VALUES(default, 5, 5, '09-10-2019:15:35:16');
INSERT INTO HISTORICOVISITA VALUES(default, 6, 4, '07-10-2019:15:23:24');