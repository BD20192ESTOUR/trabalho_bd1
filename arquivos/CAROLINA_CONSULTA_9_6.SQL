/*Consulta que envolve dados de todas as tabelas - Historico de  visita dos turistas em pontos turisticos*/
select U.nome AS turista, date_part('year',(age(current_date,T.dt_nascimento))) AS idade, P.nome_pontoturistico, PTA.dt_visita,
avg(PTA.nota) AS "media nota", array_to_string(array_agg(distinct O.numero_linha),',') AS "linha onibus", 
array_to_string(array_agg(distinct E.descricao_evento),',') AS "eventos do mes" 
From Usuario U 
Inner join Turista T on (U.idusuario = T.idusuario)
Left Outer JOIN PontoTuristicoAvaliacao PTA on (T.idturista = PTA.idturista) 
INNER JOIN pontoturistico P on (PTA.idpontoturistico = P.idpontoturistico) 
Left Outer Join onibuspontoturistico OPT ON (P.idpontoturistico = OPT.idpontoturistico) 
Inner Join onibus O ON (O.idonibus = OPT.idonibus) 
Left Outer Join Evento E ON (P.idpontoturistico = E.idpontoturistico) 
where date_part('month',E.dt_evento) = date_part('month',PTA.dt_visita) 
Group By U.nome, idade, P.nome_pontoturistico, PTA.dt_visita;
