/* Selecionar o nome dos pontos turisticos e a média da nota de avaliação, mostrar os que também não possuem nota de avaliação*/ 

SELECT PT.nome_pontoTuristico,TRUNC(AVG(PTA.nota),1) AS "media de nota" 
FROM PontoTuristico PT 
LEFT OUTER JOIN PontoTuristicoAvaliacao PTA ON (PT.idPontoTuristico = PTA.idPontoTuristico)
GROUP BY PT.idpontoTuristico ORDER BY PT.nome_pontoTuristico;
