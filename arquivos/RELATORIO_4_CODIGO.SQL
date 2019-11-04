/*RELATORIO 4 
Relatório que informe a quantidade de pontos turisticos públicos agrupados por município, incluindo: a quantidade de pontos 
turisticos públicos e nome do município. */

SELECT municipio, count(tipo_pontoTuristico) AS qtd_publico 
FROM pontoTuristico
WHERE tipo_pontoTuristico ILIKE 'publico'
GROUP BY municipio ORDER BY qtd_publico DESC;

/* CODIGO DO GRAFICO DO RELATORIO DO COLLAB */
/*
import matplotlib.pyplot as plt;
plt.rcdefaults()
import numpy as np
import matplotlib.pyplot as plt

df = pd.DataFrame(result)
cm = sns.light_palette("green", as_cmap=True)
df.style.background_gradient(cmap=cm)
 
objects = tuple(df.municipio)
y_pos = np.arange(len(objects))
performance = list(df.qtd_publico)
 
plt.bar(y_pos, performance, align='center', alpha=0.7)

plt.xticks(y_pos, objects, rotation=45)
plt.ylabel('Quantidade')
plt.title('Qtd Pontos Turisticos Públicos')
plt.show()

*/
