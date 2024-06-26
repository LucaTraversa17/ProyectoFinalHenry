<h1 align="center"> Proceso de ETL </h1>

![image](https://github.com/LucaTraversa17/ProyectoFinalHenry/assets/88990751/e55e54a2-422f-4f32-8898-78829fa07677)

En este apartado se desarrolla el proceso de ETL de las distintas fuentes de información que utilizamos de insumo para el proyecto. 

## Google y Yelp

Nuestras fuentes de datos iniciales fueron archivos JSON de Google y Yelp, que requirieron un análisis y una limpieza exhaustivos para garantizar la compatibilidad para futuros análisis de datos exploratorios (EDA). Hemos limitado esta información únicamente a la que corresponde al estado de Massachusetts. 

A continuación veremos un paso a paso detallado de cómo se llevó a cabo el proceso de ETL con cada fuente de información. 

### Dataset de Google

El dataset de google estaba dividido en dos carpetas: por un lado una carpeta con los usuarios y las opiniones que postearon, sin ningún tipo de división por Estado. La segunda carpeta, llamada MetaData contenía información en múltiples archivos JSON de todos los Estados de Estados Unidos y dentro contaba con la información correspondiente a distintos tipos de comercios (desde farmacias hasta locales de comida rápida). Lo que hicimos en primer lugar fue quedarnos con los archivos correspondientes a Massachusetts y limitar a la información que correspondía a la categoría restaurantes para realizar el análisis solicitado por nuestro cliente. 

### Dataset de Yelp

El dataset de Yelp estaba conformado por cinco archivos distintos en formato JSON, parquet y pkl. Debido al gran tamaño de algunos de estos archivos, el equipo decidió utilizar el servicio de nube de Google para poder manipularlos y trabajarlos. La información de los archivos consistía en opiniones detalladas de los usuarios sobre los lugares, reseñas más breves e información de los comercios. Hemos hecho un recorte de la información para quedarnos únicamente con la información relevante para el análisis del Dashboard y el sistema de recomendación. 

En esta carpeta encontrarán los modelos de archivos que se utilizaron para los ETL. Cada archivo fue trabajado en un Google Colab para mayor prolijidad y entendimiento de código. 

[Link](ETL/ETLGoogle) al ETL de Google
[Link](ETL/ETLYelp) al ETL de Yelp

A continuación incluimos un modelo de Entidad Relación con las tablas finales que fueron conformadas a partir de la tabla original. También incluimos un diccionario que detalla el significado de cada columna de cada tabla. 
