# Informe de aplicación de la normalización

**Documento de la segunda entrega**

[Volver a Modelo Relacional](../README.md) · [Consultar Excel](../Modelo%20Relacional%20Normalizado/) · [Ir al inicio](../../README.md)

El informe explica los pasos de normalización aplicados al modelo relacional de PetManager. Presenta el punto de partida, las dependencias utilizadas y la revisión de cada forma normal con ejemplos del proyecto.

## Documento

[**Leer Informe_Normalizacion_PetManager.pdf**](./Informe_Normalizacion_PetManager.pdf)

## Contenido del informe

| Sección | Qué desarrolla |
| --- | --- |
| Proceso de normalización | Explica cómo se realizó la revisión desde 1FN hasta 6FN. |
| Modelo relacional de partida | Presenta las 18 tablas, los dominios, las claves y las relaciones del diseño. |
| Dependencias y supuestos | Expone las reglas utilizadas para evaluar las formas normales. |
| Aplicación de las formas normales | Desarrolla 1FN, 2FN, 3FN, BCNF, 4FN, 5FN y 6FN. |
| Descomposición en 6FN | Muestra el ejemplo de CLIENTE y resume las 54 tablas resultantes. |
| Conservación de restricciones y reconstrucción | Explica cómo se mantienen las claves, los datos obligatorios y los atributos opcionales. |
| Resumen, análisis y conclusiones | Reúne los resultados y las implicaciones de la descomposición. |
| Referencias | Incluye las fuentes utilizadas en el análisis. |

## Resultado documentado

El modelo conserva sus **18 tablas desde 1FN hasta 5FN**, incluida **BCNF**, bajo los supuestos declarados. En **6FN** se obtienen **54 tablas**, formadas por 18 tablas base y 36 proyecciones adicionales de atributos.

El informe también explica la conservación de las restricciones UK, la cobertura de las proyecciones obligatorias y el tratamiento de `REGISTRO_CLINICO_OBSERVACION` como proyección opcional.

## Consulta junto con el modelo

Para seguir los ejemplos, abre el [Excel del modelo relacional](../Modelo%20Relacional%20Normalizado/ModeloRelacionalNormalizadoPetManager.xlsx). La hoja `Dependencias` contiene las reglas de análisis, `6FN` presenta las tablas descompuestas y `Relaciones_6FN` reúne sus referencias.
