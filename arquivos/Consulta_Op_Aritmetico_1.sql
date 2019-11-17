SELECT PT.nome_pontoturistico AS Ponto_Turistico ,avg(PTA.nota) as Media, stddev(PTA.nota) AS Desvio_Padrao 
FROM pontoturistico PT INNER JOIN 
pontoturisticoavaliacao PTA ON (PT.idpontoturistico = PTA.idpontoturistico) 
GROUP BY PT.nome_pontoturistico 
HAVING (avg(PTA.nota) - stddev(PTA.nota)) > 8 
ORDER BY avg(PTA.nota) desc;
