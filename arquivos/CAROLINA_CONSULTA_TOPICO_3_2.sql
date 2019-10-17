/* Selecionar os pontos turisticos onde onde o tipo de ambiente não seja praia, nem shopping e nem igreja */

SELECT tipo_pontoturistico,nome_pontoturistico,publico_alvo,tipo_ambiente,concat(tipo_logradouro,' ',logradouro,' - ',numero,' - ',bairro,' - Cep: ',cep,' - ',municipio) AS endereco
FROM pontoturistico where tipo_ambiente NOT ilike 'praia' AND tipo_ambiente NOT ilike 'shopping' AND tipo_ambiente NOT ilike 'igreja' ORDER BY tipo_ambiente;

