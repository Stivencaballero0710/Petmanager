# 4. Base de datos construida en SQL

El esquema contiene 18 tablas y 17 claves foráneas. Se crean primero las tablas padre para que las referencias existan cuando se crean las tablas hijas. Los identificadores propios usan `AUTO_INCREMENT`; los subtipos heredan la PK de su tabla principal.

Se utiliza `DECIMAL` para salarios y montos. `cita.hora` es `TIME`, mientras que la fecha de atención se obtiene de `registro_clinico.fecha_registro`. El inventario conserva `numero_stock` como dato cargado; `cantidad_total` es un atributo derivado que no se almacena en una columna.

La base de datos se implementa con los scripts de **MySQL 8.0** disponibles en el repositorio. El esquema se puede revisar desde GitHub y ejecutar en MySQL Workbench siguiendo la guía SQL.

[Esquema completo](../../SQL/02_Creacion_de_tablas/basededatosVeterinaria.sql) · [Orden de ejecución](../../SQL/README.md) · [Ajustes del esquema](../../SQL/03_Modificaciones/)

[Volver al índice de la sustentación](../README.md) · [Siguiente: Carga de datos](../05_Carga_de_datos/)
