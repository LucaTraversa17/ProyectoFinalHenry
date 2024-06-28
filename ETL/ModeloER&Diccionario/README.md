# Modelo de Entidad-Relación & Diccionario de Valores

Este documento describe el modelo de entidad-relación (ER) para las tablas `reviews_unificados`,  `businessunificados` y `usuarios_unificados`.

## Entidades y Atributos

### BusinessUnificados
- **business_id** (PK): str, clave del negocio, combinación entre latitud y longitud en formato str.
- name: str, nombre del comercio
- address: str, dirección del comercio
- latitude: str, latitud
- longitude: str, longitud
- stars: float, estrellas promedio de las reseñas
- review_count: int, cantidad de reseñas 
- categories: str, categorias a la que pertenece el comercio (Korean restaurant, Italian, etc)
- platform: str, plataforma en la que se encuentra (Google o Yelp)

### Review_Unificados
- **review_id** (PK): str, clave única que identifica a la review. 
- user_id (FK): str, clave del usuario
- business_id (FK): str, clave del negocio, combinación entre latitud y longitud en formato str.
- text: str, texto de la reseña
- platform_x: str, en que plataforma se encuentra la reseña
- rating: float, que puntaje le asignó a la reseña. Solo válido para comentarios en Google, los comentarios en Yelp serán siempre NaN porque no incluían rating.

### Usuarios_Unificados
- **user_id** (PK): str, clave del usuario
- cantidad_reviews: int, reviews totales del usuario
- promedio_calificacion: float, promedio del puntaje que asignó el usuario en sus calificaciones. 
- platform: str, en que plataforma se encuentra el usuario

## Relación

- Un `Business` tiene muchas `Reviews`.
- Una `Review` está asociada a un solo `Business`.
- Un `Usuario` tiene muchas `Reviews`.

## Diagrama ER Simplificado

![image](https://github.com/LucaTraversa17/ProyectoFinalHenry/assets/88990751/b83ecd4c-0f71-41e4-a0a3-63c1e6fb199f)




En este diagrama:
- `business_id` en `Business` es la clave primaria (PK).
- `business_id` en `Review` es una clave foránea (FK) que hace referencia a `business_id` en `Business`.

Este modelo muestra claramente que cada negocio (`Business`) puede tener muchas reseñas (`Review`), pero cada reseña está asociada a un solo negocio.

