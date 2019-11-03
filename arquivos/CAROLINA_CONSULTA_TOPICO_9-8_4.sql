/* Selecionar os pontos turisticos de vila velha que possuem nota de avaliacao, mostrar a media das notas*/

SELECT PT.nome_pontoTuristico,TRUNC(AVG(PTA.nota),1) AS "media de nota" 
FROM PontoTuristico PT 
RIGHT OUTER JOIN PontoTuristicoAvaliacao PTA ON (PT.idPontoTuristico = PTA.idPontoTuristico) 
WHERE (PTA.nota IS NOT null) AND PT.municipio ILIKE 'vila velha' 
GROUP BY PT.idpontoTuristico ORDER BY PT.nome_pontoTuristico;
