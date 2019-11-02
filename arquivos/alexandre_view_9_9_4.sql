CREATE VIEW AVALIA_POSITIVA_CONSISTENTE AS select nome_pontoturistico as "Ponto Turistico" ,avg(pontoturisticoavaliacao.nota) as "Media", stddev(pontoturisticoavaliacao.nota) as "Desvio Padrao" from pontoturistico inner join pontoturisticoavaliacao on (pontoturistico.idpontoturistico = pontoturisticoavaliacao.idpontoturistico)
group by nome_pontoturistico
having avg(pontoturisticoavaliacao.nota) - stddev(pontoturisticoavaliacao.nota) > 8
order by avg(pontoturisticoavaliacao.nota) desc;

SELECT *FROM AVALIA_POSITIVA_CONSISTENTE;