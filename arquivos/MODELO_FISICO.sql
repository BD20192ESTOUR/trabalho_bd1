/* Fisico_Atual: */

CREATE TABLE USUARIO (
    idusuario SERIAL PRIMARY KEY,
    tipo_usuario VARCHAR(20),
    nome VARCHAR(300),
    email VARCHAR(150) UNIQUE,
    senha VARCHAR(20)
);

CREATE TABLE PONTOTURISTICO (
    idpontoturistico SERIAL PRIMARY KEY,
    idusuario SERIAL,
    tipo_pontoturistico VARCHAR(40),
    nome_pontoturistico TEXT,
    descricao TEXT,
    publico_alvo VARCHAR(40),
    tipo_ambiente VARCHAR(150),
    tipo_logradouro VARCHAR(20),
    logradouro VARCHAR(300),
    numero INT,
    bairro VARCHAR(300),
    municipio VARCHAR(300),
    cep VARCHAR(12)
);

CREATE TABLE EVENTO (
    idevento SERIAL PRIMARY KEY,
    idpontoturistico SERIAL,
    descricao_evento TEXT,
    dt_evento TIMESTAMP,
    link_evento TEXT
);

CREATE TABLE ONIBUS (
    idonibus SERIAL PRIMARY KEY,
    numero_linha INT,
    nome_linha VARCHAR(200),
    sistema_transporte VARCHAR(100)
);

CREATE TABLE TURISTA (
    idturista SERIAL PRIMARY KEY,
    idusuario SERIAL,
    dt_nascimento DATE,
    sexo VARCHAR(20)
);

CREATE TABLE PONTOTURISTICOAVALIACAO (
    idpontoturisticoavaliacao SERIAL PRIMARY KEY,
    idturista SERIAL,
    idpontoturistico SERIAL,
    comentario TEXT,
    nota NUMERIC,
    dt_avaliacao TIMESTAMP,
    dt_visita TIMESTAMP
);

CREATE TABLE ONIBUSPONTOTURISTICO (
    idonibus SERIAL,
    idpontoturistico SERIAL
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

ALTER TABLE ONIBUSPONTOTURISTICO ADD CONSTRAINT FK_ONIBUSPONTOTURISTICO_1
    FOREIGN KEY (idonibus)
    REFERENCES ONIBUS (idonibus)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONIBUSPONTOTURISTICO ADD CONSTRAINT FK_ONIBUSPONTOTURISTICO_2
    FOREIGN KEY (idpontoturistico)
    REFERENCES PONTOTURISTICO (idpontoturistico)
    MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;
