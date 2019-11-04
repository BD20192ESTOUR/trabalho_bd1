/*RELATORIO 2 
Relatório que informe quais os 5 pontos turisticos que obteveram as menores médias de e avaliação */

SELECT PT.nome_pontoTuristico AS pontoTuristico, TRUNC(AVG(PTA.nota),1) AS media 
FROM pontoTuristico PT INNER JOIN pontoTuristicoAvaliacao PTA ON (PTA.idpontoTuristico = PT.idpontoTuristico) 
GROUP BY PT.idPontoTuristico ORDER BY media ASC LIMIT 5;

/* CODIGO DO GRAFICO DO RELATORIO DO COLLAB */
/*
import matplotlib.pyplot as plt;
plt.rcdefaults()
import numpy as np
import matplotlib.pyplot as plt

df = pd.DataFrame(result)
cm = sns.light_palette("green", as_cmap=True)
df.style.background_gradient(cmap=cm)
 
objects = tuple(df.pontoturistico)
y_pos = np.arange(len(objects))
performance = list(df.media)
 
plt.bar(y_pos, performance, align='center', alpha=0.7)

plt.xticks(y_pos, objects, rotation=45)
plt.ylabel('Média de Avaliação')
plt.title('Pontos Turisticos')
plt.show()

*/
