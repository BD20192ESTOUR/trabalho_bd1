Select PT.nome_pontoturistico, E.descricao_evento, E.dt_evento, E.link_evento, PT.publico_alvo, PT.tipo_ambiente 
FROM pontoturistico PT 
LEFT OUTER JOIN evento E on (PT.idpontoturistico = E.idpontoturistico)
where 
(PT.tipo_ambiente ilike '%praia%' or 
PT.tipo_ambiente ilike '%parque%' or 
PT.tipo_ambiente ilike '%farol%') 
AND PT.municipio ilike 'Vitoria';
