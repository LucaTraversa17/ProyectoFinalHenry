-- Crear tabla de datos con división aleatoria en entrenamiento y prueba
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Split2` AS
SELECT
  *,
  CASE
    WHEN RAND() < 0.8 THEN 'train'
    ELSE 'test'
  END AS dataset
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_final`;

-- Crear tabla de entrenamiento
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training2` AS
SELECT
  city,
  state,
  latitude,
  longitude,
  stars
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_Split2`
WHERE dataset = 'train';

-- Crear tabla de prueba
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Test2` AS
SELECT
  city,
  state,
  latitude,
  longitude,
  stars
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_Split2`
WHERE dataset = 'test';
