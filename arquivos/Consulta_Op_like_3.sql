select U.nome, PT.nome_pontoturistico, PTA.comentario, PTA.nota, PTA.dt_avaliacao 
FROM usuario U 
inner join turista T on (U.idusuario = T.idusuario) 
inner join pontoturisticoavaliacao PTA on (T.idturista = PTA.idturista) 
inner join pontoturistico PT on (PT.idpontoturistico = PTA.idpontoturistico) 
where U.nome ilike '%Willian Joao Daniel%';
