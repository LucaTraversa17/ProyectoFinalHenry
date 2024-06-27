# Modelo de Entidad-Relación & Diccionario de Valores

Este documento describe el modelo de entidad-relación (ER) para las tablas `reviews_unificados` y `businessunificados`.

## Entidades y Atributos

### Business
- **business_id** (PK): clave del negocio, combinación entre latitud y longitud en formato str.
- address: dirección del comercio
- latitude: latitud
- longitude: longitud
- stars: estrellas promedio de las reseñas
- review_count: cantidad de reseñas 
- categories: categorias a la que pertenece el comercio (Korean restaurant, Italian, etc)
- platform: plataforma en la que se encuentra (Google o Yelp)

### Review
- user_id: clave del usuario
- business_id (FK): clave del negocio, combinación entre latitud y longitud en formato str.
- text: texto de la reseña
- platform_x: en que plataforma se encuentra la reseña
- rating: que puntaje le asignó a la reseña. Solo válido para comentarios en Google, los comentarios en Yelp serán siempre NaN porque no incluían rating. 

## Relación

- Un `Business` tiene muchas `Review`.
- Una `Review` está asociada a un solo `Business`.

## Diagrama ER Simplificado

+-------------+ +--------------+
| Business | 1 N| Review |
+-------------+<------>+-------------+
| business_id | | business_id |
| address | | user_id |
| latitude | | text |
| longitude | | platform_x |
| stars | | rating |
| review_count| +--------------+
| categories |
| platform |
+-------------+


En este diagrama:
- `business_id` en `Business` es la clave primaria (PK).
- `business_id` en `Review` es una clave foránea (FK) que hace referencia a `business_id` en `Business`.

Este modelo muestra claramente que cada negocio (`Business`) puede tener muchas reseñas (`Review`), pero cada reseña está asociada a un solo negocio.

