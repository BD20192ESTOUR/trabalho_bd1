/* alterar o nome do campo comentario para avaliacao na tabela pontoturistico */

ALTER TABLE pontoturisticoavaliacao RENAME comentario TO avaliacao;

Select * from pontoturisticoavaliacao limit 2;
