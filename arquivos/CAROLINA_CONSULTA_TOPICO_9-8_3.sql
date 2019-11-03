/* Selecionar os nomes dos pontos turisticos de vitoria que possuem linha de onibus trafegam proximo ao ponto turistico, mostrar o numero das linhas*/

SELECT PT.nome_pontoTuristico, 
array_to_string(array_agg(distinct O.numero_linha),', ') AS "linha onibus" 
FROM PontoTuristico PT 
RIGHT OUTER JOIN OnibusPontoTuristico OPT ON (PT.idPontoTuristico = OPT.idPontoTuristico) 
LEFT OUTER JOIN Onibus O ON (OPT.idOnibus = O.idOnibus) 
WHERE PT.municipio ILIKE 'vitoria'
GROUP BY PT.idPontoTuristico;
