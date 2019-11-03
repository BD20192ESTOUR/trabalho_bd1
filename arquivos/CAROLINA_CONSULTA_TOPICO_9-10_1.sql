/* Selecionar o nome dos turistas e idade somente para os que nasceram após 1990 */
SELECT U.nome, date_part('year',(age(current_date,T.dt_nascimento)))::INTEGER AS idade 
FROM Usuario U INNER JOIN Turista T ON (U.idUsuario = T.idUsuario) 
WHERE T.idTurista IN (SELECT idTurista FROM Turista where date_part('year',dt_nascimento) > '1990') 
ORDER BY U.nome ASC;
