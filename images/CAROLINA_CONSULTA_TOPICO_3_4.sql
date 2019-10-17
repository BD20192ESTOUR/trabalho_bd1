
SELECT P.tipo_pontoturistico,P.nome_pontoturistico,P.publico_alvo,P.tipo_ambiente,concat(P.tipo_logradouro,' ',P.logradouro,' - ',P.numero,' - ',P.bairro,' - Cep: ',P.cep,' - ',P.municipio) AS endereco
 FROM pontoturistico P WHERE P.idpontoturistico IN (select idpontoturistico FROM pontoturisticoavaliacao GROUP BY idpontoturistico HAVING avg(nota) > 6)
 AND (publico_alvo ilike 'amigos' OR publico_alvo ilike 'adultos') AND municipio NOT ilike 'serra';