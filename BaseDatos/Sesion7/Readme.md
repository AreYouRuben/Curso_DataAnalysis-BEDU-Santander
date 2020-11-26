## Sesión 7: Configuración de Bases de Datos Locales

En este apartado se encuentran los pasos realizados para completar los retos de la sesión 7.

## Reto 1.

el desarrollo del primer reto se hace escribiendo directamente en SQL. Ver Ejemplo2.sql

- [**`RETO 1`**](Reto1.sql)

## Reto 2.

En este reto, se usan archivos .dat con datos separados por "::". Para poder importarlos dentro de las tablas creadas anteriormente, hay que limpiar esos archivos y cambiarlos a .csv como se muestra en las imágenes.

<img src="imagenes/Reto2MoviesClean.png" width="500">
<img src="imagenes/Reto2RatingsClean.png" width="500">

La importación de los datos se hace desde el wizard de importación de datos en MySQL Workbench.
Una vez hecha la importación, se puede asegurar si la operación fue exitosa haciendo una consulta como se muestra en la siguiente imagen 

<img src="imagenes/Consulta.png" width="500">

## Reto 3.

Ahora hay que aprender a importar datos para hacer una colección en MongoDB.
Para esto se usan las herramientas proporcionadas por MongoDB Compass.

En este caso solo se crea una nueva base de datos sin la necesidad de crear tablas como en MySQL.
Para añadir datos se debe configurar como se muestra a continuación

<img src="imagenes/ImportMongo.png" width="500">

Una vez importados, se observan las colecciones y se asegura que todo esté bien.

<img src="imagenes/documents.png" width="500">