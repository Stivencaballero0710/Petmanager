# PetManager

**Proyecto final de Bases de Datos I · Grupo G1 · 2026-2**
Universidad Industrial de Santander · Ingeniería de Sistemas

PetManager organiza la información de una veterinaria: sucursales, personal, clientes, mascotas, historial clínico, inventario y facturas. La entrega reúne el trabajo de modelado, la normalización y su implementación en SQL.

## Presentación del proyecto

**[Abrir la sustentación desde GitHub](./Sustentaci%C3%B3n/)**

La presentación se realiza desde este repositorio de GitHub siguiendo los seis puntos en el orden solicitado. Cada apartado enlaza el material correspondiente.

| Requisito | Material |
| --- | --- |
| 1. Análisis de la situación | [Problema, objetivo y alcance](./Sustentaci%C3%B3n/01_Analisis_de_la_situacion/) |
| 2. Modelo entidad-relación | [Diagrama y relaciones](./Sustentaci%C3%B3n/02_Modelo_Entidad_Relacion/) |
| 3. Modelo relacional y normalización | [Claves, dependencias y formas normales](./Sustentaci%C3%B3n/03_Modelo_relacional_y_normalizacion/) |
| 4. Base de datos construida en SQL (esquema) | [Tablas y restricciones](./Sustentaci%C3%B3n/04_Base_de_datos_en_SQL/) |
| 5. Carga de datos (mínimo 5 registros por tabla) | [Registros por tabla](./Sustentaci%C3%B3n/05_Carga_de_datos/) |
| 6. Diez consultas pertinentes al proyecto | [Consultas y resultados](./Sustentaci%C3%B3n/06_Consultas_SQL/) |

## Estructura del repositorio

| Carpeta | Contenido |
| --- | --- |
| [Modelo E-R](./Modelo%20E-R/) | Investigación, documento y diagramas de la primera entrega. |
| [Modelo Relacional](./Modelo%20Relacional/) | Excel del modelo e informe de normalización de la segunda entrega. |
| [SQL](./SQL/) | Creación de la base, tablas, carga de datos y consultas. |
| [Sustentación](./Sustentaci%C3%B3n/) | Recorrido de los seis puntos y distribución sugerida de los 15 minutos. |

## Ejecutar el proyecto

En MySQL Workbench, sigue el [orden de los scripts](./SQL/README.md) para crear el esquema, cargar los registros y ejecutar las consultas.

Para la exposición, abre el [recorrido de la sustentación](./Sustentaci%C3%B3n/) y avanza por los seis apartados directamente desde GitHub.

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
