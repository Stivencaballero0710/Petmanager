# 4. Base de datos construida en SQL

El esquema contiene 18 tablas y 17 claves foráneas. Se crean primero las tablas padre para que las referencias existan cuando se crean las tablas hijas. Los identificadores propios usan `AUTO_INCREMENT`; los subtipos heredan la PK de su tabla principal.

Se utiliza `DECIMAL` para salarios y montos. `cita.hora` es `TIME`, mientras que la fecha de atención se obtiene de `registro_clinico.fecha_registro`. El inventario conserva `numero_stock` como dato cargado; `cantidad_total` es un atributo derivado que no se almacena en una columna.

La creación nativa se realiza con los scripts de MySQL. La demostración ejecutable del notebook utiliza SQLite en memoria: elimina `USE`, `AUTO_INCREMENT` y `ENGINE=InnoDB`, y cambia `START TRANSACTION` por `BEGIN TRANSACTION`. Los identificadores ya están presentes en los datos y se activan las FK. Las diez consultas conservan sus sentencias SQL.

Esta demostración comprueba los datos y sus relaciones, pero no valida el comportamiento específico de los tipos, la intercalación ni el autoincremento de MySQL.


[Esquema completo](../../SQL/02_Creacion_de_tablas/basededatosVeterinaria.sql) · [Orden de ejecución](../../SQL/README.md) · [Ajustes del esquema](../../SQL/03_Modificaciones/)

[Volver a la sustentación](../README.md) · [Abrir notebook](../PetManager_Proyecto_Final.ipynb)
