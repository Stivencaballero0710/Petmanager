# PetManager

**Proyecto final de Bases de Datos I · Grupo G1 · 2026-2**
Universidad Industrial de Santander · Ingeniería de Sistemas

PetManager organiza la información de una veterinaria: sucursales, personal, clientes, mascotas, historial clínico, inventario y facturas. La entrega reúne el trabajo de modelado, la normalización y su implementación en SQL.

## Presentación del proyecto

**[Abrir el notebook de la entrega final](./Sustentaci%C3%B3n/PetManager_Proyecto_Final.ipynb)**

El notebook sigue los seis puntos de la presentación: análisis de la situación, modelo E-R, modelo relacional y normalización, esquema SQL, carga de datos y diez consultas. Incluye resultados guardados para leerlos desde GitHub y una demostración reproducible en Python.

| Requisito | Material |
| --- | --- |
| 1. Análisis de la situación | [Problema, objetivo y alcance](./Sustentaci%C3%B3n/01_Analisis_de_la_situacion/) |
| 2. Modelo entidad-relación | [Diagrama y relaciones](./Sustentaci%C3%B3n/02_Modelo_Entidad_Relacion/) |
| 3. Modelo relacional y normalización | [Claves, dependencias y formas normales](./Sustentaci%C3%B3n/03_Modelo_relacional_y_normalizacion/) |
| 4. Base de datos en SQL | [Esquema de 18 tablas](./SQL/02_Creacion_de_tablas/basededatosVeterinaria.sql) |
| 5. Al menos cinco registros por tabla | [Carga de 230 registros y conteos](./SQL/04_Insercion_de_datos/) |
| 6. Diez consultas pertinentes | [Consultas y resultados esperados](./SQL/05_Consultas/) |

## Estructura del repositorio

| Carpeta | Contenido |
| --- | --- |
| [Modelo E-R](./Modelo%20E-R/) | Investigación, documento y diagramas de la primera entrega. |
| [Modelo Relacional](./Modelo%20Relacional/) | Excel del modelo e informe de normalización de la segunda entrega. |
| [SQL](./SQL/) | Creación de base y tablas, carga, consultas y comprobación. |
| [Sustentación](./Sustentaci%C3%B3n/) | Notebook, recorrido de los seis puntos y distribución sugerida de los 15 minutos. |

## Ejecutar el proyecto

En MySQL Workbench, sigue el [orden de los scripts](./SQL/README.md). Para ejecutar la demostración del notebook, descarga el repositorio completo, abre `Sustentación/PetManager_Proyecto_Final.ipynb` en Jupyter o VS Code con un kernel de Python 3 y ejecuta las celdas en orden.

La demostración del notebook utiliza SQLite en memoria, sin servidor ni paquetes adicionales de base de datos. Los scripts de entrega son de MySQL 8.0. La adaptación y sus límites se explican en el notebook y en la guía SQL.

## Alcance de la entrega

Se implementan **18 tablas con 17 claves foráneas**. Hay 30 empleados, 40 registros clínicos y 10 filas en cada una de las otras 16 tablas. Se mantienen las 18 tablas analizadas hasta 5FN bajo los supuestos del informe; la descomposición en 54 tablas de 6FN se conserva como ejercicio de normalización.

La exploración inicial consideró más funcionalidades que las implementadas. El alcance final está descrito en la [sustentación](./Sustentaci%C3%B3n/01_Analisis_de_la_situacion/) y en las [decisiones del esquema](./SQL/03_Modificaciones/).

## Integrantes

| Nombre completo | Código |
|---|---:|
| Jannyer Stiven Caballero Domínguez | 2250191 |
| Carlos Iván Merlano Vergara | 2250188 |
| Andrés Felipe Rivera Carreño | 2250193 |
| Juan Sebastián Araujo Contreras | 2250142 |
| Juan Pablo Vera Suárez | 2241807 |
