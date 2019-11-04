/*RELATORIO 1 
Relatório que informe quais são os 5 pontos turisticos cujo a média de avaliação são as mais altas, incluindo: nome do ponto 
turistico, a média das notas recebidas. */

SELECT PT.nome_pontoTuristico AS pontoTuristico, TRUNC(AVG(PTA.nota),1) AS media 
FROM pontoTuristico PT INNER JOIN pontoTuristicoAvaliacao PTA ON (PTA.idpontoTuristico = PT.idpontoTuristico) 
GROUP BY PT.idPontoTuristico ORDER BY media DESC LIMIT 5;

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
