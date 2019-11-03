/* Selecionar os pontos turisticos e seus eventos do mes de dezembro de 2019, mostrar apenas os eventos com data após o dia 5*/

SELECT PT.nome_pontoTuristico, array_to_string(array_agg(distinct E.descricao_evento),', ') AS eventos 
FROM pontoTuristico PT LEFT OUTER JOIN EVENTO E ON (E.idPontoTuristico = PT.idPontoTuristico) 
WHERE E.dt_evento IN (SELECT dt_evento FROM Evento WHERE extract('month' from dt_evento) = 12 AND extract('year' from dt_evento) = 2019)
AND  extract('day' from E.dt_evento) > 5 
GROUP BY PT.nome_pontoTuristico ORDER BY PT.nome_pontoTuristico;
