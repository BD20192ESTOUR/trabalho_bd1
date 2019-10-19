#Select de todas as tabelas com os dados prontos:


select * from onibus
select * from historicovisita
select * from pontoturisticoavaliacao
select * from pontoturistico
select * from evento
select * from usuario
select * from onibuspontoturistico
select * from turista


#Selects com operações aritméticas:


#Seleciona os pontos turisticos que recebem avaliações consistentemente positivas(>8)

select nome_pontoturistico as "Ponto Turistico" ,avg(pontoturisticoavaliacao.nota) as "Media", stddev(pontoturisticoavaliacao.nota) as "Desvio Padrao" from pontoturistico inner join pontoturisticoavaliacao on (pontoturistico.idpontoturistico = pontoturisticoavaliacao.idpontoturistico)
group by nome_pontoturistico
having avg(pontoturisticoavaliacao.nota) - stddev(pontoturisticoavaliacao.nota) > 8
order by avg(pontoturisticoavaliacao.nota) desc

#seleciona os pontos turisticos mais visitados ou avaliados por usuários do sexo feminino nas ultimas duas semanas

Select pontoturistico.nome_pontoturistico as "Ponto Turistico", count(historicovisita.idturista) + count(pontoturisticoavaliacao.idturista) as "Popularidade" from pontoturistico inner join historicovisita on (pontoturistico.idpontoturistico = historicovisita.idpontoturistico) inner join pontoturisticoavaliacao on (pontoturistico.idpontoturistico = pontoturisticoavaliacao.idpontoturistico) inner join turista on(historicovisita.idturista = turista.idturista)
where turista.sexo ilike '%feminino%' and (historicovisita.dt_visita < now() - '2 weeks'::interval or pontoturisticoavaliacao.dt_avaliacao < now() - '2 weeks'::interval)
group by nome_pontoturistico
order by count(historicovisita.idturista) + count(pontoturisticoavaliacao.idturista) desc

#seleciona os 5 pontos turisticos mais populares ou com mais eventos que podem ser visitados a partir do terminal de Vila Velha, São Torquato ou Jardim América

select nome_pontoturistico, count (historicovisita.idturista) + count(evento.descricao_evento) as "Atividade" from pontoturistico inner join historicovisita on(pontoturistico.idpontoturistico = historicovisita.idpontoturistico) inner join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico) inner join onibuspontoturistico on (pontoturistico.idpontoturistico = onibuspontoturistico.idpontoturistico) inner join onibus on (onibuspontoturistico.idonibus = onibus.idonibus)
where onibus.nome_linha ilike '%T.Vila Velha%' or onibus.nome_linha ilike '%T.so Torquato%' or onibus.nome_linha ilike '%Jardim America%'
group by nome_pontoturistico
order by count (historicovisita.idturista) + count(evento.descricao_evento) desc
limit 5


#Operações com like e ilike:


#Exemplo de busca que ocorre quando o usuário pesquisa por "Vila Velha" na página principal

Select nome_pontoturistico, descricao, publico_alvo, tipo_ambiente from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico)
where pontoturistico.nome_pontoturistico ilike '%Vila Velha%' or pontoturistico.publico_alvo ilike '%Vila Velha%' or pontoturistico.tipo_ambiente ilike '%Vila Velha%' or pontoturistico.bairro ilike '%vila Velha%' or pontoturistico.municipio ilike '%Vila Velha%'
group by nome_pontoturistico, descricao, publico_alvo, tipo_ambiente
order by count(evento.descricao_evento) desc
limit 5

#Busca por pontos turísticos naturais de Vitória, e mostra eventos que ocorrem nesses locais (Se esses existirem)

Select nome_pontoturistico, evento.descricao_evento,evento.dt_evento, evento.link_evento, publico_alvo, tipo_ambiente from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico)
where pontoturistico.tipo_ambiente ilike '%praia%' or pontoturistico.tipo_ambiente ilike '%parque%' or pontoturistico.tipo_ambiente ilike '%farol%' and pontoturistico.municipio ilike '%Vitoria%'
limit 5

#Busca avaliacões feitas por nome da pessoa

select usuario.nome, pontoturistico.nome_pontoturistico, pontoturisticoavaliacao.comentario, pontoturisticoavaliacao.nota, pontoturisticoavaliacao.dt_avaliacao from usuario inner join turista on (usuario.idusuario = turista.idusuario) inner join pontoturisticoavaliacao on (turista.idturista = pontoturisticoavaliacao.idturista) inner join pontoturistico on (pontoturistico.idpontoturistico = pontoturisticoavaliacao.idpontoturistico)
where usuario.nome ilike '%Willian Joao Daniel%'

#busca locais pra praticar esportes

select pontoturistico.nome_pontoturistico, pontoturistico.descricao from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico)
where pontoturistico.descricao ilike '%esporte%' or pontoturistico.descricao ilike '%surf%' or pontoturistico.descricao ilike '%frescobol%' or pontoturistico.descricao ilike '%bike%' or evento.descricao_evento ilike '%corrida%' or evento.descricao_evento ilike '%campeonato%'

#Mostra quantidade de pontos turísticos e eventos para cada cidade na Grande Vitória, assim como sua média de notas.

select municipio as "Municipio", count(nome_pontoturistico) as "Quantidade de Pontos Turisticos", count(evento.descricao_evento) as "Quantidade de Eventos", avg(pontoturisticoavaliacao.nota) as "Media das Avaliacoes de Usuario"  from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico) left outer join pontoturisticoavaliacao on (pontoturistico.idpontoturistico = pontoturisticoavaliacao.idpontoturistico) where nome_pontoturistico in(
select nome_pontoturistico from pontoturistico where municipio like 'Vila Velha' or municipio like 'Cariacica' or municipio like 'Guarapari' or municipio like 'Serra' or municipio like 'Vitoria' or municipio like 'Viana' or municipio like 'Fundão')
group by municipio
order by count(nome_pontoturistico) desc


#Alterações e exclusões de dados:


#ANTES

update evento
set idpontoturistico = 4
where descricao_evento ilike '%corrida maluca%'

#DEPOIS

update evento
set idpontoturistico = 15
where descricao_evento ilike '%corrida maluca%'

#ANTES
update usuario
set senha = 12345
where nome ilike '%Willian Joao Daniel%'

#DEPOIS
update usuario
set senha = 54321
where nome ilike '%Willian Joao Daniel%'

#ANTES
insert into onibus
values (22,813, 'SERRA DOURADA 3','Transcol')

#DEPOIS
delete from onibus where idonibus = 22

#ANTES
update evento
set link_evento = 'http://www.soues.com.br/plus/modulos/agenda/ver.php?categoria=1&id=100984'
where descricao_evento ilike '%Eletromusic%'

#DEPOIS
update evento
set link_evento = 'http://www.grupoantimofo.com.br/fluente/'
where descricao_evento ilike '%Eletromusic%'

#ANTES
result = pd.read_sql_query(
"""
update turista
set dt_nascimento = '1995-08-22'
where idturista = 1;
""",conn)

#DEPOIS
result = pd.read_sql_query(
"""
update turista
set dt_nascimento = '2001-08-26'
where idturista= 1;
""",conn)

#ANTES
update usuario
set email = 'assismachado@gmail.com'
where email ilike '%machado%'

#DEPOIS
update usuario
set email = 'machado@gmail.com'
where email ilike '%assis%'
