SELECT (dt_evento - current_date) AS "Dias Ate o Evento" FROM Evento WHERE 
idpontoturistico = 19 AND descricao_evento ILIKE 'Just Dance Reveillon';
