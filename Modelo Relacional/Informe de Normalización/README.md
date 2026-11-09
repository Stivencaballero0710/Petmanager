# Informe de aplicación de la normalización

**Documento de la segunda entrega**

[Volver a Modelo Relacional](../README.md) · [Consultar Excel](../Modelo%20Relacional%20Normalizado/) · [Ir al inicio](../../README.md)

El informe presenta el modelo relacional de PetManager, las dependencias utilizadas y la revisión de cada forma normal.

## Documento

[**Informe_Normalizacion_PetManager.pdf**](./Informe_Normalizacion_PetManager.pdf)

## Contenido

| Sección | Descripción |
| --- | --- |
| Proceso de normalización | Revisión desde 1FN hasta 6FN. |
| Modelo relacional de partida | Las 18 tablas, dominios, claves y relaciones del diseño. |
| Dependencias y supuestos | Reglas utilizadas para evaluar las formas normales. |
| Aplicación de las formas normales | 1FN, 2FN, 3FN, BCNF, 4FN, 5FN y 6FN. |
| Descomposición en 6FN | Ejemplo de CLIENTE y las 54 tablas resultantes. |
| Conservación de restricciones y reconstrucción | Claves, datos obligatorios y atributos opcionales. |
| Resumen y conclusiones | Resultados e implicaciones de la descomposición. |
| Referencias | Fuentes utilizadas en el análisis. |

## Resultado

El modelo conserva sus **18 tablas desde 1FN hasta 5FN**, incluida **BCNF**, bajo los supuestos declarados. En **6FN** se obtienen **54 tablas**, formadas por 18 tablas base y 36 proyecciones adicionales de atributos.

El informe describe la conservación de las restricciones UK, la cobertura de las proyecciones obligatorias y el tratamiento de `REGISTRO_CLINICO_OBSERVACION` como proyección opcional.

El libro de Excel contiene la hoja `Dependencias`, las tablas descompuestas en `6FN` y las referencias de `Relaciones_6FN`.
