/* Alterar o campo nome ponto turistico para nome */
ALTER TABLE pontoturistico RENAME nome_pontoturistico TO nome;


SELECT tipo_pontoturistico,nome,publico_alvo,tipo_ambiente,concat(tipo_logradouro,' ',logradouro,' - ',numero,' - ',bairro,' - Cep: ',cep,' - ',municipio) AS endereco 
FROM pontoturistico offset 3;
