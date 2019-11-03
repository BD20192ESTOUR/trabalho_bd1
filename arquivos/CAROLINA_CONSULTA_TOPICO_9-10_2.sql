/* Selecionar turistas que visitaram 2 ou mais pontos turisticos */

SELECT U.nome, array_to_string(array_agg(distinct PT.nome_pontoTuristico),', ') AS "Ponto Turistico" 
FROM Usuario U RIGHT OUTER JOIN Turista T ON (U.idUsuario = T.idUsuario) 
LEFT OUTER JOIN PontoTuristicoAvaliacao PTA ON (PTA.idTurista = T.idTurista) 
RIGHT OUTER JOIN PontoTuristico PT ON (PT.idPontoTuristico = PTA.idPontoTuristico) 
WHERE T.idTurista IN 
 (SELECT idTurista FROM PontoTuristicoAvaliacao GROUP BY idTurista HAVING count(distinct idpontoTuristico) >= 2) 
GROUP BY U.nome;
