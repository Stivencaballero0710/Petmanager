# Modelo Relacional

**Segunda entrega · PetManager · Bases de Datos I · Grupo G1 · 2026-2**

[Volver al inicio](../README.md) · [Consultar Modelo E-R](../Modelo%20E-R/)

Esta carpeta contiene los dos elementos de la segunda entrega: el **modelo relacional normalizado** y el **informe de aplicación de los pasos de normalización**.

## Entregables

| Carpeta | Archivo | Contenido |
| --- | --- | --- |
| [Modelo Relacional Normalizado](./Modelo%20Relacional%20Normalizado/) | [ModeloRelacionalNormalizadoPetManager.xlsx](./Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) | Tablas, atributos, tipos de dato, restricciones y modelos de cada etapa de normalización. |
| [Informe de Normalización](./Informe%20de%20Normalizaci%C3%B3n/) | [Informe_Normalizacion_PetManager.pdf](./Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) | Explicación del análisis realizado, ejemplos de aplicación y resultado de la descomposición. |

## Proceso de normalización

El análisis parte de las **18 tablas** obtenidas del modelo E-R. La revisión conserva esa estructura desde 1FN hasta 5FN, incluida BCNF. En 6FN se separan los atributos y se obtienen **54 tablas**, correspondientes a 18 tablas base y 36 proyecciones adicionales.

| Etapa | Qué se revisa | Resultado documentado |
| --- | --- | --- |
| 1FN | Valores atómicos y ausencia de grupos repetidos dentro de una fila. | Se conservan 18 tablas. |
| 2FN | Dependencia completa de los atributos no primos respecto a cada clave candidata. | Se conservan 18 tablas. |
| 3FN | Dependencias funcionales y transitivas según las claves declaradas. | Se conservan 18 tablas. |
| BCNF | Que cada determinante de una dependencia funcional no trivial sea una superclave. | Se conservan 18 tablas. |
| 4FN | Dependencias multivaluadas no triviales. | Se conservan 18 tablas bajo los supuestos del análisis. |
| 5FN | Dependencias de reunión y reconstrucción de las relaciones sin pérdida. | Se conservan 18 tablas bajo los supuestos del análisis. |
| 6FN | Descomposición en relaciones irreducibles respecto a las dependencias de reunión. | Se obtienen 54 tablas y se documentan sus enlaces. |

La evaluación usa las reglas de la hoja `Dependencias`. El informe explica esos supuestos y las condiciones necesarias para conservar los datos obligatorios, las claves y la reconstrucción de las relaciones.

Como propuesta de implementación, el informe recomienda conservar las **18 tablas de 5FN**, porque requieren menos uniones para recuperar los datos de cada entidad. La versión de **54 tablas** documenta el desarrollo del ejercicio hasta 6FN.

## Claves y restricciones

| Marca | Significado |
| --- | --- |
| **PK** | Clave primaria. Identifica cada fila y no admite valores nulos. |
| **FK** | Clave foránea. Referencia la clave de otra tabla. |
| **UK** | Restricción de unicidad. |
| **NN** | Campo obligatorio, sin valores nulos. |

Una columna puede combinar varias marcas. Por ejemplo, en los subtipos se utiliza **PK, FK** para compartir el identificador con su tabla principal. Las relaciones 1:1 declaradas usan restricciones de unicidad en las FK correspondientes.

## Cómo revisar la segunda entrega.

1. Descarga el [Excel](./Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx) desde el botón de descarga de GitHub y ábrelo en Excel o LibreOffice Calc.
2. Comienza por la hoja `modelo` para consultar el punto de partida.
3. Lee `Dependencias` para conocer las claves y reglas utilizadas.
4. Sigue las hojas de 1FN a 6FN junto con el [informe en PDF](./Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf).
5. Consulta `Relaciones_6FN` para ubicar las FK y las relaciones de la descomposición.

La [guía del Excel](./Modelo%20Relacional%20Normalizado/README.md) explica el contenido de cada hoja. La [guía del informe](./Informe%20de%20Normalizaci%C3%B3n/README.md) resume las secciones del documento.
