<h1 align="center">Helumaro</h1>

<h2 align="center"> Consultoría Gastronómica de Alto Lujo </h1>

<div align="center">
    <img src="https://github.com/LucaTraversa17/ProyectoFinalHenry/assets/88990751/05a158fe-3be2-47c8-b792-9768185ce583" alt="ETL Process">
</div>
   
## Indice
1. [Proyecto](#proyecto)
   1. [Alcance](#alcance)
   2. [Desarrollo](#desarrollo)
        1. [ETL de los datasets](#etl-de-los-datasets)
        2. [EDA de la información](#eda-de-la-información)
        3. [Conexión a la nube](#conexión-a-la-nube)
        4. [Implementación del dashboard](#implementación-del-dashboard)
3. [Diagrama de Gant](#diagrama-de-gant)
4. [KPIs](#kpis)
5. [Tecnologías utilizadas](#tecnologías-utilizadas)
   1. [Pipeline](#pipeline)
6. [¿Quiénes somos?](#quiénes-somos)

## Proyecto

Hemos sido contratados por un conglomerado gastronómico que se especializa en restaurantes de alto lujo para clientes con alto poder adquisitivo. Nos han solicitado una investigación del mercado estadounidense para determinar la mejor ubicación para abrir una serie de establecimientos nuevos. 

### Alcance
De acuerdo a nuestra investigación, que puede observarse en el siguiente link, del mercado de los estados de Estados Unidos, hemos concluido que el estado con más oportunidades para el desarrollo de un emprendimiento gastronómico es el estado de Massachusetts. Luego de nuestro análisis observamos que se trata de un estado con alto poder adquisitivo y con poca oferta gastronómica de lujo. 
![image](https://github.com/LucaTraversa17/ProyectoFinalHenry/assets/88990751/a3f4d590-bd0a-4586-8af9-71cf2410e8d6)



### Desarrollo
A continuación presentamos los distintos paso que llevamos a cabo en el proyecto. 
#### ETL de los datasets
El proyecto se nutrió de tres fuentes distintas de información. La primeras dos consistieron en un análisis del mercado de gastronomía de alto lujo por estado y su respectiva composición socioeconómica. Para ello se utilizó la información del gobierno de los Estados Unidos y de la base de datos de la guía Michelin. Finalmente, la tercera fuente de datos proviene de las plataformas de Google Maps y Yelp en donde observamos el comportamiento de los consumidores del estado de Massachusetts. 

Para mayor información al respecto, consultar el siguiente [link](ETL). 

#### EDA de la información
El EDA de la información se orientó en extraer información valiosa para la construcción del sistema de recomendación y el cumplimiento de los KPIs propuestos. 

El mismo se llevó a cabo con Python y sus respectivas librerías y puede ser consultado en el siguiente [link](AnalisisExploratorioMercado). 

#### Conexión a la nube
Debido a la gran cantidad de información que debimos utilizar, tuvimos que almacenar los datos en la nube de Google. Hemos seleccionado a esta empresa por las facilidades que otorga a la hora de conectar los datos así como la estabilidad de las conexiones.

En el siguiente [link](ETL/ETLAutomatizado) encontrarán una carpeta con videos que muestran el proceso de automatización y carga incremental en la nube. 

#### Implementación del dashboard
Se ha desarrollado un dashboard en PowerBI donde se pueden consultar los KPIs pero también diferentes métricas que permiten observar la distribución de las distintas variables. Entendemos que un análisis exhaustivo de la información es vital para la correcta toma de decisiones de negocio.

El dashboard está disponible en el siguiente [link](Dashboard). 

#### Desarrollo del sistema de recomendación y de Machine Learning
Se implementó un análisis de sentimiento a través de un modelo de procesamiento de lenguaje natural de las reseñas. Este modelo se utiliza para estudiar las reseñas y cómo impactarán en el desarrollo del negocio. Finalmente implementamos un modelo de regresión lineal y otro de random forest para predecir la viabilidad y rentabilidad de un negocio por categoría, ciudades y estrellas. 

Toda la información puede consultarse en el siguiente [link](ML&SistemaDeRecomendacion)


## Diagrama de Gant

![image](https://github.com/LucaTraversa17/ProyectoFinalHenry/assets/88990751/acc2cdaf-c9e8-42c7-8025-b6c24d2c5325)



## KPIs 
1. Tasa de crecimiento de reseñas:
  - Descripción: Incremento porcentual en el número de reseñas por año.
  - Propósito: Medir el nivel de interacción y popularidad a lo largo del tiempo.
  - Objetivo: incremento de 10% de reseñas anualmente.
2. Sentimiento promedio de reseñas:
  - Descripción: Sentimiento promedio de las reseñas utilizando análisis de sentimientos (positivo, negativo, neutral).
  - Propósito: Evaluar la percepción general de los clientes sobre los servicios.
  - Objetivo: Mejora del 5% de reseñas positivas semestralmente.  
3. Incremento de los ingresos:
  - Descripción: crecimiento de los ingresos netos por aumento de ventas o por mejora de márgenes de ganancia.
  - Propósito: medir el crecimiento del negocio.
  - Objetivo: crecimiento del 3% semestral. 

## Tecnologías utilizadas

| [Python](https://www.python.org/) | [Matplotlib](https://matplotlib.org/) | [Canva](https://www.canva.com/) | [Pandas](https://pandas.pydata.org/) | [Seaborn](https://seaborn.pydata.org/) | [Scikit-Learn](https://scikit-learn.org/stable/) |
| --- | --- | --- | --- | --- | --- |
| <img src="https://www.python.org/static/community_logos/python-logo.png" alt="Python" width="100"/> | <img src="https://github.com/LucaTraversa17/ProyectoFinalHenry/blob/main/img/logos/matplotlib.png" alt="Matplotlib" width="100"/> | <img src="https://static.canva.com/web/images/12487a1e0770d29351bd4ce4f87ec8fe.svg" alt="Canva" width="100"/> | <img src="https://pandas.pydata.org/static/img/pandas_mark.svg" alt="Pandas" width="100"/> | <img src="https://seaborn.pydata.org/_images/logo-wide-lightbg.svg" alt="Seaborn" width="100"/> | <img src="https://scikit-learn.org/stable/_static/scikit-learn-logo-small.png" alt="Scikit-Learn" width="100"/> |

| [Google Storage](https://cloud.google.com/storage) | [Power BI](https://powerbi.microsoft.com/) | [Streamlit](https://streamlit.io/) | [Google Colab](https://colab.google/) | [AirFlow](https://airflow.apache.org/) | [BigQuery](https://cloud.google.com/bigquery) |
| --- | --- | --- | --- | --- | --- |
| <img src="https://cloud.google.com/images/social-icon-google-cloud-1200-630.png" alt="Google Storage" width="100"/> | <img src="https://powerbi.microsoft.com/pictures/shared/social/social-default-image.png" alt="Power BI" width="100"/> | <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Streamlit-logo-primary-colormark-darktext.png/1024px-Streamlit-logo-primary-colormark-darktext.png" alt="Streamlit" width="100"/> | <img src="https://colab.research.google.com/img/colab_favicon_256px.png" alt="Colab" width="100"/> | <img src="https://github.com/LucaTraversa17/ProyectoFinalHenry/blob/main/img/logos/airflow.png" alt="AirFlow" width="100"/> | <img src="https://github.com/LucaTraversa17/ProyectoFinalHenry/blob/main/img/logos/bigquery.png" alt="BigQuery" width="100"/> |

### Pipeline
![image](https://github.com/LucaTraversa17/ProyectoFinalHenry/assets/88990751/2bdd2fbc-dd51-4e64-ad21-80125a97ff48)


## ¿Quiénes somos?
1. Machine Learning Specialist: Edgar Arriaga y Ezequiel Quintana
2. Data Engineer: Rodrigo Lopez
3. Data Scientist: Luca Traversa 
4. Data Analist: Mateo Bernal
