SELECT USUARIO.NOME, MAX(PONTOTURISTICOAVALIACAO.NOTA) FROM USUARIO  INNER JOIN PONTOTURISTICO ON USUARIO.IDUSUARIO = PONTOTURISTICO.IDUSUARIO INNER JOIN PONTOTURISTICOAVALIACAO ON PONTOTURISTICO.IDPONTOTURISTICO = PONTOTURISTICOAVALIACAO.IDPONTOTURISTICO GROUP BY NOME;