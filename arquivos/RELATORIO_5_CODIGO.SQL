/*RELATORIO 5
Relatório que informe a quantidade de onibus que trafegam próximo aos pontos turisticos, agrupados por bairros, 
incluindo: o nome do bairro, municipio e a quantidade de onibus; */

SELECT PT.bairro,PT.municipio, count(OPT.idonibus) AS qtd_onibus 
FROM PontoTuristico PT INNER JOIN OnibusPontoTuristico OPT ON (OPT.idPontoTuristico = PT.idPontoTuristico)
GROUP BY PT.bairro,PT.municipio  ORDER BY qtd_onibus DESC;

/* CODIGO DO GRAFICO DO RELATORIO DO COLLAB */
/*
import matplotlib.pyplot as plt;
plt.rcdefaults()
import numpy as np
import matplotlib.pyplot as plt

df = pd.DataFrame(result)
cm = sns.light_palette("green", as_cmap=True)
df.style.background_gradient(cmap=cm)
 
objects = tuple(df.bairro)
y_pos = np.arange(len(objects))
performance = list(df.qtd_onibus)
 
plt.bar(y_pos, performance, align='center', alpha=0.7)

plt.xticks(y_pos, objects, rotation=80)
plt.ylabel('Quantidade')
plt.title('Qtd. de Ônibus que Trafegam Próximo ao Bairro')
plt.show()

*/
