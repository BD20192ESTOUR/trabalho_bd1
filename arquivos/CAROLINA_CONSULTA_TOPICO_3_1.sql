/*Selecionar os pontos turisticos onde o publico alvo seja adultos ou amigos */

SELECT tipo_pontoturistico,nome_pontoturistico,publico_alvo,tipo_ambiente,concat(tipo_logradouro,' ',logradouro,' - ',numero,' - ',bairro,' - Cep: ',cep,' - ',municipio) AS endereco
FROM pontoturistico where publico_alvo ilike 'adultos' OR publico_alvo ilike 'amigos' ORDER BY publico_alvo;

