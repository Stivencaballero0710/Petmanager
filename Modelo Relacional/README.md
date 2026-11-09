# Modelo Relacional

> **Implementación final:** el [esquema SQL](../SQL/02_Creacion_de_tablas/basededatosVeterinaria.sql) conserva las 18 tablas. Las decisiones de tipos y restricciones se describen en [implementación SQL](../SQL/03_Modificaciones/).

**Segunda entrega · PetManager · Bases de Datos I · Grupo G1 · 2026-2**

[Volver al inicio](../README.md) · [Consultar Modelo E-R](../Modelo%20E-R/)

Esta carpeta contiene el **modelo relacional normalizado** y el **informe de aplicación de los pasos de normalización**.

## Entregables

| Carpeta | Archivo | Contenido |
| --- | --- | --- |
| [Modelo Relacional Normalizado](./Modelo%20Relacional%20Normalizado/) | [ModeloRelacionalNormalizadoPetManager.xlsx](./Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) | Tablas, atributos, tipos de dato, restricciones y modelos de cada etapa de normalización. |
| [Informe de Normalización](./Informe%20de%20Normalizaci%C3%B3n/) | [Informe_Normalizacion_PetManager.pdf](./Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) | Análisis de las dependencias, aplicación de las formas normales y resultado de la descomposición. |

## Proceso de normalización

El análisis parte de las **18 tablas** obtenidas del modelo E-R. La revisión conserva esa estructura desde 1FN hasta 5FN, incluida BCNF. En 6FN se obtienen **54 tablas**, correspondientes a 18 tablas base y 36 proyecciones adicionales.

| Etapa | Criterio | Resultado |
| --- | --- | --- |
| 1FN | Valores atómicos y ausencia de grupos repetidos dentro de una fila. | 18 tablas. |
| 2FN | Dependencia completa de los atributos no primos respecto a cada clave candidata. | 18 tablas. |
| 3FN | Dependencias funcionales y transitivas según las claves declaradas. | 18 tablas. |
| BCNF | Cada determinante de una dependencia funcional no trivial es una superclave. | 18 tablas. |
| 4FN | Dependencias multivaluadas no triviales. | 18 tablas. |
| 5FN | Dependencias de reunión y reconstrucción de las relaciones sin pérdida. | 18 tablas. |
| 6FN | Descomposición en relaciones irreducibles respecto a las dependencias de reunión. | 54 tablas. |

La hoja `Dependencias` reúne las reglas utilizadas para evaluar las formas normales y las condiciones de reconstrucción de las relaciones.

La implementación utiliza las **18 tablas de 5FN**. La versión de **54 tablas** corresponde a la descomposición desarrollada en 6FN.

## Claves y restricciones

| Marca | Significado |
| --- | --- |
| **PK** | Clave primaria. Identifica cada fila y no admite valores nulos. |
| **FK** | Clave foránea. Referencia la clave de otra tabla. |
| **UK** | Restricción de unicidad. |
| **NN** | Campo obligatorio, sin valores nulos. |

En los subtipos se utiliza **PK, FK** para compartir el identificador con la tabla principal. Las relaciones 1:1 se implementan mediante restricciones de unicidad en las claves foráneas correspondientes.

## Documentos relacionados

- [Archivo de Excel del modelo relacional](./Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx).
- [Informe de normalización](./Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf).
