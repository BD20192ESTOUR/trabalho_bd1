Select nome_pontoturistico, descricao, publico_alvo, tipo_ambiente from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico)
where pontoturistico.nome_pontoturistico ilike '%Vila Velha%' or pontoturistico.publico_alvo ilike '%Vila Velha%' or pontoturistico.tipo_ambiente ilike '%Vila Velha%' or pontoturistico.bairro ilike '%vila Velha%' or pontoturistico.municipio ilike '%Vila Velha%'
group by nome_pontoturistico, descricao, publico_alvo, tipo_ambiente
order by count(evento.descricao_evento) desc
limit 5