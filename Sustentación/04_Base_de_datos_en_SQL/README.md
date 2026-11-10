# 4. Base de datos construida en SQL

El esquema contiene 18 tablas y 17 claves foráneas. Se crean primero las tablas padre para que las referencias existan cuando se crean las tablas hijas. Los identificadores propios usan `AUTO_INCREMENT`; los subtipos heredan la PK de su tabla principal.

Se utiliza `DECIMAL` para salarios y montos. `cita.hora` es `TIMESTAMP` y almacena fecha y hora. El campo `registro_clinico.observacion` es obligatorio mediante `NOT NULL`. El inventario conserva `numero_stock` como dato cargado; `cantidad_total` es un atributo derivado que no se almacena en una columna.

La base de datos se construye en MySQL mediante `CREATE TABLE`. Las restricciones `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE` y `NOT NULL` definen la identificación, las relaciones y los datos obligatorios de cada tabla.

[Esquema completo](../../SQL/02_Creacion_de_tablas/basededatosVeterinaria.sql) · [Archivos SQL](../../SQL/README.md) · [Características del esquema](../../SQL/03_Modificaciones/)

[Volver al índice de la sustentación](../README.md) · [Siguiente: Carga de datos](../05_Carga_de_datos/)

