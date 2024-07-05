
  -- crear tabla de entrenamiento     nuevo


  CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training` AS
SELECT
  category,
  stars
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_transformed2`;


------ 1ER MODELO REGRESION --------------------
CREATE OR REPLACE MODEL `proyectofinal-426921.GoogleYelp.BusinessUnificados_Model`
OPTIONS(model_type='linear_reg',
        input_label_cols=['stars']) AS
SELECT
  category,
  stars
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training`;



-- evaluar modelo de regresion
SELECT
  *
FROM
  ML.EVALUATE(MODEL `proyectofinal-426921.GoogleYelp.BusinessUnificados_Model`,
              (SELECT
                 category,
                 stars
               FROM
                 `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training`));



CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Predictions` AS
SELECT
  category,
  stars AS actual_stars,
  predicted_stars
FROM
  ML.PREDICT(MODEL `proyectofinal-426921.GoogleYelp.BusinessUnificados_Model`,
             (SELECT
                category,
                stars
              FROM
                `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training`));



CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Predictions` AS
SELECT
  category,
  stars AS actual_stars,
  predicted_stars
FROM
  ML.PREDICT(MODEL `proyectofinal-426921.GoogleYelp.BusinessUnificados_Model`,
             (SELECT
                category,
                stars
              FROM
                `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training`));


------ 2DO MODELO REGRESION REGULARIZADA --------------------
-- Crear modelo de regresión lineal regularizado
CREATE OR REPLACE MODEL `proyectofinal-426921.GoogleYelp.RegresionLinealRegularizado`
OPTIONS(model_type='linear_reg', input_label_cols=['stars'], l2_reg=0.55) AS
SELECT
  category,
  stars
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training`;


-- Evaluar modelo de regresión lineal regularizado con datos de prueba
SELECT
  *
FROM
  ML.EVALUATE(MODEL `proyectofinal-426921.GoogleYelp.RegresionLinealRegularizado`,
              (SELECT
                 category,
                 stars
               FROM
                 `proyectofinal-426921.GoogleYelp.BusinessUnificados_Test`));

-- Realizar predicciones con el modelo de regresión lineal regularizado
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Predictions_Linear` AS
SELECT
  category,
  stars AS actual_stars,
  predicted_stars
FROM
  ML.PREDICT(MODEL `proyectofinal-426921.GoogleYelp.RegresionLinealRegularizado`,
             (SELECT
                category,
                stars
              FROM
                `proyectofinal-426921.GoogleYelp.BusinessUnificados_Test`));

-- Mostrar predicciones del modelo de regresión lineal regularizado
SELECT * FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados_Predictions_Linear` LIMIT 1000;



------ 3ER MODELO DE RANDOM FOREST --------------------

-- Crear modelo de regresión con Random Forest
CREATE OR REPLACE MODEL `proyectofinal-426921.GoogleYelp.RandomForestRegresion`
OPTIONS(model_type='boosted_tree_regressor', input_label_cols=['stars']) AS
SELECT
  category,
  stars
FROM
  `proyectofinal-426921.GoogleYelp.BusinessUnificados_Training`;


-- Evaluar modelo de regresión con Random Forest con datos de prueba
SELECT
  *
FROM
  ML.EVALUATE(MODEL `proyectofinal-426921.GoogleYelp.RandomForestRegresion`,
              (SELECT
                 category,
                 stars
               FROM
                 `proyectofinal-426921.GoogleYelp.BusinessUnificados_Test`));


-- Realizar predicciones con el modelo de regresión con Random Forest
CREATE OR REPLACE TABLE `proyectofinal-426921.GoogleYelp.BusinessUnificados_Predictions_RandomForest` AS
SELECT
  category,
  stars AS actual_stars,
  predicted_stars
FROM
  ML.PREDICT(MODEL `proyectofinal-426921.GoogleYelp.RandomForestRegresion`,
             (SELECT
                category,
                stars
              FROM
                `proyectofinal-426921.GoogleYelp.BusinessUnificados_Test`));

-- Mostrar predicciones del modelo de regresión con Random Forest
SELECT * FROM `proyectofinal-426921.GoogleYelp.BusinessUnificados_Predictions_RandomForest` LIMIT 1000;
      

