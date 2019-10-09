/* Lógico_Atual: */

CREATE TABLE USUARIO (
    idusuario SERIAL PRIMARY KEY,
    nome VARCHAR(300),
    tipo_usuario VARCHAR(20),
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
    cep VARCHAR(12),
    municipio VARCHAR(200)
  
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
    nota NUMERIC,
    comentario TEXT,
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
    ON DELETE SET NULL;
 
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
