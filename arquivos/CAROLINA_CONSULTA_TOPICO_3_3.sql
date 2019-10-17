/* Selecionar os pontos turisticos onde o municipio seja guarapari ou serra, e tipo de ambiente seja praia e o publico alvo não seja amigos */

SELECT tipo_pontoturistico,nome_pontoturistico,publico_alvo,tipo_ambiente,concat(tipo_logradouro,' ',logradouro,' - ',numero,' - ',bairro,' - Cep: ',cep,' - ',municipio) AS endereco 
FROM pontoturistico where (municipio ilike 'guarapari' OR  municipio ilike 'serra') AND tipo_ambiente ilike 'praia' AND publico_alvo NOT ilike 'amigos' ORDER BY municipio;
