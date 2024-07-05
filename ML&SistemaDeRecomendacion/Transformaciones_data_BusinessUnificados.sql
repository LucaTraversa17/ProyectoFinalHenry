-- Crear nueva tabla para análisis de CATEGORIAS

CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy` AS
SELECT * FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados`;

DELETE FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`
WHERE city IS NULL
   OR state IS NULL;

-- Trabajar con esta nueva tabla `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`

-- Ver la distribución de city y state.
SELECT
    city,
    state,
    COUNT(*) AS count
  FROM
    `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`
  GROUP BY 1, 2
ORDER BY
  count DESC;

-- Crear otra tabla ya con todas las transformaciones
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_transformed` AS
WITH exploded AS (
  SELECT
    business_id,
    name,
    address,
    city,
    state,
    latitude,
    longitude,
    stars,
    review_count,
    category
  FROM (
    SELECT
      business_id,
      name,
      address,
      city,
      state,
      latitude,
      longitude,
      stars,
      review_count,
      SPLIT(categories, ', ') AS category_array
    FROM
      `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`
  ),
  UNNEST(category_array) AS category
)
SELECT * FROM exploded;

-- Crear la tabla final con solo las columnas stars y category
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_transformed2` AS
WITH exploded AS (
  SELECT
    CAST(stars AS INT64) AS stars, -- Convertir stars a entero
    REPLACE(category, "'", "") AS category -- Eliminar comillas simples de la categoría
  FROM
    `proyectofinal-426921.GoogleYelp.BusinessUnificados_transformed`
)
-- Paso 2: Aplicar filtros a la tabla transformada
SELECT
  stars,
  category
FROM exploded
WHERE stars IS NOT NULL
  AND category IS NOT NULL
  AND stars IN (1, 2, 3, 4, 5);

-- Mostrar la tabla final
SELECT * FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados_transformed2` LIMIT 1000;


----------------- segunda tabla para el modelo de estrellas segun localizacion. 

-- Crear nueva tabla para análisis

CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy` AS
SELECT * FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados`;

DELETE FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`
WHERE city IS NULL
   OR state IS NULL;

-- Trabajar con esta nueva tabla `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`

-- Ver la distribución de city y state.
SELECT
    city,
    state,
    COUNT(*) AS count
  FROM
    `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`
  GROUP BY 1, 2
ORDER BY
  count DESC;

-- Crear otra tabla con las columnas requeridas
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_final` AS
SELECT
  city,
  state,
  latitude,
  longitude,
  CAST(stars AS INT64) AS stars -- Convertir stars a entero
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_copy`
WHERE
  stars IS NOT NULL
  AND stars IN (1, 2, 3, 4, 5);

-- Mostrar la tabla final
SELECT * FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados_final` LIMIT 1000;




