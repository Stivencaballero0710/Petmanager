# Modelo relacional normalizado

**Archivo de Excel de la segunda entrega**

[Volver a Modelo Relacional](../README.md) · [Leer informe](../Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf) · [Ir al inicio](../../README.md)

El archivo reúne el modelo relacional de PetManager y el desarrollo de las etapas de normalización. Las tablas muestran los atributos, tipos de dato y marcas **PK, FK, UK y NN**.

## Archivo

[**ModeloRelacionalNormalizadoPetManager.xlsx**](./ModeloRelacionalNormalizadoPetManager.xlsx)

## Hojas del libro

| Hoja | Contenido |
| --- | --- |
| `modelo` | Modelo relacional de partida con sus 18 tablas, atributos, tipos y restricciones. |
| `1FN` | Revisión de los valores atómicos y los grupos repetidos. |
| `2FN` | Revisión de las dependencias completas respecto a las claves candidatas. |
| `3FN` | Revisión de las dependencias funcionales y transitivas. |
| `BCNF` | Revisión de los determinantes y las superclaves. |
| `4FN` | Análisis de las dependencias multivaluadas. |
| `5FN` | Análisis de las dependencias de reunión. |
| `6FN` | Descomposición en 54 tablas de dos atributos. |
| `Dependencias` | Reglas del modelo, claves candidatas, dependencias funcionales y condiciones de la descomposición. |
| `Relaciones_6FN` | Referencias del esquema final y enlaces de las nuevas proyecciones de atributos. |

## Resultado del proceso

| Etapas | Tablas | Organización |
| --- | --- | --- |
| Modelo de partida y 1FN a 5FN, incluida BCNF | 18 | Se mantiene la estructura. |
| 6FN | 54 | Se conservan 18 tablas base y se añaden 36 proyecciones de atributos. |

Los 36 enlaces adicionales relacionan cada proyección con su tabla base mediante el identificador compartido. La hoja `Relaciones_6FN` reúne esos enlaces y las 17 referencias del modelo original.

## Claves y atributos

- **Atributo:** nombre del dato registrado.
- **Tipo:** dominio declarado, como `int`, `string`, `float`, `date` o `time`.
- **Restricciones:** combinación de PK, FK, UK y NN que corresponde al atributo.

En 6FN, las proyecciones obligatorias deben cubrir los identificadores de su tabla base. `REGISTRO_CLINICO_OBSERVACION` tiene participación opcional **0:1**: la ausencia de fila representa un registro sin observación.

Estas condiciones se desarrollan en la hoja `Dependencias` y en el [informe de normalización](../Informe%20de%20Normalizaci%C3%B3n/Informe_Normalizacion_PetManager.pdf).
