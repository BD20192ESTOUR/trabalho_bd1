select descricao_evento From Evento E 
Inner Join PontoTuristico PT ON (E.idpontoturistico = PT.idpontoturistico)
Where PT.municipio ilike 'vitoria';
