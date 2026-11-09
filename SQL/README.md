# Base de datos en SQL

[Volver al inicio](../README.md) · [Notebook de la presentación](../Sustentaci%C3%B3n/PetManager_Proyecto_Final.ipynb)

La implementación de PetManager contiene **18 tablas, 17 claves foráneas, 230 registros y 10 consultas**. Los scripts están escritos para **MySQL 8.0**, con tablas InnoDB y caracteres UTF-8.

## Orden de ejecución

| Paso | Archivo | Contenido |
| --- | --- | --- |
| 1 | [crear_base_de_datos.sql](./01_Creacion_de_base_de_datos/crear_base_de_datos.sql) | Crea y selecciona `petmanager`. |
| 2 | [basededatosVeterinaria.sql](./02_Creacion_de_tablas/basededatosVeterinaria.sql) | Define tablas, claves y restricciones. |
| 3 | [registros.sql](./04_Insercion_de_datos/registros.sql) | Carga los datos en el orden de sus dependencias. |
| 4 | [verificar_carga.sql](./04_Insercion_de_datos/verificar_carga.sql) | Cuenta los registros de cada tabla. |
| 5 | [consultas.sql](./05_Consultas/consultas.sql) | Ejecuta las diez consultas de la entrega. |

En **MySQL Workbench**, abre y ejecuta los cinco archivos en ese orden. La creación de tablas y la carga inicial se ejecutan una sola vez sobre una base vacía. Si ya existe una instalación con datos, usa otra base de práctica y cambia los `USE` de los scripts de manera consistente. No se incluye ningún borrado automático de la base.

Desde una terminal situada en la raíz del repositorio también puedes ejecutar:

```bash
mysql --default-character-set=utf8mb4 -u root -p < SQL/ejecutar_proyecto.sql
```

El archivo anterior utiliza `SOURCE`, una instrucción del cliente de consola. En Workbench utiliza los archivos individuales. Ante un error de carga, detén la ejecución y aplica `ROLLBACK` antes de corregir y repetir sobre tablas vacías. No uses la opción `--force`.

## Comprobación local

```bash
python SQL/validar_proyecto.py
```

Esta comprobación usa **SQLite en memoria** y la biblioteca estándar de Python 3. Adapta únicamente las instrucciones propias de MySQL para ejecutar el esquema y los mismos datos y consultas. Revisa las 18 tablas, las 17 FK, los 230 registros, las tres restricciones de unicidad, la observación opcional y los resultados esperados de las diez consultas.

La prueba local no sustituye la ejecución nativa en MySQL: SQLite no aplica igual los dominios `VARCHAR`, `DECIMAL` y `TIME`, la intercalación ni el autoincremento. El notebook identifica el motor de sus resultados.

## Apartados complementarios

- [Ajustes del esquema](./03_Modificaciones/): diferencias resueltas respecto a los archivos recibidos y correspondencia con el modelo relacional.
- [Actualizaciones y eliminaciones](./06_Actualizaciones_y_eliminaciones/): ejemplos opcionales con `ROLLBACK`. No forman parte de las diez consultas.
