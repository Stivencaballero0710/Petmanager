# PetManager

**Proyecto final de Bases de Datos I · Grupo G1 · 2026-2**
Universidad Industrial de Santander · Ingeniería de Sistemas

PetManager organiza la información de una veterinaria: sucursales, personal, clientes, mascotas, historial clínico, inventario y facturas. La entrega reúne el trabajo de modelado, la normalización y su implementación en SQL.

## Estructura del repositorio

| Carpeta | Contenido |
| --- | --- |
| [Modelo E-R](./Modelo%20E-R/) | Investigación, documento y diagramas de la primera entrega. |
| [Modelo Relacional](./Modelo%20Relacional/) | Excel del modelo e informe de normalización de la segunda entrega. |
| [SQL](./SQL/) | Creación de la base, tablas, carga de datos y consultas. |

## Alcance de la entrega

Se implementan **18 tablas con 17 claves foráneas**. Hay 30 empleados, 40 registros clínicos y 10 filas en cada una de las otras 16 tablas. Se mantienen las 18 tablas analizadas hasta 5FN bajo los supuestos del informe; la descomposición en 54 tablas de 6FN se conserva como ejercicio de normalización.

La exploración inicial consideró más funcionalidades que las implementadas. El alcance final y sus diferencias respecto a la propuesta inicial se explican en las [decisiones del esquema](./SQL/03_Modificaciones/).

## Ejecutar el proyecto

En MySQL Workbench, sigue el [orden de los scripts](./SQL/README.md) para crear el esquema, cargar los registros y ejecutar las consultas.

## Integrantes

| Nombre completo | Código |
|---|---:|
| Jannyer Stiven Caballero Domínguez | 2250191 |
| Carlos Iván Merlano Vergara | 2250188 |
| Andrés Felipe Rivera Carreño | 2250193 |
| Juan Sebastián Araujo Contreras | 2250142 |
| Juan Pablo Vera Suárez | 2241807 |
