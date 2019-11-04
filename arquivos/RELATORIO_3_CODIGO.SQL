/*RELATORIO 3 
Relatório que informe a quantidade de pontos turisticos privados agrupados por município, incluindo: o nome do município e quantidade de pontos turisticos privados */

SELECT municipio, count(tipo_pontoTuristico) AS qtd_privado 
FROM pontoTuristico
WHERE tipo_pontoTuristico ILIKE 'privado'
GROUP BY municipio ORDER BY qtd_privado DESC;

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
performance = list(df.qtd_privado)
 
plt.bar(y_pos, performance, align='center', alpha=0.7)

plt.xticks(y_pos, objects, rotation=45)
plt.ylabel('Quantidade')
plt.title('Qtd Pontos Turisticos Privados')
plt.show()

*/
