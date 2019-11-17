select PT.nome_pontoturistico, PT.descricao 
from pontoturistico PT
left outer join evento E on (PT.idpontoturistico = E.idpontoturistico) 
where PT.descricao ilike '%esporte%' or 
PT.descricao ilike '%surf%' or 
PT.descricao ilike '%frescobol%' or 
PT.descricao ilike '%bike%';
