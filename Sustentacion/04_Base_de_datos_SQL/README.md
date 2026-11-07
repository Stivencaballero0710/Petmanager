# 4. Base de datos construida en SQL (esquema)

**Responsable:** Andrés Felipe Rivera Carreño · **Duración:** 2:30 min

[Índice de la sustentación](../README.md) · [Siguiente: Carga de datos →](../05_Carga_de_datos/README.md)

> **ESTADO: pendiente de incorporar el script SQL real.** El repositorio disponible al organizar esta sustentación contiene el modelo E-R y la normalización, pero no el archivo de creación de tablas. Esta guía no sustituye el entregable.

## Qué exige el punto 4

Presentar la **base de datos construida en SQL**, mostrando el esquema implementado: tablas, tipos de datos, claves primarias, foráneas y restricciones pertinentes.

## Referencia para construirlo

El [modelo relacional normalizado](../../Modelo%20Relacional/Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) documenta 18 tablas para el diseño recomendado hasta 5FN. El [informe de normalización](../../Modelo%20Relacional/Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) explica por qué se prefiere esa versión a la descomposición de 54 tablas en 6FN.

## Archivo que debe añadirse

**Ruta sugerida:** Sustentacion/04_Base_de_datos_SQL/01_esquema.sql

El archivo, elaborado y verificado por el equipo, debe incluir:

1. Creación de la base de datos y selección del esquema.
2. Sentencias CREATE TABLE que correspondan a las tablas implementadas.
3. Declaración de PK, FK, UK, NOT NULL y tipos SQL según el diseño.
4. Orden de creación compatible con las referencias entre tablas.
5. Validación de que el script se ejecute sin errores en MySQL.

No se agregaron sentencias CREATE TABLE supuestas porque no estaba disponible el SQL real del grupo.

## Para la exposición

Mostrar primero el esquema y luego una tabla de ejemplo para explicar sus campos, PK, FK y restricciones. Cerrar relacionando la implementación con el diseño que acaba de presentar Stiven.

**Verificación pendiente:** el archivo SQL y una ejecución exitosa aún deben incorporarse antes de la sustentación.

[**5. Ir a la carga de datos →**](../05_Carga_de_datos/README.md)
