/* Ponto Turisticos que não receberam nenhuma avaliação, e publico alvo seja amigos ou o municipio não seja serra */
SELECT P.tipo_pontoturistico,P.nome_pontoturistico,P.publico_alvo,P.tipo_ambiente,concat(P.tipo_logradouro,' ',P.logradouro,' - ',P.numero,' - ',P.bairro,' - Cep: ',P.cep,' - ',P.municipio) AS endereco
 FROM pontoturistico P WHERE P.idpontoturistico NOT IN (select idpontoturistico FROM pontoturisticoavaliacao GROUP BY idpontoturistico)
 AND (publico_alvo ilike 'amigos' OR municipio NOT ilike 'serra');
