# Base de datos en SQL

[Volver al inicio](../README.md) · [Recorrido de la sustentación](../Sustentaci%C3%B3n/)

La implementación de PetManager contiene **18 tablas, 17 claves foráneas y 230 registros**, acompañados de consultas sobre la información clínica y administrativa. Los scripts están escritos para **MySQL 8.0**, con tablas InnoDB y caracteres UTF-8.

## Orden de ejecución

| Paso | Archivo | Contenido |
| --- | --- | --- |
| 1 | [crear_base_de_datos.sql](./01_Creacion_de_base_de_datos/crear_base_de_datos.sql) | Crea y selecciona `petmanager`. |
| 2 | [basededatosVeterinaria.sql](./02_Creacion_de_tablas/basededatosVeterinaria.sql) | Define tablas, claves y restricciones. |
| 3 | [registros.sql](./04_Insercion_de_datos/registros.sql) | Carga los datos en el orden de sus dependencias. |
| 4 | [consultas.sql](./05_Consultas/consultas.sql) | Ejecuta las consultas de la entrega. |

En **MySQL Workbench**, abre y ejecuta los cuatro archivos en ese orden. La creación de tablas y la carga inicial se ejecutan una sola vez sobre una base vacía. Si ya existe una instalación con datos, usa otra base de práctica y cambia los `USE` de los scripts de manera consistente. No se incluye ningún borrado automático de la base.

Desde una terminal situada en la raíz del repositorio también puedes ejecutar:

```bash
mysql --default-character-set=utf8mb4 -u root -p < SQL/ejecutar_proyecto.sql
```

El archivo anterior utiliza `SOURCE`, una instrucción del cliente de consola. En Workbench utiliza los archivos individuales. Ante un error de carga, detén la ejecución y aplica `ROLLBACK` antes de corregir y repetir sobre tablas vacías. No uses la opción `--force`.

## Apartados complementarios

- [Ajustes del esquema](./03_Modificaciones/): diferencias resueltas respecto a los archivos recibidos y correspondencia con el modelo relacional.
- [Actualizaciones y eliminaciones](./06_Actualizaciones_y_eliminaciones/): ejemplos opcionales con `ROLLBACK`. No forman parte de las consultas.
