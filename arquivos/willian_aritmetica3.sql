select nome_pontoturistico, count (historicovisita.idturista) + count(evento.descricao_evento) as "Atividade" from pontoturistico inner join historicovisita on(pontoturistico.idpontoturistico = historicovisita.idpontoturistico) inner join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico) inner join onibuspontoturistico on (pontoturistico.idpontoturistico = onibuspontoturistico.idpontoturistico) inner join onibus on (onibuspontoturistico.idonibus = onibus.idonibus)
where onibus.nome_linha ilike '%T.Vila Velha%' or onibus.nome_linha ilike '%T.sao Torquato%' or onibus.nome_linha ilike '%Jardim America%'
group by nome_pontoturistico
order by count (historicovisita.idturista) + count(evento.descricao_evento) desc
limit 5