CREATE VIEW public_alvo AS SELECT tipo_pontoturistico,nome_pontoturistico,publico_alvo,tipo_ambiente,concat(tipo_logradouro,' ',logradouro,' - ',numero,' - ',bairro,' - Cep: ',cep,' - ',municipio) AS endereco FROM pontoturistico where publico_alvo ilike 'adultos' OR publico_alvo ilike 'amigos' ORDER BY publico_alvo;

SELECT *FROM public_alvo;