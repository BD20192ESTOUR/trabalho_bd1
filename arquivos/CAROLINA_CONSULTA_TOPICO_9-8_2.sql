/* Selecionar o nome dos pontos turisticos, o nome do evento e o mes do evento para os pontos turisticos que tiveram eventos no ano de 2019 */

SELECT PT.nome_pontoTuristico, E.descricao_evento,
 concat(date_part('month',E.dt_evento)::INTEGER,'/',date_part('year',E.dt_evento)) AS "mes evento"  
FROM PontoTuristico PT 
RIGHT OUTER JOIN Evento E ON (PT.idPontoTuristico = E.idPontoTuristico)
WHERE date_part('year',E.dt_evento) = '2019' 
ORDER BY PT.nome_pontoTuristico OFFSET 4;
