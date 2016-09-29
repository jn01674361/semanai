
FOODPORN HISTOGRAM
—————————————

>> IDEA EL PROGRAMA<<

La idea del programa es buscar tweets que incluyen la palabra ”foodporn”, usando la función searchTwitter del paquete twitteR. Cuando ya tenemos los tweets hacemos una visualización a traves de un histograma de las otras palabras que aparezcan con más frecuencia en estos tweets. 
La idea es poder fácilmente generar estos histogramas para sitios diferentes. 

>> METODO<<

BUSCAR TWEETS:

Para encontrar los tweets y reorganizarlos uso más o menos exactamente el código que saqué de https://github.com/Fredin/semanai para los Word Clouds. La diferencia sería que he creado una función para limpiar los tweets de caracteres no utf8, y que en lugar de producir el word cloud, retorno los 20 primeros entradas del data frame. Todo esto lo hago con la función TopTwen que está en el archivo TopTen.R. 


CREAR HISTOGRAMA

Para crear el histograma reorganizo el orden del data frame desde TopTwen para que se queda en un buen formato cuando giro el histograma. Después tengo que asegurarme de que ggplot, el paquete lo cual uso para hacer el plot, no cambia el orden de los elementos. Luego solo queda llamar ggplot y hacer ”print”.


>>COMENTARIOS<<

Saco los tweets con el algoritmo que usa TwitterSearch. Son 1000 tweets. He elegido un punto muy central en cada ciudad y busco tweets dentro de un radius de 10 millas. 

Para que los resultados tengan más sentido, ignoro las palabras: 

"night","todays","food","foodie","dinner","follow","dinner","instafood","delicious","yummy","eat","amazing","today","london","breakfast","lunch","yum","blogger","just","amp","rfoodporn","via","foodies","la","losangeles","melbourne","freefoodies","foodfasm","foodpic","foodpics","instagram","foodgasm"

en los resultados. 

El archivo para correr para generar estas gráficas es HistoPrint.R y además he publicado los gráficos en semanas.pdf. 
