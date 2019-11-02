CREATE VIEW BUSCA_ESPOORTE AS select pontoturistico.nome_pontoturistico, pontoturistico.descricao from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico)
where pontoturistico.descricao ilike '%esporte%' or pontoturistico.descricao ilike '%surf%' or pontoturistico.descricao ilike '%frescobol%' or pontoturistico.descricao ilike '%bike%' or evento.descricao_evento ilike '%corrida%' or evento.descricao_evento ilike '%campeonato%'

SELECT *FROM BUSCA_ESPOORTE;