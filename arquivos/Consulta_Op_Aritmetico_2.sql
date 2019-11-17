SELECT (SUM( date_part('year',(age(current_date,dt_nascimento))) ) / count(idturista)) AS "media de idade" 
FROM Turista;
