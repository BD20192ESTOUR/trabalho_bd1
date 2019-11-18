SELECT PT.idPontoTuristico, PT.NOME_PONTOTURISTICO, array_to_string(array_agg(distinct O.numero_linha),', ') AS "Linha Onibus" 
FROM PONTOTURISTICO PT 
LEFT OUTER JOIN OnibusPontoTuristico OPT ON (PT.idPontoTuristico = OPT.idPontoTuristico) 
LEFT OUTER JOIN Onibus O ON (OPT.idonibus = O.idonibus) 
WHERE PT.idpontoturistico NOT IN 
(SELECT idpontoturistico FROM PONTOTURISTICOAVALIACAO GROUP BY idpontoTuristico HAVING AVG(NOTA) > 0) 
GROUP BY PT.idPontoTuristico 
ORDER BY PT.idPontoTuristico;
